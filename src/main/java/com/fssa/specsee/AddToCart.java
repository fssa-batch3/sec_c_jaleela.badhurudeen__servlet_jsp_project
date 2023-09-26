package com.fssa.specsee;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.specsee.modelobjects.Product;
import com.fssa.specsee.servicelayer.ProductService;

/**
 * Servlet implementation class AddToCart
 */
@WebServlet("/AddToCart")
public class AddToCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddToCart() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {


	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Product product = new Product();
		int productId =Integer.parseInt(request.getParameter("productId"));
		
		String productname = request.getParameter("productname");
		String quantity = request.getParameter("quantity");
		String price = request.getParameter("price");

		
		ProductService plantservice = new ProductService();

		product.setProductName(product.getProductName());
		product.setProductMainImageUrl(product.getProductMainImageUrl());
		product.setProductPrice(product.getProductPrice());
		
	}

}