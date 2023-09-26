package com.fssa.specsee;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.specsee.enums.ProductCategory;
import com.fssa.specsee.exceptions.InvalidProductException;
import com.fssa.specsee.modelobjects.Product;
import com.fssa.specsee.servicelayer.ProductService;



/**
 * Servlet implementation class AddProductServlet
 */
@WebServlet("/AddProductServlet")
public class AddProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String productName = request.getParameter("name");
		String productImg = request.getParameter("image");
		Double productPrice = Double.parseDouble(request.getParameter("price"));
		ProductCategory productCategory = ProductCategory.valueOf(request.getParameter("category"));
		String description = request.getParameter("description");
		String image1 = request.getParameter("image1");
		String image2 = request.getParameter("image2");
		String image3 = request.getParameter("image3");
		String image4 = request.getParameter("image4");
		List<String> sideImages = new ArrayList<>();
		sideImages.add(image1);
		sideImages.add(image2);
		sideImages.add(image3);
		sideImages.add(image4);

		// below the code for crate the instance
		Product product = new Product();
		product.setProductName(productName);
		product.setProductMainImageUrl(productImg);
		product.setProductPrice(productPrice);
		product.setProductCatagory(productCategory);
		product.setProductDescription(description);
		product.setProductSideImageURLs(sideImages);

		// Below the code for call the service

		ProductService productService = new ProductService();

		try {
			ProductService.addProduct(product);
			request.setAttribute("success", "Successfully Added The Product");
			RequestDispatcher dis = request.getServletContext().getRequestDispatcher("/ProductServlet");
			dis.forward(request, response);
			
//			response.sendRedirect(request.getContextPath() + "/ProductServlet");
		}

		catch (InvalidProductException e) {
			e.printStackTrace();
			
			request.setAttribute("error", e.getMessage());
			RequestDispatcher dis = request.getServletContext().getRequestDispatcher("/ProductServlet");
			dis.forward(request, response);

		}
	}

}
