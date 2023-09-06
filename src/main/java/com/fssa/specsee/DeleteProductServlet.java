package com.fssa.specsee;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.specsee.exceptions.DAOException;
import com.fssa.specsee.servicelayer.ProductService;

/**
 * Servlet implementation class DeleteProductServlet
 */
@WebServlet("/DeleteProductServlet")
public class DeleteProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DeleteProductServlet() {
		super();

	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());

		int productId = Integer.parseInt(request.getParameter("id"));

		try {

			ProductService.deleteProduct(productId);
			response.getWriter().append("Success");
			response.sendRedirect(request.getContextPath() + "/ProductServlet");
		} catch (DAOException e) {
			e.printStackTrace();
		}
	}

}
