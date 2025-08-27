<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.comments.Comment" %>
    
<!DOCTYPE html>
<html>
<head>
    <title>Edit Comment</title>
</head>
<body>
    <h2>Edit Your Comment</h2>
    
    <form action="updateComment" method="post">
        
        <input type="hidden" name="commentId" value="${comment.id}" />
        
        <label for="newMessage">Message:</label><br>
        <textarea name="newMessage" rows="4" cols="50">${comment.message}</textarea><br><br>
        
        <input type="submit" value="Update Comment">
    </form>
    
    <a href="viewComments.jsp">Cancel</a>
</body>
</html>