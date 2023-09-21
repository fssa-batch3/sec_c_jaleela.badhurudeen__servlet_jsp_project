package com.fssa.specsee;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.specsee.exceptions.InvalidInputException;
import com.fssa.specsee.exceptions.ServiceException;
import com.fssa.specsee.modelobjects.User;
import com.fssa.specsee.servicelayer.UserService;



/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
		super();
	}


	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		UserService userService = new UserService();
		User user  = new User(); 
		try {
			user =  userService.login(email);
			String pwd = user.getPassword(); 
			if(!password.equals(pwd)) {
				throw new InvalidInputException("Incorrect Password");
			}
			response.sendRedirect(request.getContextPath() + "/index.jsp");
			
//			Below the code for create the new session
			HttpSession httpSession = request.getSession();
			httpSession.setAttribute("loggedInEmail", email);
			 user = userService.getUserByEmail(email);
			 httpSession.setAttribute("user", user);
				
		} catch (ServiceException | InvalidInputException e) {
			String errorMessage = e.getMessage();
			request.setAttribute("errorMessage", errorMessage);
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	}

}