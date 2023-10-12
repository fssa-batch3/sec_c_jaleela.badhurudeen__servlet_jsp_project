package com.fssa.specsee;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class CheckLoginWhenShop
 */
@WebServlet("/CheckLoginWhenShop")
public class CheckLoginWhenShop extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	int id = Integer.parseInt(request.getParameter("id"));
        // Check if the user is logged in by inspecting a session attribute
        HttpSession session = request.getSession(false); // Don't create a new session if one doesn't exist
     boolean data=  session.getAttribute("loggedInEmail") != null ;
        if (data) {
            // User is logged in, redirect to the "shop_now" page
            response.sendRedirect(request.getContextPath() + "/shop_now.jsp?id=" + id);
        } else {
            // User is not logged in, redirect to the login page
            response.sendRedirect(request.getContextPath() + "/pages/order/login.jsp");
        }
    }
}