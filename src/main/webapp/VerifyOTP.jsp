<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Verify OTP</title>
</head>
<body>
    <h2>Verify OTP</h2>
    
    	<%
            String successMessage = (String) request.getAttribute("successMessage");
            String errorMessage = (String) request.getAttribute("errorMessage");

            if (successMessage != null) {
        %>
            <p class="success-message" style="color:green;"><%= successMessage %></p>
        <%
            } else if (errorMessage != null) {
        %>
            <p class="error-message" style="color:red;"><%= errorMessage %></p>
        <% 
            }
        %>

    <form action="VerifyOTP" method="post">
        <label for="otp">Enter OTP:</label>
        <input type="text" name="otp" id="otp" required>
        <input type="submit" value="Verify OTP">
    </form>
</body>
</html>
