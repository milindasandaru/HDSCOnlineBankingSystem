package com.billpayment;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/VerifyOTP")
public class VerifyOTPServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String enteredOTP = request.getParameter("otp");
        String generatedOTP = (String) request.getSession().getAttribute("generatedOTP");
        Integer paymentID = (Integer) request.getSession().getAttribute("paymentID");
        String username = (String) request.getSession().getAttribute("username");

        try {

            System.out.println("Processing OTP verification for user: " + username);
            System.out.println("Entered OTP: " + enteredOTP);
            System.out.println("Generated OTP: " + generatedOTP);
            System.out.println("Payment ID: " + paymentID);

            if (enteredOTP != null && enteredOTP.equals(generatedOTP)) {

                double paymentAmount = BillPaymentDBUtil.getBillAmountByPaymentID(paymentID);
                double accountBalance = BillPaymentDBUtil.getAccountBalance(username);

                System.out.println("Retrieved payment amount: " + paymentAmount);
                System.out.println("Retrieved account balance: " + accountBalance);

                double newBalance = accountBalance - paymentAmount;
                boolean isBalanceUpdated = BillPaymentDBUtil.updateAccountBalance(username, newBalance);

                if (!isBalanceUpdated) {
                    System.out.println("Error: Failed to update account balance for user: " + username);
                    request.setAttribute("errorMessage", "Failed to update account balance.");
                    forwardToErrorPage(request, response);
                    return;
                }

                boolean isStatusUpdated = BillPaymentDBUtil.updateBillPaymentStatus(paymentID, "Completed");
                if (isStatusUpdated) {
                    System.out.println("Payment status updated successfully for paymentID: " + paymentID);
                    response.sendRedirect("billHistory.jsp");
                } else {
                    System.out.println("Error: Failed to update bill payment status for paymentID: " + paymentID);
                    request.setAttribute("errorMessage", "Failed to update the bill payment status.");
                    forwardToErrorPage(request, response);
                }

            } else {
                System.out.println("Error: Invalid OTP entered for user: " + username);
                request.setAttribute("errorMessage", "Invalid OTP. Please try again.");
                forwardToErrorPage(request, response);
            }

        } catch (Exception e) {
            System.out.println("Exception occurred while processing OTP verification for user: " + username);
            e.printStackTrace();
            request.setAttribute("errorMessage", "There was an error processing your bill payment. Please try again.");
            forwardToErrorPage(request, response);
        }
    }

    private void forwardToErrorPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("VerifyOTP.jsp");
        dispatcher.forward(request, response);
    }
}
