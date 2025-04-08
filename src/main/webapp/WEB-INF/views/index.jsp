<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

<!-- Fixed Navbar -->
<div class="navbar">
    <a href="profile">Profile</a>
    <a href="transactions">Transactions History</a>
    <a href="bankstatement">Bank Statement</a>
    <a href="logout">Logout</a>
</div>

<!-- Page Content -->
<div class="content">
    <h2>Welcome User</h2>
    <p>This is your home page.</p>
</div>

</body>
</html>