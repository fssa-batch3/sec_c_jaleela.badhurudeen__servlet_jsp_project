package com.fssa.specsee;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.specsee.exceptions.ServiceException;
import com.fssa.specsee.modelobjects.User;
import com.fssa.specsee.servicelayer.UserService;



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
				User user=new User();
				
				user.setUserName(username);
				user.setEmailId(email);
				user.setPassword(password);
				
		UserService userservice=new UserService();
		
		
		try {
		boolean added=userservice.userSignUp(user);
	
		if(added) {
			System.out.println("added");
			response.sendRedirect("pages/order/login.jsp");
			
			
		}
		else {
			System.out.println("not added");
		}
	
		} catch (ServiceException e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
			
			response.sendRedirect("pages/order/sign_up.jsp");
		}
		
	}
	}

