<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <style>
        body {
     font-family: Arial, sans-serif;
     margin: 0;
     padding: 0;
     user-select: none;
     background-color: #fff; /* White background color */
     background-image: url(admin-dashboard-details.jpeg);
     background-size: cover;
     background-position: center;
     position: relative;
     overflow: hidden;
 }
 
 .background-overlay {
     position: absolute;
     top: 0;
     left: 0;
     right: 0;
     bottom: 0;
     background-color: rgba(255, 255, 255, 0.7); /* White with 70% opacity */
     z-index: 1;
 }
 
 .content {
     position: relative;
     z-index: 2;
 }
 
 .header-strip {
     background-color: rgba(255, 255, 255, 0.9); /* White with 90% opacity */
     padding: 10px 20px;
     color: black; /* Change text color to black */
     display: flex;
     justify-content: center; /* Center align the header content */
     align-items: center;
     position: relative;
 }
 
 h1 {
     margin: 0; /* Remove margin */
     text-align: center; /* Center align the heading */
     flex-grow: 1; /* Allow the heading to take up remaining space */
 }
 
 .logout-button {
     position: absolute;
     top: 10px;
     right: 20px;
 }
 
 h2 {
     text-align: center;
     margin-top: 50px;
     color: black;
 }
 
 p {
     text-align: center;
     color: black;
     animation: blink 1s infinite alternate;
 }
 
 @keyframes blink {
     0% {
         opacity: 1;
     }
     100% {
         opacity: 0;
     }
 }
 
 .tiles-container {
     display: flex;
     flex-wrap: wrap;
     justify-content: space-around;
     margin-top: 20px;
 }
 
 .tile {
     width: 200px;
     margin-bottom: 20px;
     text-align: center;
     background-color: rgba(255, 255, 255, 0.9); /* White with 90% opacity */
     padding: 20px;
     border-radius: 8px;
     box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
     transition: background-color 0.3s ease, transform 0.3s ease; /* Add transition effect */
 }
 
 .tile:hover {
     background-color: rgba(105, 105, 105, 0.9); /* Darken background color on hover */
     transform: translateY(-5px); /* Move tile up slightly on hover */
 }
 
 .tile img {
     width: 100px;
     height: 100px;
     margin-bottom: 10px;
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
 
 button {
     background-color: green; /* Green button color */
     color: white;
     padding: 10px 10px;
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
 }
 
 /* New CSS for input labels */
 label {
     color: black; /* Change input label color to black */
 }
 
     </style>
<body>
    <div class="header-strip">
        <h1>VelTech Bank</h1>
        <div class="tile1">
            <button id="cc"><a href="<%= request.getContextPath() %>/AdminLogoutServlet">Logout</a></button>
        </div>
    </div>
    <h2>Welcome Admin</h2>
    
    <div class="tiles-container">
        <div class="tile">
            <img src="ADD-CUS.jpg" alt="Add Customer">
            <button><a href="<%= request.getContextPath() %>/RegisterServlet">Add Customer</a></button>
        </div>
        <div class="tile">
            <img src="mod-cus.png" alt="Modify Customer">
            <button><a href="<%= request.getContextPath() %>/ModifyCustomerServlet">Modify Customer</a></button>
        </div>
        <div class="tile">
            <img src="view.png" alt="View Customer Details">
            <button><a href="<%= request.getContextPath() %>/ViewCustomerServlet">View Customer Details</a></button>
        </div>
        <div class="tile">
            <img src="delete-cus.png" alt="Delete Customer">
            <button><a href="<%= request.getContextPath() %>/DeleteCustomerServlet">Delete Customer</a></button>
        </div>
    </div>
</body>
</html>
