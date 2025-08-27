<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Enter OTP</title>
    <link rel="stylesheet" href="css/enterotp.css">
    <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
    <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
</head>
<body>
    <img class="wave" src="images/login_back.png">
    <div class="container">
        <div class="image">
            <img src="images/forgetPpic.png">
        </div>
        <div class="login-container">
            <form action="ValidateOtp" role="form" autocomplete="off" method="post">
                <div class="forgot">
                    <i class='bx bxs-lock-alt' ></i>
                    <h3>Enter OTP</h3> 
                    <%
            	String errorMessage = request.getParameter("error");
            	if (errorMessage != null) {
        		%>
            		<p style="color: red;"><%= errorMessage %></p>
        		<%
            		}
        		%>
                </div>
                <div class="input-div two">
                    <div class="i">
                        <i class='bx bxs-key'></i>
                    </div>
                    <div>
                        <h5>Enter OTP</h5>
                        <input class="input" type="text" name="otp" required>
                    </div>
                </div>
                <button class="btn" type="submit">Reset Password</button>
                <button class="btn" type="button" onclick="window.location.href='login.jsp';">Back to Login</button>
                <input type="hidden" class="hide" name="token" id="token" value="">
            </form>
        </div>
    </div>

    <script type="text/javascript" src="javascript/login.js"></script>

</body>
</html>
