<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.ArrayList" %>
    <%@ page import="java.util.List" %>
    <%@ page import="com.comments.Comment" %>
    
<!DOCTYPE html>
<html>
<head>
    <title>View Comments</title>
</head>
<body>
    <h2>Your Comments</h2>

    <table border="1">
        <thead>
            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Message</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <%--
                
                ArrayList<Comment> commentsList = (ArrayList<Comment>) request.getAttribute("commentsList");

                if (commentsList != null && !commentsList.isEmpty()) {
                    for (Comment comment : commentsList) {
            --%>
                <tr>
                    <td><%--= comment.getFirstName() --%></td>
                    <td><%--= comment.getLastName() --%></td>
                    <td><%--= comment.getEmail() --%></td>
                    <td><%--= comment.getPhone() --%></td>
                    <td><%--= comment.getMessage() --%></td>
                    <td>
                        <form action="editComment.jsp" method="get" style="display:inline;">
                            <input type="hidden" name="commentId" value="<%--= comment.getId() --%>">
                            <button type="submit">Edit</button>
                        </form>

                        <form action="deleteComment" method="post" style="display:inline;">
                            <input type="hidden" name="commentId" value="<%--= comment.getId() --%>">
                            <button type="submit" onclick="return confirm('Are you sure you want to delete this comment?')">Delete</button>
                        </form>
                    </td>
                </tr>
            <%--
                    }
                } else {
            --%>
                <tr>
                    <td colspan="6">No comments found.</td>
                </tr>
            <%--
                } 
            --%>
        </tbody>
    </table>

    <br>
    <a href="dashboard.jsp">Back to Dashboard</a>
</body>
</html>
