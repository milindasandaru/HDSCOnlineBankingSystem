package com.comments;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/UserComment")
public class UserCommentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String message = request.getParameter("message");
		
		request.getSession();
		RequestDispatcher dispatcher = null ;
		
		try {
			if(CommentDBUtil.isUserRegistered(email)) {
				
				Comment comment = new Comment(firstName, lastName, email, phone, message);
				boolean isSuccess = CommentDBUtil.storeComment(comment);
				
				if (isSuccess) {
	                response.sendRedirect("contact_us.jsp?successMessage=Thank you for your comment!");
	            } else {
	                request.setAttribute("errorMessage", "Failed to submit your comment. Please try again.");
	                dispatcher = request.getRequestDispatcher("contact_us.jsp");
	                dispatcher.forward(request, response);
	            }
				
			} else {
				request.setAttribute("errorMessage", "You are not a registered user.");
				dispatcher = request.getRequestDispatcher("contact_us.jsp");
			    dispatcher.forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
