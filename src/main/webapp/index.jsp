<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home | HealthSure Insurance</title>
    <link rel="stylesheet" href="css/style.css">

    <style>
        /* HERO SECTION */
        .hero {
            background: #0b3c5d;
            color: white;
            padding: 80px 20px;
            text-align: center;
        }

        .hero h1 {
            font-size: 42px;
            margin-bottom: 15px;
        }

        .hero p {
            font-size: 18px;
            max-width: 600px;
            margin: auto;
        }

        /* WHITE CARD CONTAINER */
        .card {
            background: white;
            padding: 35px;
            margin: 30px auto;
            border-radius: 12px;
            max-width: 1000px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.08);
        }

        .card h2 {
            color: #0b3c8a;
            margin-bottom: 20px;
            text-align: center;
        }

        .card p {
            color: #444;
            line-height: 1.6;
            margin-bottom: 20px;
        }

        .features {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
            margin-top: 30px;
        }

        .feature-box {
            background: white;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0 6px 15px rgba(0,0,0,0.08);
            text-align: center;
        }

        .feature-box h3 {
            color: #0b3c8a;
            margin-bottom: 12px;
        }

        .feature-box p {
            color: #555;
            line-height: 1.5;
        }

        .section ul {
            margin-left: 25px;
            color: #444;
            line-height: 1.6;
        }

        .section ul li {
            margin-bottom: 8px;
        }

        /* RESPONSIVE PADDING */
        @media (max-width: 768px) {
            .hero h1 { font-size: 32px; }
            .hero p { font-size: 16px; }
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

<!-- HERO SECTION -->
<div class="hero">
    <h1>Welcome to HealthSure Insurance</h1>
    <p>Your trusted partner for secure healthcare coverage</p>
</div>

<!-- ABOUT / COMPANY SECTION -->
<div class="card">
    <%
        String companyName = "HealthSure Insurance Pvt Ltd";
        int establishedYear = 2020;
    %>

    <h2>About <%= companyName %></h2>
    <p>Established in <%= establishedYear %>, HealthSure provides comprehensive health insurance solutions across India.</p>

    <!-- FEATURES / SERVICE BOXES -->
    <div class="features">
        <div class="feature-box">
            <h3>Cashless Hospitals</h3>
            <p>Access 5000+ network hospitals for cashless treatment.</p>
        </div>
        <div class="feature-box">
            <h3>Easy Claims</h3>
            <p>Hassle-free claim settlement with quick approvals.</p>
        </div>
        <div class="feature-box">
            <h3>24x7 Support</h3>
            <p>Dedicated customer support available round the clock.</p>
        </div>
    </div>
</div>

<!-- WHY CHOOSE US / VISION / MISSION SECTIONS -->
<div class="card section">
    <h2>Why Choose Us?</h2>
    <ul>
        <li>Affordable premium plans</li>
        <li>Wide hospital network</li>
        <li>Trusted by thousands</li>
        <li>Fast reimbursement</li>
    </ul>
</div>

<div class="card section">
    <h2>Our Vision</h2>
    <p>To make quality healthcare accessible and affordable for everyone.</p>
</div>

<div class="card section">
    <h2>Our Mission</h2>
    <p>Deliver reliable insurance services with transparency and trust.</p>
</div>

<div class="footer">
    © 2025 HealthSure Insurance Pvt Ltd. All rights reserved.
</div>

</body>
</html>
