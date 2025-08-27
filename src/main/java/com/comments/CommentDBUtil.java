package com.comments;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
/*import java.util.ArrayList;
import java.util.List;*/

public class CommentDBUtil {
	
	
	public static boolean isUserRegistered(String email) {
		boolean isRegistered = false;
		
		String url = "jdbc:mysql://localhost:3306/OnlineBankingSystem?useSSL = false";
		String user = "root";
		String pass = "sams##212121S";
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection(url, user, pass);
			PreparedStatement st = conn.prepareStatement("SELECT * FROM Users WHERE EmailAddress = ?");
			st.setString(1, email);
			ResultSet resultSet = st.executeQuery();
			
			if (resultSet.next()) {
				isRegistered = true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isRegistered;
	}

	public static boolean storeComment(Comment comment) {
		boolean isStored = false;
		
		String url = "jdbc:mysql://localhost:3306/OnlineBankingSystem?useSSL = false";
		String user = "root";
		String pass = "sams##212121S";
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection(url, user, pass);
			PreparedStatement statement = conn.prepareStatement("INSERT INTO comments (first_name, last_name, email, phone, message) VALUES (?, ?, ?, ?, ?)");
			
			statement.setString(1, comment.getFirstName());
			statement.setString(2, comment.getLastName());
	        statement.setString(3, comment.getEmail());
	        statement.setString(4, comment.getPhone());
	        statement.setString(5, comment.getMessage());
	        
	        int rows = statement.executeUpdate();
	        
	        if (rows > 0) {
	        	isStored = true;
	        }
	        
	        statement.close();
	        conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isStored;
	}	
	
	/*public static List<Comment> getComments(String useremail) {
		ArrayList<Comment> com = new ArrayList<>();
		
		String url = "jdbc:mysql://localhost:3306/OnlineBankingSystem?useSSL=false";
		String user = "root";
		String pass = "sams##212121S";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection(url, user, pass);
			
			String query = "SELECT * FROM comments WHERE email = (SELECT EmailAddress FROM Users WHERE ClientID = ?)";
			PreparedStatement statement = conn.prepareStatement(query);
			statement.setString(1, useremail);
			
			ResultSet rs = statement.executeQuery();
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String firstname = rs.getString(2);
				String lastname = rs.getString(3);
				String email = rs.getString(4);
				String phone = rs.getString(5);
				String message = rs.getString(6);
				
				Comment c = new Comment(id, firstname, lastname, email, phone, message);
				com.add(c);
			}
			
			rs.close();
			statement.close();
			conn.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return com;
	}
*/
	
	public static boolean updateComment(int commentId, String userEmail, String newMessage) {
        boolean isUpdated = false;
        
        String url = "jdbc:mysql://localhost:3306/OnlineBankingSystem?useSSL = false";
		String user = "root";
		String pass = "sams##212121S";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url, user, pass);

            String sql = "UPDATE comments SET message = ? WHERE id = ? AND email = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, newMessage);
            stmt.setInt(2, commentId);
            stmt.setString(3, userEmail);

            int rowsAffected = stmt.executeUpdate();
            isUpdated = (rowsAffected > 0);

            stmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return isUpdated;
    }

	public static boolean deleteComment(int commentId, String userEmail) {
        boolean isDeleted = false;
        
        String url = "jdbc:mysql://localhost:3306/OnlineBankingSystem?useSSL = false";
		String user = "root";
		String pass = "sams##212121S";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url, user, pass);

            String sql = "DELETE FROM comments WHERE id = ? AND email = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, commentId);
            stmt.setString(2, userEmail);

            int rowsAffected = stmt.executeUpdate();
            isDeleted = (rowsAffected > 0);

            stmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return isDeleted;
    }
}
