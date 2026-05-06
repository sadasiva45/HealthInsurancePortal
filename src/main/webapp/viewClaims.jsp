<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.healthinsurance.model.Claim" %>

<%
if (session == null || session.getAttribute("userId") == null) {
    response.sendRedirect("login.jsp");
    return;
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Claims | HealthSure</title>

<style>
    body {
        font-family: Arial;
        margin: 0;
        padding: 0;
        background: linear-gradient(135deg, #0b3c8a, #1296db);
    }

    .container {
        width: 90%;
        max-width: 1200px;
        margin: 40px auto;
        background: white;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 10px 25px rgba(0,0,0,0.2);
    }

    h2 {
        text-align: center;
        color: #0b3c5d;
        margin-bottom: 20px;
    }

    table {
        width: 100%;
        border-collapse: collapse;
    }

    th {
        background: #0b3c5d;
        color: white;
        padding: 10px;
    }

    td {
        padding: 10px;
        text-align: center;
        border-bottom: 1px solid #ddd;
    }

    tr:hover {
        background: #f2f2f2;
    }

    .status-pending {
        color: orange;
        font-weight: bold;
    }

    .status-approved {
        color: green;
        font-weight: bold;
    }

    .btn {
        padding: 6px 12px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        color: white;
    }

    .approve {
        background: green;
    }

    .reject {
        background: red;
    }

    .no-data {
        text-align: center;
        padding: 20px;
        font-size: 18px;
        color: #555;
    }
</style>

</head>
<body>

<div class="container">
    <h2>All Claims</h2>

<%
List<Claim> claimsList = (List<Claim>) request.getAttribute("claimsList");

if (claimsList == null || claimsList.isEmpty()) {
%>
    <div class="no-data">No claims found</div>
<%
} else {
%>

<table>
<tr>
    <th>ID</th>
    <th>Policy</th>
    <th>Patient</th>
    <th>Hospital</th>
    <th>City</th>
    <th>Amount</th>
    <th>Status</th>
    <th>Action</th>
</tr>

<%
for (Claim c : claimsList) {
%>
<tr>
    <td><%= c.getClaimId() %></td>
    <td><%= c.getPolicyNumber() %></td>
    <td><%= c.getPatient() %></td>
    <td><%= c.getHospital() %></td>
    <td><%= c.getCity() %></td>
    <td>₹ <%= c.getClaimAmount() %></td>

    <td class="<%= c.getStatus().equals("Pending") ? "status-pending" : "status-approved" %>">
        <%= c.getStatus() %>
    </td>

    <td>
        <form action="updateClaimStatus" method="post">
            <input type="hidden" name="claimId" value="<%= c.getClaimId() %>">

            <button class="btn approve" name="status" value="Approved"
                <%= c.getStatus().equals("Approved") ? "disabled" : "" %>>
                Approve
            </button>

            <button class="btn reject" name="status" value="Rejected"
                <%= c.getStatus().equals("Approved") ? "disabled" : "" %>>
                Reject
            </button>
        </form>
    </td>
</tr>
<%
}
%>

</table>

<%
}
%>

</div>

</body>
</html>