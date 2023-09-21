package com.fssa.specsee;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.specsee.enums.ProductCategory;
import com.fssa.specsee.exceptions.ServiceException;
import com.fssa.specsee.modelobjects.Product;
import com.fssa.specsee.servicelayer.ProductService;





/**
 * Servlet implementation class ProductServlet
 */
@WebServlet("/ProductServletUser")
public class ProductServletUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ProductServletUser() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String categoryName = request.getParameter("type");
		ProductService productService = new ProductService();
		PrintWriter out = response.getWriter();
		try {
		
			if (categoryName != null && !categoryName.isEmpty()) {
				List<Product> productList;

				productList = ProductService.findAllProductByCategory(ProductCategory.valueOf(categoryName));
				
	//			productList = ProductService.getAllProducts();


				request.setAttribute("Productlist", productList);
				RequestDispatcher rd = request.getRequestDispatcher("/computer.jsp");
				rd.forward(request, response);
			}
		}

		catch (ServiceException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
