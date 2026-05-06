package com.healthsure.servlet;

import com.healthsure.model.Claim;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.*;

public class ViewClaimsServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Claim> claimsList = new ArrayList<>();
        claimsList.add(new Claim(1, "POL123", "John Doe", "City Hospital", "Vijayawada",
                "Medical", 5000.0, "2026-02-01", "2026-02-05", "Surgery", "Pending"));
        claimsList.add(new Claim(2, "POL124", "Jane Smith", "Apollo Hospital", "Hyderabad",
                "Dental", 2000.0, "2026-01-20", "2026-01-22", "Dental Care", "Approved"));

        request.setAttribute("claimsList", claimsList);
        RequestDispatcher rd = request.getRequestDispatcher("viewClaims.jsp");
        rd.forward(request, response);
    }
}
