package com.users;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/LoginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String userName = request.getParameter("username");
		String passWord = request.getParameter("password");
		RequestDispatcher dispatcher = null;
		
		User user = new User();
		user.setUserName(userName);
		user.setPassword(passWord);
		
		UserLoginResult userResult = UserDBUtil.validate(user);
		
		if(userResult != null) {
			HttpSession session = request.getSession();
			session.setAttribute("username", userName);
			session.setAttribute("userEmail", userResult.getEmailAddress());
			session.setAttribute("clientID", userResult.getClientId());
			
			System.out.println("Debug: Session attributes set:");
		    System.out.println("Debug: username = " + session.getAttribute("username"));
		    System.out.println("Debug: userEmail = " + session.getAttribute("userEmail"));
		    System.out.println("Debug: clientID = " + session.getAttribute("clientID"));
			
			dispatcher = request.getRequestDispatcher("dashboard.jsp");
		} else {
			request.setAttribute("status", "failed");
			dispatcher = request.getRequestDispatcher("login.jsp");
		}
		
		dispatcher.forward(request, response);
	}
}
