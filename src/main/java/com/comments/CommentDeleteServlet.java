package com.comments;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/deleteComment")
public class CommentDeleteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        String userEmail = (String) session.getAttribute("userEmail");

        if (userEmail == null) {
            response.sendRedirect("login.jsp"); 
            return;
        }

        int commentId = Integer.parseInt(request.getParameter("commentId"));

        boolean isDeleted = CommentDBUtil.deleteComment(commentId, userEmail);

        if (isDeleted) {
            response.sendRedirect("viewComments.jsp?successMessage=Comment deleted successfully.");
        } else {
            response.sendRedirect("viewComments.jsp?errorMessage=Failed to delete comment.");
        }
    }
}
