<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>
<%@ page import="java.util.List" %>
<%@ page import="com.example.PaymentsWebApp.Entity.TransactionEntity" %>
<%@ page import="com.example.PaymentsWebApp.Entity.UserEntity" %>

<!DOCTYPE html>
<html>
<head>
    <title>Transactions History</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 30px;
            background-color: #f5f5f5;
        }

        h2 {
            color: #333;
            margin-bottom: 20px;
        }

        table {
            width: 90%;
            border-collapse: collapse;
            margin: 20px 0;
            background-color: white;
        }

        th, td {
            padding: 12px 15px;
            border: 1px solid #ccc;
            text-align: center;
        }

        th {
            background-color: #333;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        .no-transactions {
            color: #888;
            font-size: 16px;
        }
    </style>
</head>
<body>

<%
    UserEntity loggedInUser = (UserEntity) session.getAttribute("loggedInUser");
    List<TransactionEntity> transactions = (List<TransactionEntity>) request.getAttribute("transactions");
%>

<h2>
    Transactions History
    <%
        if (loggedInUser != null) {
            out.print("for " + loggedInUser.getFirstName() + " " + loggedInUser.getLastName());
        }
    %>
</h2>

<%
    if (transactions != null && !transactions.isEmpty()) {
%>
    <table>
        <tr>
            <th>Transaction ID</th>
            <th>Amount</th>
            <th>Date</th>
            <th>Type</th>
        </tr>
        <% for (TransactionEntity txn : transactions) { %>
            <tr>
                <td><%= txn.getTransactionId() %></td>
                <td><%= txn.getAmount() %></td>
                <td><%= txn.getTransactionDate() %></td>
                <td><%= txn.getTransactionType() %></td>
            </tr>
        <% } %>
    </table>
<%
    } else {
%>
    <p class="no-transactions">No transactions found.</p>
<%
    }
%>

</body>
</html>