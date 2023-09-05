package com.fssa.specsee;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.specsee.daolayer.ProductDAO;
import com.fssa.specsee.exceptions.DAOException;
import com.fssa.specsee.modelobjects.Product;

/**
 * Servlet implementation class AddProductServlet
 */
@WebServlet("/UpdateProductServlet")
public class UpdateProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * protected void doPost(HttpServletRequest request, HttpServletResponse
	 * response) throws ServletException, IOException {
	 * 
	 * int productId = Integer.parseInt(request.getParameter("id")); String
	 * productName = request.getParameter("name"); String productImg =
	 * request.getParameter("image"); Double productPrice =
	 * Double.parseDouble(request.getParameter("price")); ProductCategory
	 * productCategory = ProductCategory.valueOf(request.getParameter("category"));
	 * String description = request.getParameter("description"); String image1 =
	 * request.getParameter("image1"); String image2 =
	 * request.getParameter("image2"); String image3 =
	 * request.getParameter("image3"); String image4 =
	 * request.getParameter("image4"); List<String> sideImages = new ArrayList<>();
	 * sideImages.add(image1); sideImages.add(image2); sideImages.add(image3);
	 * sideImages.add(image4);
	 * 
	 * // below the code for crate the instance Product product = new Product();
	 * product.setProductId(productId); product.setProductName(productName);
	 * product.setProductMainImageUrl(productImg);
	 * product.setProductPrice(productPrice);
	 * product.setProductCatagory(productCategory);
	 * product.setProductDescription(description);
	 * product.setProductSideImageURLs(sideImages);
	 * 
	 * // Below the code for call the service
	 * 
	 * ProductService productService = new ProductService();
	 * 
	 * try { ProductService.updateProduct(product, productId);
	 * response.sendRedirect(request.getContextPath() + "/ProductServlet"); }
	 * 
	 * catch (InvalidProductException|DAOException e) { e.printStackTrace();
	 * 
	 * } }
	 * 
	 * 
	 */

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Get product data from query parameters
		int productId = Integer.parseInt(request.getParameter("id"));
		Product product;
		try {
			product = ProductDAO.getProductById(productId);
			request.setAttribute("productId", productId);
			request.setAttribute("productName", product.getProductName());
			request.setAttribute("productImage", product.getProductMainImageUrl());
			request.setAttribute("productPrice", product.getProductPrice());
			request.setAttribute("productCategory", product.getProductCatagory());
			request.setAttribute("productDescription", product.getProductDescription());
			List<String> arr = product.getProductSideImageURLs();
			int count = 1;
			for (String e : arr) {

				request.setAttribute("image" + count + 1, e);
			}
		} catch (DAOException | SQLException e) {
			e.printStackTrace();
		}

		// Set product data as attributes in the request

		// Forward to the update form JSP page
		RequestDispatcher dispatcher = request.getRequestDispatcher("/product.jsp");
		dispatcher.forward(request, response);
	}
}
