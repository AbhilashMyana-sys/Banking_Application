<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #fff; /* White background color */
            background-size: cover;
            background-position: center;
            justify-content: center;
            align-items: center;
            height: 100vh;
            display: flex;
            flex-direction: column;
            margin: 0;
            padding: 0;
            background-image: url(bank-full-pic.jpeg); /* Ensure the URL is correct */
            background-size: cover; /* Cover the entire viewport */
            background-position: center; /* Center the image */
            background-repeat: no-repeat; /* Prevent repeating the image */
            height: 100vh; /* Ensure the body takes the full viewport height */
            background-attachment: fixed; /* Keep the background fixed during scrolling */
        }
        
        h2 {
            text-align: center;
            padding-top: 30px;
            color: #666; /* Light grey text color */
            margin-bottom: 20px;
            opacity: 0;
            animation: fadeIn 1s forwards;
        }
        
        @keyframes fadeIn {
            100% {
                opacity: 1;
            }
        }
        
        form {
            background-color: #fff; /* White background color */
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            width: 600px;
            color: #333; /* Dark grey text color */
            margin: auto;
            opacity: 0;
            animation: slideIn 1s forwards;
            margin-top: -20px; /* Reduce the gap between form and heading */
        }
        
        @keyframes slideIn {
            100% {
                opacity: 1;
            }
        }
        
        label {
            display: block;
            margin-bottom: 10px;
            color: #666; /* Light grey text color for labels */
        }
        
        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px; /* Add space between inputs */
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box; /* Ensure padding and border are included in width */
            transition: border-color 0.3s ease;
            background-color: #f7f7f7; /* Light grey background color for input fields */
            color: #666; /* Light grey text color for input fields */
        }
        
        input[type="text"]:focus,
        input[type="password"]:focus {
            border-color: #666; /* Light grey border color on focus */
        }
        
        input[type="submit"] {
            background-color: #333; /* Dark grey background color for submit button */
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            transition: background-color 0.3s ease;
            margin-top: 20px; /* Add space between submit button and inputs */
        }
        
        input[type="submit"]:hover {
            background-color: #4CAF50; /* Green background color on hover */
        }
        
        input[type="submit"]:active {
            transform: translateY(2px); /* Push the button down slightly when clicked */
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2); /* Add a shadow when clicked */
        }
        
        .error-message {
            color: red;
            font-size: 14px;
            margin-top: 5px;
            opacity: 0;
            animation: fadeIn 1s forwards;
        }
        
        @keyframes fadeIn {
            100% {
                opacity: 1;
            }
        }
        
        p {
            text-align: center;
            color: red;
            font-size: 20px;
            opacity: 0;
            animation: fadeIn 1s forwards;
            margin-top: 10px;
        }
        
        @keyframes fadeIn {
            100% {
                opacity: 1;
            }
        }
        </style>
</head>
<body style="background-image: url('/onlinebank.jpg'); background-size: cover; background-position: center;">


<%
    if (request.getSession().getAttribute("loggedIn") != null && (boolean) request.getSession().getAttribute("loggedIn")) {
%>
    <h1>Welcome to your Dashboard, <%= request.getSession().getAttribute("accountNumber") %>!</h1>

    <form method="post" action="<%= request.getContextPath() %>/CustomerServlet">
        <input type="submit" name="account" value="Account">
        <input type="submit" name="transactions" value="Transactions">
        <input type="submit" name="deposit" value="Deposit">
        <input type="submit" name="withdraw" value="Withdraw">
        <input type="submit" name="delete" value="Delete">
        <input type="submit" name="logout" value="Logout">
    </form>
    <!-- Add dashboard content here -->
<%
    } else {
%>
    <p>You are not logged in. Please log in to access the dashboard.</p>
<%
    }
%>
</body>
</html>
