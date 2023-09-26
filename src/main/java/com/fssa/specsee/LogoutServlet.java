package com.fssa.specsee;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.specsee.logger.Logger;
@WebServlet("/LogoutServlet")
public class LogoutServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
protected void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
	HttpSession session = request.getSession(false);

	if (session != null) {
		session.removeAttribute("LoggedInEmail");

		// invalidate removes all the session attributes
		session.invalidate();

	} else {
		Logger.info("No Session Exists");
	}

	// Redirecting to login page since we have logged out
	response.sendRedirect("index.jsp");
}

protected void doGet(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
	doPost(request, response);
}

}