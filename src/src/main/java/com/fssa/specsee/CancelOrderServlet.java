package com.fssa.specsee;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.specsee.exceptions.CustomException;
import com.fssa.specsee.exceptions.DAOException;
import com.fssa.specsee.servicelayer.OrderService;

/**
 * Servlet implementation class CancelOrderServlet
 */
@WebServlet("/CancelOrderServlet")
public class CancelOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CancelOrderServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String orderIdStr = request.getParameter("orderId");

        if (orderIdStr != null && !orderIdStr.isEmpty()) {
        	
            try {
            	
                int orderId = Integer.parseInt(orderIdStr);
                OrderService orderService = new OrderService();
                orderService.cancelOrder(orderId);
                System.out.println("Deleted order Successfully");
                response.sendRedirect("./index.jsp"); 
            } catch ( DAOException | SQLException | CustomException e) {
                System.out.println("Delete order failed");
                response.sendRedirect("./orderhistory.jsp"); 
                e.printStackTrace();
            }
        } else {
            System.out.println("Invalid order ID");
            response.sendRedirect("./orderhistory.jsp"); 
        }
    }
}