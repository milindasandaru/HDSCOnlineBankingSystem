package com.billpayment;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class BillPaymentDBUtil {
	
	private static final String DB_URL = "jdbc:mysql://localhost:3306/OnlineBankingSystem";
    private static final String DB_USERNAME = "root";
    private static final String DB_PASSWORD = "sams##212121S";
    
    public static double getAccountBalance(String username) {
    	double balance = 0;
    	
    	try {
    		Class.forName("com.mysql.cj.jdbc.Driver");
    		Connection conn = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
    		
    		String query = "SELECT AccountBalance FROM Users WHERE Username = ?";
    		PreparedStatement pst = conn.prepareStatement(query);
    		pst.setString(1, username);
    		
    		ResultSet rs = pst.executeQuery();
    		
    		if (rs.next()) {
                balance = rs.getDouble("AccountBalance");
            }

            rs.close();
            pst.close();
            conn.close();
    	} catch (Exception e) {
    		e.printStackTrace();
    	}
    	return balance;
    }
    
    public static int createBillPayment(BillPayment billPayment, int clientId) {
        int generatedPaymentID = -1;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);

            String query = "INSERT INTO BillPayments (ClientID, BillType, BillNumber, Amount, PaymentDate, Status) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement pst = conn.prepareStatement(query, PreparedStatement.RETURN_GENERATED_KEYS);
            
            pst.setInt(1, clientId);
            pst.setString(2, billPayment.getBillType());
            pst.setString(3, billPayment.getBillNumber());
            pst.setDouble(4, billPayment.getPaymentAmount());
            pst.setString(5, billPayment.getPaymentDate());
            pst.setString(6, "Pending");

            int rowCount = pst.executeUpdate();

            if (rowCount > 0) {
                ResultSet rs = pst.getGeneratedKeys();
                if (rs.next()) {
                    generatedPaymentID = rs.getInt(1); 
                }
                rs.close();
            }

            pst.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return generatedPaymentID;
    }
    
    public static String getUserEmailByPaymentID(int paymentID) {
        String email = null;
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);

            String query = "SELECT EmailAddress FROM Users u JOIN BillPayments b ON u.ClientID = b.ClientID WHERE b.PaymentID = ?";
            
            PreparedStatement pst = conn.prepareStatement(query);
            pst.setInt(1, paymentID);
            
            ResultSet rs = pst.executeQuery();
            
            if (rs.next()) {
                email = rs.getString("EmailAddress");
            }

            rs.close();
            pst.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return email;
    }
    
    public static boolean updateAccountBalance(String username, double newBalance) {
    	boolean isUpdated = false;
    	
    	try {
    		Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);

            String query = "UPDATE Users SET AccountBalance = ? WHERE Username = ?";
            PreparedStatement pst = conn.prepareStatement(query);
            pst.setDouble(1, newBalance);
            pst.setString(2, username);
            
            int rowsUpdated = pst.executeUpdate();
            
            if(rowsUpdated > 0) {
            	isUpdated = true;
            }
            
            pst.close();
            conn.close();
    	} catch (Exception e) {
    		e.printStackTrace();
    	}
    	return isUpdated;
    }
    
    public static boolean updateBillPaymentStatus (int paymentID, String status) {
    	boolean isUpdated = false;
    	
    	try {
    		Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);

            String query = "UPDATE BillPayments SET Status = ? WHERE PaymentId = ?";
            PreparedStatement pst = conn.prepareStatement(query);
            pst.setString(1, status);
            pst.setInt(2, paymentID);
            
            int rowsUpdate = pst.executeUpdate();
            
            if(rowsUpdate > 0) {
            	isUpdated = true;
            }
            
            pst.close();
            conn.close();
    	} catch (Exception e) {
    		e.printStackTrace();
    	}
    	return isUpdated;
    }

	public static double getBillAmountByPaymentID(int paymentID) {
	    double amount = 0.0;
	    try {
	    	Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);

	        String query = "SELECT amount FROM BillPayments WHERE PaymentID = ?";
	        PreparedStatement ps = conn.prepareStatement(query);
	        ps.setInt(1, paymentID);
	        ResultSet rs = ps.executeQuery();

	        if (rs.next()) {
	            amount = rs.getDouble("amount");
	        } else {
	            System.out.println("No payment record found for paymentID: " + paymentID);
	        }

	        conn.close();
	    } catch (Exception e) {
	        System.out.println("Error retrieving bill amount for paymentID: " + paymentID);
	        e.printStackTrace();
	    }
	    return amount;
	}

    
}