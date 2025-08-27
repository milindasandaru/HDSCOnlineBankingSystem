package com.users;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDBUtil {

    // Validate user credentials using username and password
    public static UserLoginResult validate(User user) {
        UserLoginResult result = null;

        try {
            // Load MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // database connection
            Connection conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/OnlineBankingSystem?useSSL=true&requireSSL=true", 
                "root", "sams##212121S"
            );

            // SQL query to check if user credentials match
            String query = "SELECT EmailAddress, ClientID FROM Users WHERE Username = ? AND Password = ?";
            PreparedStatement pst = conn.prepareStatement(query);
            pst.setString(1, user.getUserName()); // Set username in the query
            pst.setString(2, user.getPassword()); // Set password in the query

            // Execute query
            ResultSet rs = pst.executeQuery();

            // If a matching record found, retrieve email and client ID
            if (rs.next()) {
                String email = rs.getString("EmailAddress");
                int clientId = rs.getInt("ClientID");
                result = new UserLoginResult(email, clientId); // Create result object with the data
            }

            // Close resources
            rs.close();
            pst.close();
            conn.close();

        } catch (Exception e) {
            e.printStackTrace(); // Print error if connection/query fails
        }

        return result; // Return login result
    }

    // Update user's account balance
    public static boolean updateUserBalance(int clientId, double newBalance) {
        boolean updated = false;
        try {
            // Load MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // database connection
            Connection conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/OnlineBankingSystem?useSSL=true&requireSSL=true", 
                "root", "sams##212121S"
            );

            // SQL query to update user's account balance
            String query = "UPDATE Users SET account_balance = ? WHERE client_id = ?";
            PreparedStatement pst = conn.prepareStatement(query);
            pst.setDouble(1, newBalance); // Set new balance
            pst.setInt(2, clientId); // Set client ID

            // Execute the update
            int rowsAffected = pst.executeUpdate();

            if (rowsAffected > 0) {
                updated = true;
            }

            // Close resources
            pst.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace(); // Print error if connection
        }
        return updated; // Return update status
    }
}


