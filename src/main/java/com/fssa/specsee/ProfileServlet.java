package com.fssa.specsee;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.specsee.exceptions.ServiceException;
import com.fssa.specsee.logger.Logger;
import com.fssa.specsee.modelobjects.User;
import com.fssa.specsee.servicelayer.UserService;

/**
 * Servlet implementation class ProfileServlet
 */
@WebServlet("/ProfileServlet")
public class ProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProfileServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		HttpSession httpSession = request.getSession();
		String emailId = (String) httpSession.getAttribute("loggedInEmail"); 

		try {
			User userDetails = new UserService().login(emailId);
			request.getSession().setAttribute("userDetails", userDetails);
			RequestDispatcher rd = request.getRequestDispatcher("/profile.jsp");
			rd.forward(request, response);
		} catch (ServiceException e) {
			Logger.info(e.getMessage());
		}

	}

}