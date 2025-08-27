package com.billpayment;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/BillForm")
public class BillPaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	    HttpSession session = request.getSession(false);
	    if (session == null || session.getAttribute("username") == null) {
	        response.sendRedirect("login.jsp");
	        return;
	    }

	    String username = (String) session.getAttribute("username");
	    int clientId = (Integer) session.getAttribute("clientID");

	    String billType = request.getParameter("billType");
	    String billNumber = request.getParameter("billNumber");
	    double paymentAmount = Double.parseDouble(request.getParameter("paymentAmount"));
	    String paymentDate = request.getParameter("paymentDate");

	    double accountBalance = BillPaymentDBUtil.getAccountBalance(username);

	    if (accountBalance < paymentAmount) {
	        request.setAttribute("errorMessage", "Insufficient balance to complete the payment.");
	        RequestDispatcher dispatcher = request.getRequestDispatcher("BillForm.jsp");
	        dispatcher.forward(request, response);
	        return;
	    }

	    BillPayment billPayment = new BillPayment(billType, billNumber, paymentAmount, paymentDate, username);
	    int paymentID = BillPaymentDBUtil.createBillPayment(billPayment, clientId);

	    if (paymentID > 0) {
	        
	        request.setAttribute("paymentID", paymentID);
	        request.setAttribute("billPayment", billPayment);
	        RequestDispatcher dispatcher = request.getRequestDispatcher("billSummary.jsp");
	        dispatcher.forward(request, response);
	    } else {
	        request.setAttribute("errorMessage", "Failed to create bill payment.");
	        RequestDispatcher dispatcher = request.getRequestDispatcher("BillForm.jsp");
	        dispatcher.forward(request, response);
	    }
	}
}


