<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Header</title>
    <link rel="stylesheet" href="css/Header.css">
</head>
<body>

    <header id="header" class="header">
        <nav class="navbar">
            <div class="logo">
                <a href="homepage.jsp"><img src="./images/logo1.png" alt="OnlineBank Logo"></a>
            </div>
            <ul class="nav-links">
                <li><a href="services.jsp">Services</a></li>
                <li><a href="aboutus.jsp">About Us</a></li>
                <li><a href="contact_us.jsp">Contact Us</a></li>
            </ul>
            <div class="auth-buttons">
                <a href="./login.jsp" class="btn login" id="lb">Login</a>
            </div>
        </nav>
    </header>

    <script src="javascript/header.js"></script>

</body>
</html>
