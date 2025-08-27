package com.billpayment;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/BillPaymentHistory")
public class BillPaymentHistoryServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("BillPaymentHistoryServlet: doGet called");

        Integer clientID = (Integer) request.getSession().getAttribute("clientID");
        System.out.println("Retrieved username from session: " + clientID);

        List<BillPayment> paymentHistory = BillPaymentHistoryUtil.getPaymentHistoryByUsername(clientID);
        System.out.println("Retrieved payment history list for user " + clientID + ": " + paymentHistory.size() + " records found.");

        request.setAttribute("paymentHistory", paymentHistory);
        System.out.println("Payment history set as request attribute.");

        RequestDispatcher dispatcher = request.getRequestDispatcher("billHistory.jsp");
        System.out.println("Forwarding to billHistory.jsp");
        dispatcher.forward(request, response);
        System.out.println("Request forwarded to billHistory.jsp successfully.");
    }
}
