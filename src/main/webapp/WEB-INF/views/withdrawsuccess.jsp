<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="register.AccountDetails" %>
<%@ page import="java.math.BigDecimal" %>
<html>
<head>
    <title>Withdraw Success</title>
</head>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;       
        user-select: none;
        text-align: center;
        position: relative;
        overflow: hidden;
        min-height: 100vh;
        color: #333; /* Dark gray text color for contrast */
    }
    
    body::before {
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-image: url(withdraw-sucessssss.jpeg); /* Path to your background image */
        background-size: cover;
        background-position: center;
        opacity: 0.3; /* Low transparency */
        z-index: -1;
    }
    
    img {
        max-width: 30%;
        height: auto;
        z-index: 1; /* Ensure the image is above the background */
        position: relative;
    }
    
    button {
        margin-top: 2px;
        background-color: green;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease, color 0.3s ease, font-size 0.3s ease, font-weight 0.3s ease;
        z-index: 1; /* Ensure the button is above the background */
        position: relative;
    }
    
    button a {
        text-decoration: none; 
        color: white;
    }
    
    button:hover {
        font-size: 18px;
        font-weight: bold;
    }
    
    
        
    </style>
    
<body>
<%
    AccountDetails accountDetails = (AccountDetails) request.getAttribute("accountDetails");
	BigDecimal amount = (BigDecimal) request.getSession().getAttribute("amount");
    System.out.println("Amount in JSP: " + amount);
    if (accountDetails != null) {
%>
<img src="withdraw-suc.jpg">
<h2>Withdraw Success</h2>

<p><strong>Current Balance:</strong> <%= accountDetails.getBalance() %></p>
<p>You have successfully withdrawn <%= amount %> Rs from your account.</p>

<button><a href="<%= request.getContextPath() %>/CustomerDashboardServlet">Return To Dashboard</a></button>
<%
    } else {
%>
<p class="error">Account details not available.</p>
<%
    }
%>
</body>
</html>
