<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String message = request.getParameter("message");
	%>
	
	<form action="" method="post">
		FirstNme <input type="text" name="firstname" value="<%= firstname %>"><br>	
		LastName <input type="text" name="lastname" value="<%= lastname %>"><br>
		Email <input type="text" name="email" value="<%= email %>"><br>
		Phone <input type="text" name="phone" value="<%= phone %>"><br>
		Message <input type="text" name="message" value="<%= message %>"><br>
		
		<input type="submit" name="submit" value="update comment">
	</form>

</body>
</html>