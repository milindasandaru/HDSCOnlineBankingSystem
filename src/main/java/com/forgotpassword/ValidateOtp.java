package com.forgotpassword;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ValidateOTP")
public class ValidateOtp extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
        String enteredOtp = request.getParameter("otp");

        HttpSession session = request.getSession();
        String storedOtp = session.getAttribute("otp").toString();

        if (enteredOtp.equals(storedOtp)) {
            response.sendRedirect("newPassword.jsp");
        } else {
        	
            response.sendRedirect("enterotp.jsp?error=Invalid OTP. Please try again.");
        }
    }
}