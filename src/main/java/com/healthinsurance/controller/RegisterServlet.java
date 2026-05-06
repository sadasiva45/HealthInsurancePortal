package com.healthinsurance.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.healthinsurance.dao.DBConnection;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        try {
            Connection con = DBConnection.getConnection();

            // Check if username already exists
            PreparedStatement checkStmt = con.prepareStatement(
                "SELECT id FROM users WHERE username=?"
            );
            checkStmt.setString(1, username);
            ResultSet rs = checkStmt.executeQuery();

            if(rs.next()) {
                // Username exists
                response.sendRedirect("register.jsp?error=1");
                return;
            }

            // Insert new user
            PreparedStatement insertStmt = con.prepareStatement(
                "INSERT INTO users(name,email,username,password,role) VALUES(?,?,?,?,?)"
            );
            insertStmt.setString(1, name);
            insertStmt.setString(2, email);
            insertStmt.setString(3, username);
            insertStmt.setString(4, password);
            insertStmt.setString(5, "user"); // default role

            insertStmt.executeUpdate();

            // Registration success
            response.sendRedirect("login.jsp?success=1");

        } catch(Exception e) {
            e.printStackTrace();
            response.sendRedirect("register.jsp?error=1");
        }
    }
}
