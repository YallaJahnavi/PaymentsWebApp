<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>
    <%@ page import="com.example.PaymentsWebApp.Entity.UserEntity" %>
<!DOCTYPE html>
<html>
<head>
    <title>Home Page</title>
    <style>
        /* Fixed Navbar Styling */
        .navbar {
            position: fixed;
            top: 0;
            width: 100%;
            background-color: #333;
            overflow: hidden;
        }
        .navbar a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }
        .navbar a:hover {
            background-color: #ddd;
            color: black;
        }
        .content {
            margin-top: 50px; /* Space below navbar */
            padding: 20px;
        }
    </style>
</head>
<body>

<div class="navbar">
    <a href="profile">Profile</a>
    <a href="viewtransactions">Transactions History</a>
    <a href="bankstatement">Bank Statement</a>
    <a href="logout">Logout</a>
</div>


<div class="content">
    <!-- <h2>Welcome User</h2>
    <p>This is your home page.</p>-->
    <div class="content">
    <%
        UserEntity loggedInUser = (UserEntity) session.getAttribute("loggedInUser");
        if (loggedInUser != null) {
    %>
        <h2>Welcome, <%= loggedInUser.getFirstName() + loggedInUser.getLastName() %>!</h2>
        <p>This is your home page.</p>
    <%
        } else {
    %>
        <h2>Welcome Guest</h2>
        <p>Please <a href="login">log in</a> to access your account.</p>
    <%
        }
    %>
</div>
    
</div>

</body>
</html>
