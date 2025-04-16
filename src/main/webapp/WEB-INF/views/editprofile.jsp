
<!--
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sample edit profile</title>
</head>
<body>
<p>this is a sample edit profile page</p>
<a href="profile">back to profile</a>
</body>
</html>-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>
<%@ page import="com.example.PaymentsWebApp.Entity.UserEntity" %>
<%
    UserEntity user = (UserEntity) session.getAttribute("loggedInUser");
    if (user == null) {
        response.sendRedirect("login");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Profile</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }

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

        .container {
            margin-top: 60px;
            padding: 20px;
        }

        .form-box {
            background-color: #f9f9f9;
            padding: 20px;
            border-radius: 8px;
            width: 400px;
            margin: 0 auto;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        .form-box h2 {
            margin-bottom: 20px;
        }

        .form-box input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-top: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 6px;
        }

        .form-box button {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 6px;
            cursor: pointer;
        }

        .form-box button:hover {
            background-color: #45a049;
        }

        .back-link {
            display: block;
            text-align: center;
            margin-top: 20px;
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

<div class="container">
    <div class="form-box">
        <h2>Edit Address</h2>
        <p><strong>Current Address:</strong> <%= user.getAddress() %></p>

        <form action="editprofile" method="post">
            <label for="address">New Address:</label>
            <input type="text" id="address" name="address" placeholder="Enter new address" required>
            <button type="submit">Update</button>
        </form>

        <div class="back-link">
            <a href="profile">Back to Profile</a>
        </div>
    </div>
</div>

</body>
</html>
	

<!--
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sample edit profile</title>
</head>
<body>
<p>this is a sample edit profile page</p>
<a href="profile">back to profile</a>
</body>
</html>-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>
<%@ page import="com.example.PaymentsWebApp.Entity.UserEntity" %>
<%
    UserEntity user = (UserEntity) session.getAttribute("loggedInUser");
    if (user == null) {
        response.sendRedirect("login");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Profile</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }

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

        .container {
            margin-top: 60px;
            padding: 20px;
        }

        .form-box {
            background-color: #f9f9f9;
            padding: 20px;
            border-radius: 8px;
            width: 400px;
            margin: 0 auto;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        .form-box h2 {
            margin-bottom: 20px;
        }

        .form-box input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-top: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 6px;
        }

        .form-box button {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 6px;
            cursor: pointer;
        }

        .form-box button:hover {
            background-color: #45a049;
        }

        .back-link {
            display: block;
            text-align: center;
            margin-top: 20px;
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

<div class="container">
    <div class="form-box">
        <h2>Edit Address</h2>
        <p><strong>Current Address:</strong> <%= user.getAddress() %></p>

        <form action="editprofile" method="post">
            <label for="address">New Address:</label>
            <input type="text" id="address" name="address" placeholder="Enter new address" required>
            <button type="submit">Update</button>
        </form>

        <div class="back-link">
            <a href="profile">Back to Profile</a>
        </div>
    </div>
</div>

</body>
</html>
	
