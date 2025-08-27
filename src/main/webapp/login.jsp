<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="alert/dist/sweetalert.css">
    <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
    <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
</head>
<body>
<input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
    <img class="wave" src="images/login_back.png">
    <div class="container">
        <div class="image">
            <img src="images/login_image.png">
        </div>
        <div class="login-container">
            <form action="LoginServlet" method="post">
                <img class="profilepic" src="images/profile_pic.png">
                <h2>Welcome</h2>
                <div class="input-div one">
                    <div class="i">
                        <i class='bx bxs-user'></i>
                    </div>
                    <div>
                        <h5>Username</h5>
                        <input class="input" type="text" name="username" required>
                    </div>
                </div>
                <div class="input-div two">
                    <div class="i">
                        <i class='bx bxs-lock-alt' ></i>
                    </div>
                    <div>
                        <h5>Password</h5>
                        <input class="input" type="password" name="password" required>
                    </div>
                </div>
                <a href="forgetpassword.jsp">Forgot Password?</a>
                <input type="submit" class="btn" value="Login">
            </form>
        </div>
    </div>

    <script type="text/javascript" src="javascript/login.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script type="text/javascript">
    var statusElement = document.getElementById("status");
    var status = statusElement ? statusElement.value : null; 

    if (status && status.trim() !== "") {
        if (status === "failed") {
            swal("Failed", "Wrong Username or Password", "error").then(() => {
                statusElement.value = "";
            });
        } else if (status === "resetSuccess") {
            swal("Success", "Your password has been successfully reset!", "success").then(() => {
                statusElement.value = "";
            });
        } else if (status === "resetFailed") {
            swal("Failed", "Your password reset has failed!", "error").then(() => {
                statusElement.value = "";
            });
        }
    }
	</script>


</body>
</html>