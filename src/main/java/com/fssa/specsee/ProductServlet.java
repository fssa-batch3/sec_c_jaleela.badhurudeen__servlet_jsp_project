package com.fssa.specsee;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.specsee.enums.ProductCategory;
import com.fssa.specsee.exceptions.DAOException;
import com.fssa.specsee.exceptions.InvalidProductException;
import com.fssa.specsee.exceptions.ServiceException;
import com.fssa.specsee.modelobjects.Product;
import com.fssa.specsee.servicelayer.ProductService;

/**
 * Servlet implementation class ProductServlet
 */
@WebServlet("/ProductServlet")
public class ProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ProductServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String categoryName = request.getParameter("productCategory");
		ProductService productService = new ProductService();
		PrintWriter out = response.getWriter();
		try {
			List<Product> productList;

			if (categoryName != null && !categoryName.isEmpty()) {
				productList = (List<Product>) ProductService
						.findAllProductByCategory(ProductCategory.valueOf(categoryName));
			} else {
				productList = (List<Product>) ProductService.getAllProducts();
			}
			request.setAttribute("Productlist", productList);
		} catch (DAOException | SQLException | InvalidProductException | ServiceException e) {
			e.printStackTrace();
		}

		RequestDispatcher rd = request.getRequestDispatcher("/product.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
