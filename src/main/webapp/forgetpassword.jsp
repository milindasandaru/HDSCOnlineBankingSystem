<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forget password</title>
    <link rel="stylesheet" href="css/forgetpassword.css">
    <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
    <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" >
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
</head>
<body>
    <img class="wave" src="images/login_back.png">
    <div class="container">
        <div class="image">
            <img src="images/forgetPpic.png">
        </div>
        <div class="login-container">
            <form action="forgotPassword" method="post">
            <%
                String error = (String) request.getAttribute("error");
                if (error != null) {
            %>
                <p style="color: red;"><%= error %></p>
            <%
                }
            %>
                <div class="forgot">
                    <h3>Forgot your password?</h3>
                    <p>Follow these three steps to recover your password<br><br></p>
                    <ol class="instruction">
                        <li>Enter your email address.</li>
                        <li>System will send you an OTP to your email.</li>
                        <li>Enter OTP and change the password.</li>
                    </ol>
                </div>
                <div class="input-div two">
                    <div class="i">
                        <i class='bx bxl-gmail'></i>
                    </div>
                    <div>
                        <h5>Enter a valid email</h5>
                        <input class="input" type="text" name="email" required>
                    </div>
                </div>
                <button class="btn" type="submit" >Get OTP</button>
                <button class="btn" type="button" onclick="window.location.href='login.jsp';">Back to Login</button>
            </form>
        </div>
    </div>

    <script type="text/javascript" src="javascript/login.js"></script>

</body>
</html>