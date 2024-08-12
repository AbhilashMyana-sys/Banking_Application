<%@ page import="java.util.List" %>
<%@ page import="register.Transaction" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Transaction History</title>
    <style>body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        margin: 0;
        padding: 0;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        height: 100vh;
        background-color: #ffffff;
        position: relative;
        overflow: hidden;
    }
    
    body::before {
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-image: url(bank-full-pic.jpeg); /* Path to your background image */
        background-size: cover;
        background-position: center;
        opacity: 0.3; /* Low transparency */
        z-index: -1;
    }
    
    .header-strip {
        background-color: #ffffff; /* White background */
        padding: 10px 0;
        text-align: center;
        color: #333; /* Dark text for visibility */
        width: 100%;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }
    
    h1 {
        margin: 0;
        color: #000; /* Black text color */
    }
    
    h2 {
        text-align: center;
        margin-bottom: 25px;
        color: #000; /* Black text color */
        animation: fadeInUp 1s ease-in-out;
    }
    
    form {
        width: 300px;
        padding: 20px;
        border-radius: 8px;
        background-color: #ffffff; /* White background */
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        position: relative;
        z-index: 1; /* Ensure form is above the background */
    }
    
    input[type="submit"] {
        width: 100%;
        padding: 10px;
        background-color: #000; /* Black button background */
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }
    
    input[type="submit"]:hover {
        font-weight: bold;
        font-size: 18px;
        background-color: #333; /* Slightly darker on hover */
    }
    
    table {
        width: 80%;
        margin: auto;
        border-collapse: collapse;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        background-color: #ffffff; /* White background */
        animation: fadeIn ease-in-out;
        position: relative;
        z-index: 1; /* Ensure table is above the background */
    }
    
    th, td {
        border: 1px solid #ddd;
        padding: 12px;
        text-align: left;
    }
    
    th {
        background-color: #333; /* Dark background */
        color: white;
        animation: fadeInLeft 1s ease-in-out;
    }
    
    tr:nth-child(even) {
        background-color: #f2f2f2; /* Light gray background for even rows */
    }
    
    .tile {
        margin: auto;
        text-align: center;
    }
    
    img {
        max-width: 200px;
        height: auto;
    }
    
    @keyframes fadeIn {
        from {
            opacity: 0;
        }
        to {
            opacity: 1;
        }
    }
    
    @keyframes fadeInUp {
        from {
            opacity: 0;
            transform: translateY(50px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }
    
    @keyframes fadeInLeft {
        from {
            opacity: 0;
            transform: translateX(-50px);
        }
        to {
            opacity: 1;
            transform: translateX(0);
        }
    }
    
    </style>
    
</head>

<body>
<div class="header-strip">
        <h1 style="margin-left:auto; margin-right:auto; width:200px;">VelTech Bank</h1>
      </div>
      <div class="tile">
        <img src="ADD-CUS.jpg" alt="Transaction History">
    </div>
<h2>Transaction History</h2>

<% 
List<Transaction> transactionList = (List<Transaction>) request.getAttribute("transactions");
System.out.println("Transaction list size in JSP: " + (transactionList != null ? transactionList.size() : "null"));
if (transactionList != null && !transactionList.isEmpty()) {
%>
    <table border="1">
        <thead>
            <tr>
                <th>Account Number</th>
                <th>Amount</th>
                <th>Transaction Type</th>
                <th>Transaction Time</th>
            </tr>
        </thead>
        <tbody>
            <% for (Transaction transaction : transactionList) { %>
                <tr>
                    <td><%= transaction.getAccountNumber() %></td>
                    <td><%= transaction.getAmount() %></td>
                    <td><%= transaction.getTransactionType() %></td>
                    <td><%= transaction.getTransactionTime() %></td>
                </tr>
            <% } %>
        </tbody>
    </table>
<% } else { %>
    <p>No transactions found.</p>
<% } %>

<br>
<form action="MiniServlet" method="get">
    <input type="submit" value="Print in PDF">
</form>
</body>
</html>
