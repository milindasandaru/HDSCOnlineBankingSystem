package com.comments;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;


@WebServlet("/updateComment")
public class CommentUpdateServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String userEmail = (String) session.getAttribute("userEmail");

        if (userEmail == null) {
            response.sendRedirect("login.jsp");  
            return;
        }

        int commentId = Integer.parseInt(request.getParameter("commentId"));
        String newMessage = request.getParameter("newMessage");

        boolean isUpdated = CommentDBUtil.updateComment(commentId, userEmail, newMessage);

        if (isUpdated) {
            response.sendRedirect("viewComments.jsp?successMessage=Comment updated successfully.");
        } else {
            response.sendRedirect("viewComments.jsp?errorMessage=Failed to update comment.");
        }
    }
}

