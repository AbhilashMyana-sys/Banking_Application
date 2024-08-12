<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="register.AccountDetails" %> 
<%@ page import="java.math.BigDecimal" %>
<html>
<head>
    <title>DepositSuccess</title>
</head>
<style>
    body {
 font-family: Arial, sans-serif;
 margin: 0;
 padding: 0;
 user-select: none;
 text-align: center;
 position: relative; /* Make sure the body is positioned relative */
 overflow: hidden; /* Prevent scrollbars if the overlay goes out of bounds */
}

body::before {
 content: '';
 position: absolute;
 top: 0;
 left: 0;
 width: 100%;
 height: 100%;
 background-image: url(money-deposit.jpeg); /* Ensure the URL is correct */
 background-size: cover; /* Cover the entire viewport */
 background-position: center; /* Center the image */
 background-repeat: no-repeat; /* Prevent repeating the image */
 opacity: 0.2; /* Adjust the opacity value for transparency */
 z-index: -2; /* Ensure it's behind the overlay and content */
 background-attachment: fixed; /* Keep the background fixed during scrolling */
}

body::after {
 content: '';
 position: absolute;
 top: 0;
 left: 0;
 width: 100%;
 height: 100%;
 background: rgba(0, 0, 0, 0.5); /* Dark overlay with 50% opacity */
 z-index: -1; /* Ensure it's behind the content but above the background image */
}

main {
 position: relative; /* Make sure the main content is positioned relative */
 z-index: 1; /* Ensure content is above the background and overlay */
 color: white; /* White text color for better contrast */
 padding: 20px;
}

img {
 max-width: 30%;
 height: auto;
}

button {
 margin-top: 20px; /* Adjust margin to make space from other elements */
 background-color: green;	
 color: white;
 padding: 10px 20px;
 border: none;
 border-radius: 5px;
 cursor: pointer;
 transition: background-color 0.3s ease, color 0.3s ease, font-size 0.3s ease, font-weight 0.3s ease;
}

button a {
 text-decoration: none; 
 color: white;
}

button:hover {
 font-size: 18px;
 font-weight: bold;
 animation: pulse 1s infinite;
}

@keyframes pulse {
 0% {
     transform: scale(1);
     box-shadow: 0 0 0 rgba(0, 0, 0, 0.5);
 }
 50% {
     transform: scale(1.1);
     box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
 }
 100% {
     transform: scale(1);
     box-shadow: 0 0 0 rgba(0, 0, 0, 0.5);
 }
}

.return-symbol {
 font-size: 18px;
 margin-right: 5px;
}

 </style>

<body>
<%
	AccountDetails accountDetails = (AccountDetails) request.getAttribute("accountDetails");
	BigDecimal amount = (BigDecimal) request.getSession().getAttribute("amount1");
   System.out.println("Amount in JSP: " + amount);
   if (accountDetails != null) {
    %>
    <img src="deposit-suc-cust.gif">
    <h2>Deposit Success</h2>
    <p><strong>Current Balance:</strong> <%= accountDetails.getBalance() %></p>	
	<p>You have successfully deposited <%= amount %> Rs to your account.</p>
    
    <button><a href="<%= request.getContextPath() %>/CustomerDashboardServlet">Return To DashBoard</a></button>
<%
        } else {
    %>
        <p class="error">Account details not available.</p>
    <%
        }
    %>
</body>
</html>
