<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
    <title>Submit Claim | HealthSure Insurance</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap');

        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(135deg, #0b3c8a, #1296db);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .card {
            background: #fff;
            border-radius: 12px;
            padding: 40px 35px;
            width: 400px;
            box-shadow: 0 12px 25px rgba(0,0,0,0.2);
        }

        .card h2 {
            text-align: center;
            color: #0b3c5d;
            margin-bottom: 25px;
        }

        .card p {
            text-align: center;
            color: #555;
            font-size: 14px;
            margin-bottom: 25px;
        }

        .form-group {
            margin-bottom: 18px;
        }
        .form-group label {
            display: block;
            font-weight: 500;
            margin-bottom: 5px;
        }
        .form-group input, .form-group textarea {
            width: 100%;
            padding: 12px 15px;
            border-radius: 8px;
            border: 1px solid #ccc;
            font-size: 15px;
        }
        .form-group textarea { resize: vertical; }

        button {
            width: 100%;
            padding: 12px;
            background: linear-gradient(90deg, #0b3c8a, #1296db);
            color: white;
            font-size: 16px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            margin-top: 10px;
            transition: 0.3s;
        }
        button:hover { opacity: 0.9; }

        .alert {
            padding: 12px;
            border-radius: 6px;
            margin-bottom: 15px;
            font-size: 14px;
            text-align: center;
            color: #fff;
        }
        .alert-error { background: #e74c3c; }
        .alert-success { background: #2ecc71; }

        @media(max-width: 450px){
            .card { width: 90%; padding: 30px; }
        }
    </style>
</head>
<body>

<div class="card">
    <h2>Submit Claim</h2>
    <p>Fill the form to submit your insurance claim</p>

    <%-- Success / Error Messages --%>
    <% 
        String error = request.getParameter("error");
        String success = request.getParameter("success");
        if("1".equals(error)) { %>
            <div class="alert alert-error">Error submitting claim. Please check the form fields.</div>
    <% } else if("1".equals(success)) { %>
            <div class="alert alert-success">Claim submitted successfully!</div>
    <% } %>

    <form method="post" action="submitClaim">
        <div class="form-group">
            <label>Hospital Name</label>
            <input type="text" name="hospital" placeholder="Enter hospital name" required>
        </div>

        <div class="form-group">
            <label>Claim Amount</label>
            <input type="number" name="claim_amount" placeholder="Enter claim amount" step="0.01" required>
        </div>

        <div class="form-group">
            <label>Treatment Date</label>
            <input type="date" name="treatment_date" required>
        </div>

        <div class="form-group">
            <label>Description</label>
            <textarea name="claim_reason" rows="4" placeholder="Enter description" required></textarea>
        </div>

        <button type="submit">Submit Claim</button>
    </form>
</div>

</body>
</html>