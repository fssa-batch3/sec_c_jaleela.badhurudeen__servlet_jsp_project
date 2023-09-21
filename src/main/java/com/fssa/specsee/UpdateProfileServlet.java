package com.fssa.specsee;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.specsee.exceptions.ServiceException;
import com.fssa.specsee.logger.Logger;
import com.fssa.specsee.modelobjects.User;
import com.fssa.specsee.servicelayer.UserService;

/**
 * Servlet implementation class UpdateProfileServlet
 */
@WebServlet("/UpdateProfileServlet")
public class UpdateProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateProfileServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
    	System.out.println("dtyr");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phoneNumber = request.getParameter("phonenumber");
		String address = request.getParameter("address");
		System.out.println(phoneNumber+"dtyr");
		UserService service = new UserService();
		User user = new User();
		user.setUserName(name);
		user.setPhoneNumber(phoneNumber);
		user.setEmailId(email);
		user.setUserAddress(address);
		
		Logger.info(user.toString());

		try {
			service.updateUserProfile(user);
			request.setAttribute("userDetails", user);
			RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
			rd.forward(request, response);
//			response.sendRedirect(request.getContextPath() + "/profilepage.jsp");

		} catch (ServiceException e) {
			e.printStackTrace();
		}
	}
}