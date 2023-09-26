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
    	
		String name = request.getParameter("nameProfile");
		String email = request.getParameter("emailProfile");
		String phoneNumber = request.getParameter("phonenumberProfile");
		String address = request.getParameter("addressProfile");
		
		

		try {
			
			UserService service = new UserService();
			
			User user = new User();
			user.setUserName(name);
			user.setPhoneNumber(phoneNumber);
			user.setEmailId(email);
			user.setUserAddress(address);
			
			
			System.out.println(user.getEmailId()+"iiii");
			Logger.info(user.toString());
			service.updateUserProfile(user);
			
			System.out.print(user.getEmailId());
			request.setAttribute("userDetails", user);
			request.setAttribute("success", "Successfully Updated your profile");
			RequestDispatcher dis = request.getServletContext().getRequestDispatcher("/index.jsp");
			dis.forward(request, response);
			
//			response.sendRedirect(request.getContextPath() + "/profilepage.jsp");

		} catch (ServiceException e) {
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
			RequestDispatcher dis = request.getServletContext().getRequestDispatcher("/profileEdit.jsp");
			dis.forward(request, response);
		}
	}
}