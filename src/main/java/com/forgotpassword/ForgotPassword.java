package com.forgotpassword;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Random;

@WebServlet("/forgotPassword")
public class ForgotPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		HttpSession session = request.getSession();
		int otpValue = 0;
		RequestDispatcher dispatcher = null ;
		
		try {
			if(UserSession.isEmailValid(email)) {
				Random rand = new Random();
				otpValue = rand.nextInt(999999);
				
				EmailUtil.sendOtpEmail(email, otpValue);
				
				session.setAttribute("otp", otpValue);
				session.setAttribute("email", email);
				
				dispatcher = request.getRequestDispatcher("enterotp.jsp");
				request.setAttribute("message", "OTP has been sent to your email.");
				dispatcher.forward(request, response);
			} else {
				request.setAttribute("error", "Email is not valid, please enter a valid email.");
			    dispatcher = request.getRequestDispatcher("forgetpassword.jsp");
			    dispatcher.forward(request, response);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
