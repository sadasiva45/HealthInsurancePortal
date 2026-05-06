<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Network Hospitals | HealthSure Insurance</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">

    <style>
        /* ====== NETWORK HOSPITALS PAGE ====== */
        .network-container {
            max-width: 1000px;
            margin: 30px auto;
            padding: 35px;
            background: #fff;
            border-radius: 12px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.08);
        }

        .network-container h1, .network-container h2, .network-container h3 {
            color: #0b3c8a;
            margin-bottom: 20px;
        }

        .network-container p {
            color: #444;
            line-height: 1.6;
            margin-bottom: 15px;
        }

        /* SEARCH FORM */
        .search-form label {
            display: block;
            margin-bottom: 6px;
            font-weight: 500;
        }

        .search-form input, .search-form select {
            width: 100%;
            padding: 12px;
            margin-bottom: 15px;
            border-radius: 6px;
            border: 1px solid #ccc;
        }

        .search-form button {
            padding: 12px 20px;
            border: none;
            border-radius: 6px;
            background: linear-gradient(90deg, #0b3c8a, #1296db);
            color: white;
            cursor: pointer;
            font-size: 16px;
        }

        .search-form button:hover {
            opacity: 0.95;
        }

        /* HOSPITAL TABLE */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 12px;
            text-align: left;
        }

        th {
            background-color: #0b3c8a;
            color: #fff;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        /* INFO BOXES */
        .info-box {
            background: #eef4ff;
            padding: 20px;
            border-left: 5px solid #0b3c5d;
            margin: 20px 0;
            border-radius: 6px;
        }

        /* FAQ BOX */
        .faq-box h4 {
            margin-bottom: 8px;
            color: #0b3c8a;
        }

        .faq-box p {
            margin-bottom: 12px;
        }

        /* BULLET LISTS */
        .bullet-list ul {
            margin-left: 20px;
            list-style-type: disc;
        }

        /* RESPONSIVE */
        @media (max-width: 768px) {
            .network-container {
                padding: 25px;
                margin: 20px;
            }
            table, th, td {
                font-size: 14px;
            }
        }
    </style>
</head>
<body>

<div class="navbar">
    <h2>HealthSure</h2>
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

<div class="network-container">
    <h1>Network Hospitals</h1>
    <p>HealthSure Insurance provides access to a wide network of hospitals across India for cashless treatment.</p>

    <p><strong>Selected Policy:</strong> HealthSure Gold<br>
       <strong>City:</strong> All Cities</p>

    <h2>Top Network Hospitals</h2>
    <ul>
        <li>Apollo Hospitals</li>
        <li>Fortis Healthcare</li>
        <li>Manipal Hospitals</li>
        <li>Max Healthcare</li>
        <li>Narayana Health</li>
    </ul>

    <h2>Hospital Details</h2>
    <table>
        <tr>
            <th>Hospital Name</th>
            <th>City</th>
            <th>Specialties</th>
            <th>Cashless Available</th>
        </tr>
        <tr>
            <td>Apollo Hospitals</td>
            <td>Chennai</td>
            <td>Cardiology, Oncology</td>
            <td>Yes</td>
        </tr>
        <tr>
            <td>Fortis Healthcare</td>
            <td>Bangalore</td>
            <td>Neurology, Orthopedics</td>
            <td>Yes</td>
        </tr>
        <tr>
            <td>Manipal Hospitals</td>
            <td>Hyderabad</td>
            <td>General Surgery</td>
            <td>Yes</td>
        </tr>
        <tr>
            <td>Max Healthcare</td>
            <td>Delhi</td>
            <td>ENT, Cardiology</td>
            <td>Yes</td>
        </tr>
        <tr>
            <td>Narayana Health</td>
            <td>Bangalore</td>
            <td>Cardiac Care</td>
            <td>Yes</td>
        </tr>
    </table>

    <h2>Search Hospitals</h2>
    <form class="search-form">
        <label>City:</label>
        <input type="text" placeholder="Enter city">

        <label>Specialty:</label>
        <input type="text" placeholder="Enter specialty">

        <button type="submit">Search</button>
    </form>

    <div class="info-box">
        <p><strong>Note:</strong> Cashless treatment is subject to policy terms and hospital approval. Always carry your HealthSure policy card.</p>
    </div>

    <div class="faq-box">
        <h2>Frequently Asked Questions</h2>
        <h4>Q1: Is cashless treatment available in all hospitals?</h4>
        <p>A1: No, only in HealthSure network hospitals.</p>

        <h4>Q2: Do I need pre-authorization?</h4>
        <p>A2: Yes, planned admissions require pre-authorization.</p>

        <h4>Q3: Can I add more hospitals?</h4>
        <p>A3: Network hospitals are managed by HealthSure.</p>
    </div>

    <div class="bullet-list">
        <h2>Why Choose HealthSure Network?</h2>
        <ul>
            <li>Wide coverage across India</li>
            <li>Trusted hospital partners</li>
            <li>Fast claim settlement</li>
            <li>Dedicated support team</li>
        </ul>
    </div>

    <div class="bullet-list">
        <h2>Important Guidelines</h2>
        <ul>
            <li>Carry valid ID proof</li>
            <li>Show insurance card at admission</li>
            <li>Inform hospital TPA desk</li>
            <li>Follow discharge procedure</li>
        </ul>
    </div>

</div>

<div class="footer">
    © 2025 HealthSure Insurance Pvt Ltd. All rights reserved.
</div>

</body>
</html>
