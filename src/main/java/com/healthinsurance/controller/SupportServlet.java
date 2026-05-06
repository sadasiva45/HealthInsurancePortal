package com.healthinsurance.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/SupportServlet")
public class SupportServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public SupportServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        System.out.println("🔥 SUPPORT SERVLET HIT (GET)");

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String query = request.getParameter("query");

        System.out.println("Name: " + name);
        System.out.println("Email: " + email);
        System.out.println("Query: " + query);

        // ✅ Correct redirect (important fix)
        response.sendRedirect(request.getContextPath() + "/support.jsp?success=1");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        System.out.println("🔥 SUPPORT SERVLET HIT (POST)");

        doGet(request, response);
    }
}