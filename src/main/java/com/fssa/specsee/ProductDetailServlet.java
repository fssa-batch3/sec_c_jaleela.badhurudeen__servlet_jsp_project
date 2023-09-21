package com.fssa.specsee;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.specsee.exceptions.DAOException;
import com.fssa.specsee.modelobjects.Product;
import com.fssa.specsee.servicelayer.ProductService;



/**
 * Servlet implementation class ProductDetailServlet
 */
@WebServlet("/ProductDetailServlet")
public class ProductDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int id=Integer.parseInt(request.getParameter("id"));
		ProductService productservice=new ProductService();
		
		try {
			Product product=productservice.getProductById(id);
			request.setAttribute("product", product);
			
			
			List<String> sideimage=productservice.getProductSideImageUrls(id);
			request.setAttribute("image", sideimage);
		} catch (SQLException | DAOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		request.getServletContext().getRequestDispatcher("/productDetail.jsp").forward(request, response);
		
	}

	

}
