package com.forgotpassword;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jakarta.servlet.http.HttpSession;

public class UserSession {
	
	public static void saveOtpAndEmail(HttpSession session, int otpValue, String email) {
		session.setAttribute("otp", otpValue);
		session.setAttribute("email", email);
	}
	
	public static int getOtp(HttpSession session) {
		return (int) session.getAttribute("otp");
	}
	
	public static String getEmail(HttpSession session) {
		return (String) session.getAttribute("email");
	}
	
	public static boolean isEmailValid(String email) throws SQLException {
		boolean isValid = false;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/OnlineBankingSystem?useSSL = false", "root", "sams##212121S");
		String query = "SELECT COUNT(*) FROM users WHERE emailaddress = ?";
		
		try (PreparedStatement preparedStatement = conn.prepareStatement(query)) {
	             
	            preparedStatement.setString(1, email);
	            ResultSet resultSet = preparedStatement.executeQuery();
	            
	            if (resultSet.next()) {
	                int count = resultSet.getInt(1);
	                isValid = (count > 0); 
	            }
	            
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        
	        return isValid;
	    }
	}
