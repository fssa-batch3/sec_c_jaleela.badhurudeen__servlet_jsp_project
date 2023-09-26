package com.fssa.specsee;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.specsee.exceptions.DAOException;
import com.fssa.specsee.exceptions.ServiceException;
import com.fssa.specsee.logger.Logger;
import com.fssa.specsee.modelobjects.User;
import com.fssa.specsee.servicelayer.UserService;
import com.fssa.specsee.daolayer.UserDAO;



/**
 * Servlet implementation class SignupServlet
 */
@WebServlet("/SignUpServlet")
public class SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String password = request.getParameter("password");	
		String conformpassword = request.getParameter("conformpassword");
        UserService userservice = new UserService();

        if (!password.equals(conformpassword)) {
            Logger.info("Password and confirm password don't match");
            RequestDispatcher rd = request.getRequestDispatcher("pages/order/sign_up.jsp");
            rd.forward(request, response);
        } else {
        	UserDAO userdao = new UserDAO();
            try {
				if (userdao.emailExists(email)) {
				    response.setContentType("text/html");
				    PrintWriter out = response.getWriter();
				    out.println("<script>alert('Email already exists. Please use a different email.');</script>");
				    RequestDispatcher rd = request.getRequestDispatcher("pages/order/sign_up.jsp");
				    rd.include(request, response);
				} else {
				    // Email doesn't exist, proceed with registration
				    User user = new User();
				    user.setUserName(username);
				    user.setEmailId(email);
				    user.setPassword(password);

		try {
		boolean added=userservice.userSignUp(user);
	
		if(added) {
			request.setAttribute("success", "Successfully Signed Up");
			RequestDispatcher dis = request.getServletContext().getRequestDispatcher("pages/order/login.jsp");
			dis.forward(request, response);
			System.out.println("added");
			//response.sendRedirect("pages/order/login.jsp");
			
			
		}
		else {
			System.out.println("not added");
		}
	
		} catch (ServiceException e) {
			System.out.println(e.getMessage());
			e.printStackTrace();

			request.setAttribute("error", e.getMessage());
			RequestDispatcher dis = request.getServletContext().getRequestDispatcher("pages/order/sign_up.jsp");
			dis.forward(request, response);

			
			//response.sendRedirect("pages/order/sign_up.jsp");
		}
		
	}
	}
            catch (DAOException | IOException | ServletException e) {
        		
				e.printStackTrace();
				request.setAttribute("error", e.getMessage());
				RequestDispatcher dis = request.getServletContext().getRequestDispatcher("pages/order/sign_up.jsp");
				dis.forward(request, response);
				
			}
        }
    }}

