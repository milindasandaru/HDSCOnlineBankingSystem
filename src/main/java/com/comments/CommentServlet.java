package com.comments;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.sql.DriverManager;

@WebServlet("/fetchComments")
public class CommentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String userEmail = (String) session.getAttribute("userEmail");
        
        if (userEmail == null) {
            response.sendRedirect("login.jsp");
            return;
        }
        
        ArrayList<Comment> commentsList = new ArrayList<>();
        
        String url = "jdbc:mysql://localhost:3306/OnlineBankingSystem?useSSL=false";
        String user = "root";
        String pass = "mypass"; 

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url, user, pass);
            String sql = "SELECT * FROM comments WHERE email = (SELECT EmailAddress FROM Users WHERE ClientID = ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, userEmail);
            ResultSet rs = stmt.executeQuery();
            
            while (rs.next()) {
                int id = rs.getInt("id");
                String firstName = rs.getString("first_name");
                String lastName = rs.getString("last_name");
                String email = rs.getString("email");
                String phone = rs.getString("phone");
                String message = rs.getString("message");
                
                Comment comment = new Comment(id, firstName, lastName, email, phone, message);
                commentsList.add(comment);
            }
            
            rs.close();
            stmt.close();
            conn.close();
            
            request.setAttribute("commentsList", commentsList);
            request.getRequestDispatcher("viewComments.jsp").forward(request, response);
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
