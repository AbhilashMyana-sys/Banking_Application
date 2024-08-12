<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Customer</title>
    <style>
        body {
     font-family: Arial, sans-serif;
     margin: 0;
     padding: 0;
     user-select: none;
     background-color: #ecf0f1; /* Light gray background */
     position: relative; /* Position relative for overlay */
     height: 100vh; /* Ensure full viewport height */
     overflow: hidden; /* Prevent scrolling */
 }
 
 body::before {
     content: '';
     position: absolute;
     top: 0;
     left: 0;
     right: 0;
     bottom: 0;
     background-image: url(delete-account.jpeg); /* Background image URL */
     background-size: cover; /* Cover the entire viewport */
     background-position: center; /* Center the image */
     opacity: 0.2; /* Low transparency */
     z-index: -1; /* Place the background behind the content */
 }
 
 .header-strip {
     background-color: #333; /* Dark gray header background */
     padding: 10px 0;
     text-align: center;
     color: white; /* White header text color */
 }
 
 h1 {
     margin: 0; /* Remove left margin */
     opacity: 0; /* Initially hidden */
     animation: fadeIn 1s forwards;
 }
 
 @keyframes fadeIn {
     100% {
         opacity: 1;
     }
 }
 
 h2 {
     text-align: center;
     color: black;
     margin-top: -100px; /* Initially hidden */
     opacity: 0;
     animation: slideIn 1s forwards; /* Slide in from top */
 }
 
 @keyframes slideIn {
     100% {
         margin-top: 0px;
         opacity: 1;
     }
 }
 
 form {
     width: 600px;
     background-color: #ffffff; /* White form background */
     margin: 0 auto;
     padding: 20px;
     border-radius: 8px;
     box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
     position: relative; /* Ensure form content is above the overlay */
     z-index: 1;
 }
 
 label {
     display: block;
     margin-bottom: 5px;
     color: black; /* Black label text color */
 }
 
 input[type="text"],
 input[type="password"],
 input[type="email"] {
     width: calc(100% - 20px);
     padding: 10px;
     color: black; /* Black input text color */
     margin-bottom: 15px;
     border: 1px solid #ccc;
     border-radius: 5px;
 }
 
 input[type="submit"] {
     width: 100%;
     padding: 10px;
     margin-top: 10px;
     background-color: #ff0000; /* Red button background */
     color: white; /* White button text color */
     border: none;
     border-radius: 5px;
     cursor: pointer;
     transition: background-color 0.3s ease, color 0.3s ease, font-weight 0.3s ease, font-size 0.3s ease;
 }
 
 input[type="submit"]:hover {
     font-weight: bold;
     font-size: 18px;
 }
 
 .tile {
     margin: auto; 
     text-align: center; 
     max-width: 25%;
     height: 20%;
 }
 
 img {
     max-width: 40%;
     height: auto;
 }
 
     </style>
 
</head>
<body>
    <div class="header-strip">
        <h1>VelTech Bank</h1>
    </div>
    <div class="tile">
        <img src="delete-cus.png" alt="Delete Customer">
    </div>

    <h2>Delete Customer</h2>

    <form action="DeleteCustomerServlet" method="post">
        <label for="accountNumber">Account Number:</label>
        <input type="text" id="accountNumber" name="accountNumber" required><br>

        <input type="submit" value="Delete">
    </form>

</body>
</html>
