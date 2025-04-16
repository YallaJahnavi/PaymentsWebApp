
<!--<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sample profile</title>
</head>
<body>
<p>this is a sample profile page</p>
    <a href="editprofile">edit profile</a>
    <a href="index">back to home</a>
    
</body>

</html>-->
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="com.example.PaymentsWebApp.Entity.UserEntity" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
    <title>User Profile</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 20px;
        }
        .profile-info {
            background-color: #f2f2f2;
            padding: 15px;
            border-radius: 8px;
            max-width: 500px;
        }
        .back-link {
            margin-top: 20px;
            display: inline-block;
            text-decoration: none;
            color: #007bff;
        }
        .back-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<%
    UserEntity user = (UserEntity) session.getAttribute("loggedInUser");
    if (user != null) {
%>
<div class="profile-info">
    <h2>Hi, <%= user.getUserName() %>!</h2>
    <p><strong>First Name:</strong> <%= user.getFirstName() %></p>
    <p><strong>Last Name:</strong> <%= user.getLastName() %></p>
    <p><strong>Email:</strong> <%= user.getEmail() %></p>
    <p><strong>Phone:</strong> <%= user.getPhone() %></p>
    <p>
        <strong>Address:</strong> <%= user.getAddress() %>
        <a href="editprofile" style="margin-left: 10px; font-size: 0.9em; text-decoration: none;">Edit</a>
    </p>
    <p><strong>Date of Birth:</strong> <%= user.getDob() %></p>
</div>
<a href="index" class="link">Back to Home</a>

<%
    } else {
%>
    <p>You are not logged in. <a href="login">Login here</a></p>
<%
    }
%>

</body>
</html>
