package com.billpayment;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class BillPaymentHistoryUtil {
	
	private static final String DB_URL = "jdbc:mysql://localhost:3306/OnlineBankingSystem";
    private static final String DB_USERNAME = "root";
    private static final String DB_PASSWORD = "sams##212121S";

    public static List<BillPayment> getPaymentHistoryByUsername(int clientID) {
        List<BillPayment> paymentHistory = new ArrayList<>();

        try {
        	Class.forName("com.mysql.cj.jdbc.Driver");
    		Connection conn = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
            String query = "SELECT * FROM BillPayments WHERE username = ?";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setInt(1, clientID);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                BillPayment payment = new BillPayment();
                payment.setPaymentID(rs.getInt("paymentID"));
                payment.setBillType(rs.getString("billType"));
                payment.setBillNumber(rs.getString("billNumber"));
                payment.setPaymentAmount(rs.getDouble("amount"));
                payment.setPaymentDate(rs.getString("paymentDate"));
                payment.setStatus(rs.getString("status"));
                paymentHistory.add(payment);
            }
            
            rs.close();
            ps.close();
            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return paymentHistory;
    }
}


