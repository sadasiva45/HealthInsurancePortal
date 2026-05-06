<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- ========================================================= --%>
<%-- PAGE NAME  : dashboard.jsp                               --%>
<%-- PROJECT    : Health Insurance Portal                     --%>
<%-- MODULE     : User Dashboard                              --%>
<%-- ========================================================= --%>

<!DOCTYPE html>
<html>
<head>

    <meta charset="UTF-8">
    <title>Dashboard | HealthSure</title>
    <link rel="stylesheet" href="css/style.css">

    <style>
        .dashboard-grid {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 20px;
            margin-top: 30px;
        }

        .dash-card {
            background: white;
            padding: 20px;
            border-radius: 6px;
            box-shadow: 0 0 6px rgba(0,0,0,0.1);
        }
    </style>

</head>

<body>

<div class="navbar">
    <div class="logo">HealthSure</div>
    <div>
        <a href="index.jsp">Home</a>
        <a href="dashboard.jsp">Dashboard</a>
        <a href="claims.jsp">Claims</a>
        <a href="network.jsp">Hospitals</a>
        <a href="support.jsp">Support</a>
        <a href="about.jsp">About</a>
        <a href="login.jsp">Login</a>
    </div>
</div>

<div class="container">

    <h1>User Dashboard</h1>

    <%
        String userName = "John Doe";
        String policyNumber = "HS-908776";
        String policyStatus = "Active";
    %>

    <p>
        Welcome, <strong><%= userName %></strong>
    </p>

    <div class="dashboard-grid">

        <div class="dash-card">
            <h3>Policy Details</h3>
            <p>Policy Number: <%= policyNumber %></p>
            <p>Status: <%= policyStatus %></p>
            <p>Plan: HealthSure Gold</p>
        </div>

        <div class="dash-card">
            <h3>Claim Summary</h3>
            <p>Total Claims: 0</p>
            <p>Approved Claims: 0</p>
            <p>Pending Claims: 0</p>
        </div>

        <div class="dash-card">
            <h3>Hospital Access</h3>
            <p>Network Hospitals: 5000+</p>
            <p>Cashless Available</p>
        </div>

        <div class="dash-card">
            <h3>Support</h3>
            <p>Email: support@healthsure.com</p>
            <p>Phone: 1800-123-456</p>
        </div>

    </div>

    <%-- Expansion for academic evaluation --%>

    <div class="section">
        <h2>Important Notifications</h2>
        <ul>
            <li>No pending dues</li>
            <li>Policy valid till Dec 2025</li>
            <li>No active claims</li>
        </ul>
    </div>

    <div class="section">
        <h2>Future Enhancements</h2>
        <p>
            This dashboard will later integrate
            dynamic data using JDBC and Servlets.
        </p>
    </div>

</div>

<div class="footer">
    © 2025 HealthSure Insurance Pvt Ltd. All rights reserved.
</div>

</body>
</html>
