<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Support | HealthSure</title>
<link rel="stylesheet" href="css/style.css">

<style>
.support-box{
    background:#ffffff;
    padding:25px;
    margin-top:20px;
    box-shadow:0 0 8px rgba(0,0,0,0.1);
}
.support-box input,textarea{
    width:100%;
    padding:10px;
    margin-bottom:10px;
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

<h1>Customer Support</h1>

<%
String supportEmail="support@healthsure.com";
String supportPhone="1800-123-456";
%>

<p>Email: <strong><%=supportEmail%></strong></p>
<p>Phone: <strong><%=supportPhone%></strong></p>

<div class="support-box">
<h2>Contact Us</h2>

<%
if ("1".equals(request.getParameter("success"))) {
%>
<p style="color:green; text-align:center;">Your query submitted successfully!</p>
<%
}
%>

<form action="<%=request.getContextPath()%>/SupportServlet" method="post">

<label>Name</label>
<input type="text" name="name" required>

<label>Email</label>
<input type="email" name="email" required>

<label>Query</label>
<textarea name="query" rows="5" required></textarea>

<input type="submit" value="Submit">

</form>
</div>

<div class="support-box">
<h2>Support Guidelines</h2>
<ul>
<li>Queries responded within 24 hours</li>
<li>Claims related issues prioritized</li>
<li>Policy verification required</li>
</ul>
</div>

</div>

<div class="footer">
© 2025 HealthSure Insurance Pvt Ltd
</div>

</body>
</html>