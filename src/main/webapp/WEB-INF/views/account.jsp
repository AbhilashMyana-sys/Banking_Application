<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="register.AccountDetails" %>

<html>
<head>
    <title>Account Details</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }
        
        body {
            font-family: 'Open Sans', sans-serif;
            line-height: 1.6;
            color: #333;
            background-color: #fff; /* White background */
            background-image: url(account-details.jpeg);
                    background-size: cover;
                    background-position: center;
                    background-repeat: no-repeat;
                    opacity: 2; /* Adjust the opacity value */
                    z-index: -1; /* Ensure it's behind other content */
        }
        /* Header Styles */
        .header-strip {
            background-color: #f7f7f7; /* Light grey background */
            padding: 20px;
            text-align: center;
            color: #333;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
            position: relative;
        }
        
        .header-strip h1 {
            font-size: 24px;
            font-weight: bold;
            margin: 0;
        }
        
        .logout-button {
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            right: 20px;
            background-color: #ff0000; /* Grey background */
            color: #333;
            border: none;
            padding: 8px 16px;
            border-radius: 4px;
            cursor: pointer;
        }
        
        /* Container Styles */
        .container {
            max-width: 800px;
            margin: 40px auto;
            padding: 20px;
            background-color: #fff; /* White background */
            border-radius: 8px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.3);
        }
        
        /* Detail Box Styles */
        .detail-box {
            margin-bottom: 20px;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #f9f9f9; /* Light grey background */
        }
        
        .detail-label {
            font-weight: bold;
            color: #666;
            margin-bottom: 5px;
        }
        
        .detail-value {
            color: #333;
        }
        
        /* Input Styles */
        input[type="text"], input[type="email"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
            background-color: #f7f7f7; /* Light grey background */
        }
        
        input[type="text"]:focus, input[type="email"]:focus, input[type="password"]:focus {
            border-color: #333;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }
        
        /* Footer Styles */
        .footer {
            background-color: #333; /* Dark grey background */
            color: #fff;
            padding: 10px;
            text-align: center;
            clear: both;
        }
        
        .footer p {
            margin: 0;
        }
        </style>
        
</head>
<body>
    <div class="header-strip">
        <h1>VelTech Bank</h1>
    </div>
    <div class="tile">
        <img src="acc-det.png" alt="Account Details">
    </div>
    <h2>Account Details</h2>
    <div class="container">
        <%
            AccountDetails accountDetails = (AccountDetails) request.getAttribute("accountDetails");
            if (accountDetails != null) {
        %>
            <div class="detail-box">
                <div class="detail-label">Account Number:</div>
                <div class="detail-value"><%= accountDetails.getAccountNumber() %></div>
            </div>
            <div class="detail-box">
                <div class="detail-label">Account Holder Name:</div>
                <div class="detail-value"><%= accountDetails.getFullName() %></div>
            </div>
            <div class="detail-box">
                <div class="detail-label">Account Type:</div>
                <div class="detail-value"><%= accountDetails.getAccount() %></div>
            </div>
            <div class="detail-box">
                <div class="detail-label">Account Holder Address:</div>
                <div class="detail-value"><%= accountDetails.getAddress() %></div>
            </div>
            <div class="detail-box">
                <div class="detail-label">Account Holder Email-Id:</div>
                <div class="detail-value"><%= accountDetails.getEmailId() %></div>
            </div>
            <div class="detail-box">
                <div class="detail-label">Account Holder Phone Number:</div>
                <div class="detail-value"><%= accountDetails.getPhone() %></div>
            </div>
            <div class="detail-box">
                <div class="detail-label">Account Balance:</div>
                <div class="detail-value"><%= accountDetails.getBalance() %></div>
            </div>
            <div class="detail-box">
                <div class="detail-label">Account Holder Dob:</div>
                <div class="detail-value"><%= accountDetails.getDob() %></div>
            </div>
        <%
            } else {
        %>
            <p class="error">Account details not available.</p>
        <%
            }
        %>
    </div>
</body>
</html>
