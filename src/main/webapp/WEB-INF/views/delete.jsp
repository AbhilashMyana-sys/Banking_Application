<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Account</title>
    <style>body {
        font-family: 'Arial', sans-serif;
        justify-content: center;
        align-items: center;
        height: 100vh;
        text-align: center; 
        background: url(delete-account.jpeg);
    }
    
    body::before {
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background-color: rgba(255, 255, 255, 0.6); /* White overlay with low transparency */
        z-index: -1; /* Place the overlay behind the content */
    }
    
    h2 {
        color: black;
        text-align: center;
        padding-top: 150px;
        margin-top: -120px;
    }
    
    form p {
        text-align: center;
    }
    
    form {       
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        width: 600px;
        margin: auto;
        color: black;
        border: 2px solid black;  
        background-color: rgba(255, 255, 255, 0.8); /* Add a slight transparency to the form background */
        position: relative; /* Ensure form content is above the overlay */
        z-index: 1;
    }
    
    button[type="submit"] {
        background-color: red; /* Button color */
        color: white;
        padding: 10px 15px;
        align-items: center;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        width: 100%;        
        transition: background-color 0.3s ease;
    }
    
    button[type="submit"]:hover {
        font-size: 18px;
        font-weight: bold;
    }
    
    .tile {
        margin: auto; /* Center the entire tile horizontally */
        text-align: center; /* Center the contents (the image) within the tile */
    }
    
    img {
        max-width: 10%;
        height: auto;
    }
    
    .header-strip {
        background-color: rgba(238, 225, 225, 0.5);
        padding: 10px 0;
        margin-top: 0px;
        text-align: center; /* Center the text */
        color: black;
    }
    
    h1 {
        margin: 0 auto; /* Center the h1 element */
    }
    
    /* Class to center the "Veltech Bank" text */
    .veltech-bank {
        text-align: center;
    }
    
    </style>
    
</head>
<body>
    <div class="header-strip">
        <h1>VelTech Bank</h1>
    </div>
    <div class="tile">
        <img src="delete-cus.png" alt="Add Customer">
    </div>

    <h2>Delete Account</h2>

    <form action="<%= request.getContextPath() %>/DeleteServlet" method="post">
        <p>Are you sure you want to close your account?</p>
        <button type="submit">Yes, Close Account</button>
    </form>
</body>
</html>
