<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Login</title>
</head>

<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #fff; /* White background color */
        user-select: none;
        background-image: url(bank-full-pic.jpeg); /* Ensure the URL is correct */
        background-size: cover; /* Cover the entire viewport */
        background-position: center; /* Center the image */
        background-repeat: no-repeat; /* Prevent repeating the image */
        height: 100vh; /* Ensure the body takes the full viewport height */
        background-attachment: fixed; /* Keep the background fixed during scrolling */
    }
    
    .header-strip {
                z-index: -1; /* Ensure it's behind other content */
        padding: 35px 0;
        text-align: center;
        color: #ffffff; /* Dark grey text color */
    }
    
    h1 {
        margin-left: 50px;
        margin-top: 0;
        opacity: 1;
        font-weight: bold;
    }
    
    h2 {
        text-align: center;
        color: #333; /* Dark grey text color */
        margin-top: -100px; /* Initially hidden */
        opacity: 0;
        animation: slideIn 1s forwards; /* Slide in from top */
    }
    
    @keyframes slideIn {
        100% {
            margin-top: 0;
            opacity: 1;
        }
    }
    
    form {
        width: 600px;
        background-color: #fff; /* White background color */
        margin: 0 auto;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        margin-top: 70px;
        transition: background-color 0.3s ease, box-shadow 0.3s ease, border-radius 0.3s ease; /* Add transition effect */
    }
    
    form:hover {
        background-color: #fff; /* White background color on hover */
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.2); /* Add shadow on hover */
        border-radius: 10px; /* Rounded corners on hover */
    }
    
    label {
        display: block;
        margin-bottom: 5px;
        color: #333; /* Dark grey text color */
        font-weight: bold;
    }
    
    input[type="text"],
    input[type="password"] {
        width: calc(100% - 20px);
        padding: 10px;
        color: #333; /* Dark grey text color */
        margin-bottom: 15px;
        border: 2px solid #ccc; /* Grey border color */
        border-radius: 5px;
        transition: border-color 0.3s ease; /* Add transition effect */
    }
    
    input[type="text"]:focus,
    input[type="password"]:focus {
        border-color: #666; /* Dark grey border color on focus */
    }
    
    input[type="text"]:hover,
    input[type="password"]:hover {
        border-color: #aaa; /* Grey border color on hover */
    }
    
    button[type="submit"] {
        width: 100%;
        padding: 10px;
        background-color: #333; /* Dark grey background color */
        color: #fff; /* White text color */
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease; /* Add transition effect */
    }
    
    button[type="submit"]:hover {
        background-color: #555; /* Dark grey background color on hover */
        font-weight: bold;
        font-size: 18px;
    }
    
    </style>
    
<body>
<div class="header-strip">
        <h1>VelTech Bank</h1>
    </div>

    <form action="<%= request.getContextPath() %>/AdminLoginServlet" method="post">
    <h2>Admin Login</h2>
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required><br>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br>

        <button type="submit">Login</button>
    </form>
</body>
</html>