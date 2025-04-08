<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head><title>Register</title></head>
<body>
    <h2>Register</h2>
    <form action="register" method="post">
        <label>Username:</label>
        <input type="text" name="userName" required><br>

        <label>Password:</label>
        <input type="password" name="password" required><br>
        
		<label>Date of Birth:</label>
		<input type="date" name="dob" required><br>

        <label>First Name:</label>
        <input type="text" name="firstName" required><br>

        <label>Last Name:</label>
        <input type="text" name="lastName" required><br>

        <label>Phone:</label>
        <input type="text" name="phone" required><br>

        <label>Email:</label>
        <input type="email" name="email" required><br>

        <label>Address:</label>
        <input type="text" name="address" required><br>

        <input type="submit" value="Register">
    </form>

    <p style="color:green">${msg}</p>
    <p style="color:red">${error}</p>
</body>
</html>
