package com.fssa.specsee;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class PlaceOrderServlet
 */
@WebServlet("/PlaceOrderServlet")
public class PlaceOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PlaceOrderServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the user input data from the request parameters
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String country = request.getParameter("country");
        String address = request.getParameter("address");
        String phone = request.getParameter("phone");
        String pincode = request.getParameter("pincode");
        String paymentOption = request.getParameter("payment");

    
        // Create an Order object or data structure to hold the order details
     

        // You can store the order in a database or another data storage mechanism here
        // Example: orderService.saveOrder(order);

        // Redirect to a confirmation page or do any necessary post-order processing
        response.sendRedirect(request.getContextPath() + "/orderConfirmation.jsp");
    }
}
