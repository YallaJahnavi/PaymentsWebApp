<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head><title>Login</title></head>
<body>
    <h2>Login</h2>
    <form action="login" method="post">
        <label>Username:</label>
        <input type="text" name="username" required><br>
        <label>Password:</label>
        <input type="password" name="password" required><br>
        <input type="submit" value="Login">
    </form>
    <p>Not registered? <a href="register">Register here</a></p>
    <!--  sucess or failure msgs-->
    <p style="color:red">${error}</p>
    <p style="color:green">${msg}</p>
    
</body>
</html>