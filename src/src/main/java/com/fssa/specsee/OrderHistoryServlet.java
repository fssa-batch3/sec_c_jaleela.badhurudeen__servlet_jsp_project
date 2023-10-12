package com.fssa.specsee;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.specsee.daolayer.UserDAO;
import com.fssa.specsee.exceptions.CustomException;
import com.fssa.specsee.exceptions.DAOException;
import com.fssa.specsee.modelobjects.Order;
import com.fssa.specsee.modelobjects.User;
import com.fssa.specsee.servicelayer.OrderService;

/**
 * Servlet implementation class OrderHistoryServlet
 */
@WebServlet("/OrderHistoryServlet")
public class OrderHistoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderHistoryServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		OrderService orderService = new OrderService();
		HttpSession session = request.getSession(false);
		User user = (User) session.getAttribute("user");
		int userId;
		try {
			userId = UserDAO.getUserIdByEmail(user.getEmailId());
			ArrayList<Order> orderDetails=orderService.getOrderById(userId);
			request.setAttribute("orderDetails", orderDetails);
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("/pages/order/order_history.jsp");
			requestDispatcher.forward(request, response);
		} catch (DAOException | CustomException | SQLException e) {
			System.out.println("Getting order details failed");
			e.printStackTrace();
		}
		
	}

}