package com.healthsure.servlet;

import com.healthsure.model.Claim;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.*;

public class UpdateClaimStatusServlet extends HttpServlet {
    private static List<Claim> claimsList = new ArrayList<>();

    @Override
    public void init() throws ServletException {
        claimsList.add(new Claim(1, "POL123", "John Doe", "City Hospital", "Vijayawada",
                "Medical", 5000.0, "2026-02-01", "2026-02-05", "Surgery", "Pending"));
        claimsList.add(new Claim(2, "POL124", "Jane Smith", "Apollo Hospital", "Hyderabad",
                "Dental", 2000.0, "2026-01-20", "2026-01-22", "Dental Care", "Approved"));
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int claimId = Integer.parseInt(request.getParameter("claimId"));
        String status = request.getParameter("status");

        for (Claim c : claimsList) {
            if (c.getClaimId() == claimId) {
                c.setStatus(status);
                break;
            }
        }

        request.setAttribute("claimsList", claimsList);
        RequestDispatcher rd = request.getRequestDispatcher("viewClaims.jsp");
        rd.forward(request, response);
    }
}
