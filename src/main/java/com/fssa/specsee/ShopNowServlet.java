package com.fssa.specsee;

import java.io.IOException;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.specsee.daolayer.UserDAO;
import com.fssa.specsee.enums.OrderStatus;
import com.fssa.specsee.exceptions.CustomException;
import com.fssa.specsee.exceptions.DAOException;
import com.fssa.specsee.logger.Logger;
import com.fssa.specsee.modelobjects.Order;
import com.fssa.specsee.modelobjects.OrderProduct;
import com.fssa.specsee.modelobjects.Product;
import com.fssa.specsee.modelobjects.User;
import com.fssa.specsee.servicelayer.OrderService;
import com.fssa.specsee.servicelayer.ProductService;

/**
 * Servlet implementation class ShopNowServlet
 */
@WebServlet("/ShopNowServlet")
public class ShopNowServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShopNowServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    ProductService productService = new ProductService();
	OrderService orderService = new OrderService();



	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int productId = Integer.parseInt(request.getParameter("id"));
		String address= request.getParameter("address");
		String phoneNumber= request.getParameter("phone");
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		Order order = new Order();
		OrderProduct orderProduct = new OrderProduct();
		try {
			Product product = ProductService.getProductById(productId);
			List<OrderProduct> productsList = new ArrayList<>();
			int userId = UserDAO.getUserIdByEmail(user.getEmailId());
			orderProduct.setProductId(productId);
			orderProduct.setProductPrice(product.getProductPrice());
			orderProduct.setQuantity(1);
			orderProduct.setTotalAmount(product.getProductPrice());
			productsList.add(orderProduct);
			order.setTotalAmount(product.getProductPrice());
			order.setProductsList(productsList);
			order.setOrderDate(LocalDate.now());
			order.setUserID(userId);
			order.setAddress(address);
			order.setPhoneNumber(phoneNumber);
			order.setStatus(OrderStatus.ORDERED);
			Logger.info(order);
			orderService.addOrder(order);
			Logger.info("Order Placed Sucessfully ");
			
		} catch (DAOException | SQLException | CustomException e) {
			Logger.info("Order Failed"+e.getMessage());
			e.printStackTrace();
		}
		RequestDispatcher rd = request.getRequestDispatcher("./orderConfirmation.jsp");
		rd.forward(request, response);

	}

}