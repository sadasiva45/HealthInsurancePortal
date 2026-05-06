package com.healthinsurance.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Date;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.healthinsurance.dao.DBConnection;

@WebServlet("/submitClaim")
public class SubmitClaimServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("submitClaim.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        if(session == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        Integer userId = (Integer) session.getAttribute("userId");
        if(userId == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        String hospitalName = request.getParameter("hospital");
        String claimAmountStr = request.getParameter("claim_amount");
        String treatmentDateStr = request.getParameter("treatment_date");
        String claimReason = request.getParameter("claim_reason");

        if(hospitalName == null || hospitalName.isEmpty() ||
           claimAmountStr == null || claimAmountStr.isEmpty() ||
           treatmentDateStr == null || treatmentDateStr.isEmpty() ||
           claimReason == null || claimReason.isEmpty()) {

            response.sendRedirect("submitClaim.jsp?error=1");
            return;
        }

        try (Connection con = DBConnection.getConnection()) {

            double claimAmount = Double.parseDouble(claimAmountStr);

            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); // correct format for input type="date"
            java.util.Date utilDate = sdf.parse(treatmentDateStr);
            Date sqlDate = new Date(utilDate.getTime());

            PreparedStatement ps = con.prepareStatement(
                "INSERT INTO claims (user_id, hospital_name, claim_amount, admission_date, claim_reason) VALUES (?, ?, ?, ?, ?)"
            );
            ps.setInt(1, userId);
            ps.setString(2, hospitalName);
            ps.setDouble(3, claimAmount);
            ps.setDate(4, sqlDate);
            ps.setString(5, claimReason);

            ps.executeUpdate();

            response.sendRedirect("submitClaim.jsp?success=1");

        } catch (Exception e) {
            e.printStackTrace(); // prints full stack trace in Tomcat console
            response.sendRedirect("submitClaim.jsp?error=1");
        }
    }
}
