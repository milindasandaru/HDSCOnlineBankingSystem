package com.comments;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

@WebServlet("/FetchComments")
public class FetchCommentsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        
        if (session != null && session.getAttribute("userEmail") != null) {
            int userEmail = (int) session.getAttribute("userEmail");
            
            try {
                Connection conn = DatabaseConnection.getConnection();
                String sql = "SELECT * FROM comments WHERE email = '"+ userEmail +"'";
                PreparedStatement ps = conn.prepareStatement(sql);
                ps.setInt(1, userEmail);
                ResultSet rs = ps.executeQuery();

                ArrayList<Comment> commentsList = new ArrayList<>();
                while (rs.next()) {
                    Comment comment = new Comment();
                    comment.setId(rs.getInt("id"));
                    comment.setFirstName(rs.getString("first_name"));
                    comment.setLastName(rs.getString("last_name"));
                    comment.setEmail(rs.getString("email"));
                    comment.setPhone(rs.getString("phone"));
                    comment.setMessage(rs.getString("message"));
                    commentsList.add(comment);
                }

                rs.close();
                ps.close();
                conn.close();

                request.setAttribute("commentsList", commentsList);
                request.getRequestDispatcher("viewComments.jsp").forward(request, response);

            } catch (Exception e) {
                e.printStackTrace();
                response.sendRedirect("errorPage.jsp");
            }
        } else {
            response.sendRedirect("login.jsp"); 
        }
    }
}
