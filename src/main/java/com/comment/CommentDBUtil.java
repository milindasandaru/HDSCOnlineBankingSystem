package com.comment;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class CommentDBUtil {
	
	private static final String DB_URL = "jdbc:mysql://localhost:3306/OnlineBankingSystem";
    private static final String DB_USERNAME = "root";
    private static final String DB_PASSWORD = "sams##212121S";
  
	public static boolean insertcomment(String firstname, String lastname, String email, String phone, String message) {
		boolean isSuccess = false;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
			
			Statement stmt = conn.createStatement();
			String sql = "INSERT INTO comments VALUES (0, '"+ firstname +"','"+ lastname +"', '"+ email +"','"+ phone +"','"+ message +"')";
			int rs = stmt.executeUpdate(sql);
			
			if (rs > 0)  {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	/*public static List<Comment> insert*/

}
