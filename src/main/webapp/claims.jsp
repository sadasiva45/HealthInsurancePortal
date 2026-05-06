<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Claims | HealthSure Insurance</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="css/style.css">

    <style>
        /* CLAIMS PAGE STYLING */
        .claims-container {
            max-width: 1000px;
            margin: 30px auto;
            padding: 35px;
            background: #fff;
            border-radius: 12px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.08);
        }

        .claims-container h1, 
        .claims-container h2, 
        .claims-container h3 {
            color: #0b3c5d;
            margin-bottom: 20px;
        }

        .claims-container p {
            color: #444;
            line-height: 1.6;
            margin-bottom: 15px;
        }

        .claim-form label {
            display: block;
            margin-bottom: 6px;
            font-weight: 500;
        }

        .claim-form input, 
        .claim-form select, 
        .claim-form textarea {
            width: 100%;
            padding: 12px;
            margin-bottom: 15px;
            border-radius: 6px;
            border: 1px solid #ccc;
        }

        .claim-form button {
            padding: 12px 20px;
            border: none;
            border-radius: 6px;
            background: linear-gradient(90deg, #0b3c8a, #1296db);
            color: white;
            font-size: 16px;
            cursor: pointer;
        }

        .claim-form button:hover {
            opacity: 0.95;
        }

        .info-box, .faq-box, .why-choose {
            background: #eef4ff;
            padding: 20px;
            border-left: 5px solid #0b3c5d;
            margin: 20px 0;
            border-radius: 6px;
        }

        .faq-box h4 {
            margin-bottom: 8px;
        }

        .faq-box p {
            margin-bottom: 12px;
        }

        .why-choose ul {
            margin-left: 20px;
            list-style-type: disc;
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

<div class="claims-container">

    <h1>Insurance Claims</h1>
    <p>HealthSure Insurance allows policy holders to submit and track claims easily using this online portal.</p>

    <% 
        String policyNumber = "HS-CLAIM-10293";
        String claimStatus = "No Active Claims";
        String claimType = "Cashless / Reimbursement";
    %>

    <p>
        <strong>Policy Number:</strong> <%= policyNumber %><br>
        <strong>Claim Status:</strong> <%= claimStatus %><br>
        <strong>Claim Type:</strong> <%= claimType %>
    </p>

    <!-- CLAIM FORM -->
    <div class="claim-section">
        <h2>Submit New Claim</h2>

        <!-- ✅ ACTION FIXED -->
        <form class="claim-form" method="post" action="submitClaim">

            <label>Policy Number</label>
            <input type="text" name="policy_number" required>

            <label>Patient Name</label>
            <input type="text" name="patient" required>

            <label>Hospital Name</label>
            <input type="text" name="hospital" required>

            <label>Hospital City</label>
            <input type="text" name="city">

            <label>Claim Type</label>
            <select name="claimType">
                <option>Cashless</option>
                <option>Reimbursement</option>
            </select>

            <label>Claim Amount</label>
            <input type="number" name="claim_amount" required>

            <label>Admission Date</label>
            <input type="date" name="treatment_date" required>

            <label>Discharge Date</label>
            <input type="date" name="dischargeDate">

            <label>Description</label>
            <textarea rows="4" name="claim_reason" required></textarea>

            <button type="submit">Submit Claim</button>
        </form>
    </div>

    <!-- IMPORTANT INFO -->
    <div class="info-box">
        <h3>Important Information</h3>
        <ul>
            <li>Cashless claims require pre-authorization</li>
            <li>Reimbursement claims must be submitted within 30 days</li>
            <li>All documents must be valid and verified</li>
        </ul>
    </div>

    <!-- CLAIM PROCESS -->
    <div class="claim-section">
        <h2>Claim Process</h2>
        <ol>
            <li>Hospital admission</li>
            <li>Claim intimation</li>
            <li>Document submission</li>
            <li>Verification</li>
            <li>Approval or rejection</li>
        </ol>
    </div>

    <!-- FAQ -->
    <div class="faq-box">
        <h2>Frequently Asked Questions</h2>

        <h4>Q1: How long does approval take?</h4>
        <p>A: Usually 7–10 working days.</p>

        <h4>Q2: Can I cancel a claim?</h4>
        <p>A: Yes, before approval.</p>

        <h4>Q3: What documents are required?</h4>
        <p>A: Bills, discharge summary, prescriptions.</p>
    </div>

    <!-- WHY CHOOSE US -->
    <div class="why-choose">
        <h2>Why Choose HealthSure Claims?</h2>
        <ul>
            <li>Fast processing</li>
            <li>Transparent system</li>
            <li>Online tracking</li>
            <li>Dedicated support</li>
        </ul>
    </div>

</div>

<div class="footer">
    © 2025 HealthSure Insurance Pvt Ltd. All rights reserved.
</div>

</body>
</html>
