package com.forgotpassword;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/newPassword")
public class ResetPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String newPassword = request.getParameter("password");
		String confPassword = request.getParameter("confPassword");
		RequestDispatcher dispatcher = null;
		
		if(newPassword != null && confPassword != null && newPassword.equals(confPassword)) {
			
			try {
				
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/OnlineBankingSystem?useSSL = false", "root", "sams##212121S");
				PreparedStatement pst = con.prepareStatement("UPDATE users SET password = ? WHERE emailaddress = ?");
				pst.setString(1, newPassword);
				pst.setString(2, (String) session.getAttribute("email"));
				
				int rowCount = pst.executeUpdate();
				if(rowCount > 0) {
					request.setAttribute("status", "resetSuccess");
					dispatcher = request.getRequestDispatcher("login.jsp");
				} else {
					request.setAttribute("status", "resetFailed");
					dispatcher = request.getRequestDispatcher("login.jsp");
				}
				dispatcher.forward(request, response);
				
			} catch(Exception e) {
				e.printStackTrace();
			}
			
		}
	
	}
}
