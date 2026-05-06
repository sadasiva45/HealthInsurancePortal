<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login | HealthSure</title>
    <link rel="stylesheet" href="css/style.css">
</head>

<body>
<div class="page-wrapper">

    <!-- NAVBAR -->
    <div class="navbar">
        <h2>HealthSure</h2>
        <div>
            <a href="index.jsp">Home</a>
            <a href="login.jsp">Login</a>
        </div>
    </div>

    <!-- LOGIN SECTION -->
    <div class="login-section">
        <div class="login-box">
            <h2>User Login</h2>

           <form action="<%=request.getContextPath()%>/login" method="post"> 
                <label>Email</label>
                <input type="email" name="email" placeholder="Enter your email" required>

                <label>Password</label>
                <input type="password" name="password" placeholder="Enter your password" required>

                <button type="submit">Login</button>
            </form>

            <div class="notice">
                Unauthorized access is prohibited.
            </div>
        </div>
    </div>

    <!-- FOOTER -->
    <div class="footer">
        © 2025 HealthSure Insurance Pvt Ltd
    </div>

</div>
</body>
</html>
