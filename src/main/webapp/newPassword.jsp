<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="css/login.css">
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
            <form action="newPassword" method="post">
                <h3>Reset Password</h3>
                <%
                    String error = request.getParameter("error");
                    if (error != null) {
                %>
                    <p style="color:red;"><%= error %></p>
                <%
                    }
                %>
                <div class="input-div one">
                    <div class="i">
                        <i class='bx bxs-lock-alt' ></i>
                    </div>
                    <div>
                        <h5>New Password</h5>
                        <input class="input" type="password" name="password" required>
                    </div>
                </div>
                <div class="input-div two">
                    <div class="i">
                        <i class='bx bxs-lock-alt' ></i>
                    </div>
                    <div>
                        <h5>Confirm New Password</h5>
                        <input class="input" type="password" name="confPassword" required>
                    </div>
                </div>
                <input type="submit" class="btn" value="Reset">
            </form>
        </div>
    </div>

    <script type="text/javascript" src="javascript/login.js"></script>

</body>
</html>