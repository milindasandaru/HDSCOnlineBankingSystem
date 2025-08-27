<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<table>
		<c:forEach var="com" items="${comDetails}">
		
		<c:set var="firstname" value="${com.firstname}"></c:set>
		<c:set var="lastname" value="${com.lastname}"></c:set>
		<c:set var="email" value="${com.email}"></c:set>
		<c:set var="phone" value="${com.phone}"></c:set>
		<c:set var="message" value="${com.message}"></c:set>
		
		<tr>
			<td>First Name</td>
			<td>$com.firstname}</td>
		</tr>
		<tr>
			<td>Last Name</td>
			<td>$com.lastname}</td>
		</tr>
		<tr>
			<td>Email</td>
			<td>$com.email}</td>
		</tr>
		<tr>
			<td>Phone</td>
			<td>$com.phone}</td>
		</tr>
		<tr>
			<td>Message</td>
			<td>$com.message}</td>
		</tr>
		
		</c:forEach>
	</table>
	
	<c:url value="updatecomments.jsp" var="comupdate">
		<c:param name="firstname" value="${firstname}"/>
		<c:param name="lastname" value="${lastname}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="message" value="${message}"/>
	</c:url>
	
	<a href="${comupdate}">
		<input type="button" name="update" value="Update comments">
	</a>
	
</body>
</html>