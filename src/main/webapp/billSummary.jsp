<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.billpayment.BillPayment" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bill Payment Summary</title>
    <link rel="stylesheet" href="./css/BillForm.css">
</head>
<body>
    <section class="container">
        <header>Bill Payment Summary</header>

        <% 

            BillPayment billPayment = (BillPayment) request.getAttribute("billPayment");
            Integer paymentID = (Integer) request.getAttribute("paymentID");

            if (billPayment != null) {
        %>
            <div class="summary-box">
                <h3>Payment Summary</h3>
                <p><strong>Payment ID:</strong> <%= paymentID %></p>
                <p><strong>Bill Type:</strong> <%= billPayment.getBillType() %></p>
                <p><strong>Bill Number:</strong> <%= billPayment.getBillNumber() %></p>
                <p><strong>Amount:</strong> <%= billPayment.getPaymentAmount() %></p>
                <p><strong>Payment Date:</strong> <%= billPayment.getPaymentDate() %></p>
                <p><strong>Status:</strong> <%= billPayment.getStatus() %></p>
            </div>
        <% 
            } else {
        %>
            <p style="color:red;">There was an error processing your bill payment. Please try again.</p>
        <% 
            }
        %>

        <%
            String successMessage = (String) request.getAttribute("successMessage");
            String errorMessage = (String) request.getAttribute("errorMessage");

            if (successMessage != null) {
        %>
            <p class="success-message"><%= successMessage %></p>
        <%
            } else if (errorMessage != null) {
        %>
            <p class="error-message"><%= errorMessage %></p>
        <% 
            }
        %>

        <form action="ConfirmBillPayment" method="post">
            <input type="hidden" name="paymentID" value="<%= paymentID %>">
            <input type="submit" value="Confirm Payment">
        </form>

        <a href="BillForm.jsp">Go back to the Bill Payment Form</a>
    </section>
</body>
</html>
