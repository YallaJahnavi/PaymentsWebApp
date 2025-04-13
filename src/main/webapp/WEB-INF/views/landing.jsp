<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Payments Web App</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #74ebd5, #acb6e5);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            animation: fadeIn 1.5s ease-in;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .container {
            background: white;
            padding: 40px 60px;
            border-radius: 16px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
            text-align: center;
            animation: scaleIn 1.2s ease-in-out;
        }

        @keyframes scaleIn {
            0% { transform: scale(0.9); opacity: 0; }
            100% { transform: scale(1); opacity: 1; }
        }

        h1 {
            font-size: 36px;
            color: #333;
            margin-bottom: 30px;
        }

        .btn {
            display: inline-block;
            margin: 10px;
            padding: 12px 28px;
            font-size: 18px;
            color: #fff;
            background-color: #0077cc;
            border: none;
            border-radius: 8px;
            text-decoration: none;
            transition: all 0.3s ease;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }

        .btn:hover {
            background-color: #005fa3;
            transform: translateY(-2px);
            box-shadow: 0 6px 16px rgba(0, 0, 0, 0.2);
        }

        @media screen and (max-width: 600px) {
            .container {
                padding: 30px 20px;
            }

            h1 {
                font-size: 28px;
            }

            .btn {
                padding: 10px 20px;
                font-size: 16px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome to Payments Web App</h1>
        <a href="register" class="btn">Register</a>
        <a href="login" class="btn">Login</a>
    </div>
</body>
</html>
