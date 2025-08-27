package com.billpayment;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/ConfirmBillPayment")
public class ConfirmBillPaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer paymentID = Integer.parseInt(request.getParameter("paymentID"));
        String userEmail = BillPaymentDBUtil.getUserEmailByPaymentID(paymentID);

        String otp = OTPUtil.generateOTP();

        OTPUtil.sendOTPEmail(userEmail, otp);

        request.getSession().setAttribute("generatedOTP", otp);
        request.getSession().setAttribute("paymentID", paymentID);

        response.sendRedirect("VerifyOTP.jsp");
    }
}
