<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>

<html>
<head>
    <title>Deposit Money</title>
    <style>
        body {
     font-family: 'Arial', sans-serif;
     justify-content: center;
     align-items: center;
     height: 100vh;
     background-color: white; /* Entire background color */
     position: relative; /* Position relative for overlay */
     overflow: hidden; /* Prevent scrolling */
     margin: 0;
     padding: 0;
 }
 
 body::before {
     content: '';
     position: absolute;
     top: 0;
     left: 0;
     right: 0;
     bottom: 0;
     background-image: url(deposit-img.jpeg); /* Background image URL */
     background-size: cover; /* Cover the entire viewport */
     background-position: center; /* Center the image */
     opacity: 0.2; /* Low transparency */
     z-index: -2; /* Place the background behind the content */
 }
 
 h2 {
     color: black;
     text-align: center;
     padding-top: 50px; /* Decreased padding */
     margin-top: -40px; /* Adjusted margin */
 }
 
 form {
     width: 90%; /* Adjusted width for responsiveness */
     max-width: 400px;
     margin: auto;
     padding: 20px;
     border-radius: 8px;
     border: 2px solid black;
     background-color: white; /* White background */
     position: relative; /* Ensure form content is above the overlay */
     z-index: 1;
 }
 
 label {
     display: block;
     margin-bottom: 8px;
     color: black;
 }
 
 input {
     width: 100%;
     padding: 8px;
     margin-bottom: 16px;
     box-sizing: border-box;
     border: 1px solid #ccc; /* Added border */
     border-radius: 4px;
 }
 
 input[type="submit"] {
     background-color: green;
     color: white;
     cursor: pointer;
     transition: background-color 0.3s;
 }
 
 input[type="submit"]:hover {
     font-size: 18px;
     font-weight: bold;
     background-color: #34C759; /* Changed hover background color to a bright green */
 }
 
 .tile {
     margin: auto;
     text-align: center;
 }
 
 .header-strip {
     background-color: #333; /* Dark blue background */
     padding: 10px 0;
     text-align: center;
     color: white; /* White text */
 }
 
 h1 {
     margin-left: 50px;
     opacity: 0;
     animation: slideIn 1s forwards;
 }
 
 @keyframes slideIn {
     0% {
         transform: translateX(-100%);
     }
     100% {
         transform: translateX(0);
         opacity: 1;
     }
 }
 
 img {
     max-width: 200px; /* Adjusted max-width for responsiveness */
     height: auto;
     margin-top: 10px;
 }
 
 .veltech-bank {
     color: black; /* Veltech Bank text color changed to black */
     background-color: #ffffff; /* Veltech Bank background color changed to gray */
     text-align: center;
     padding: 10px;
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
 
     </style>
 
</head>
<body>
<div class="header-strip">
    <h1>VelTech Bank</h1>
</div>
<div class="tile">
    <img src="deposit-cus.png">
</div>

<h2>Deposit Money</h2>

<form action="<%= request.getContextPath() %>/DS" method="post" onsubmit="return validateForm()">
    <label for="amount">Enter Amount:</label>
    <input type="text" id="amount1" name="amount1" required>
    <br>
    <%
        String depositTime = new SimpleDateFormat("yyyy.MM.dd.HH.mm.ss").format(new Date());
        session.setAttribute("depositTime", depositTime);
    %>
    <input type="submit" value="Deposit">
</form>

<script>
    function validateForm() {
        var amount = document.getElementById("amount1").value;
        if (amount <= 0) {
            alert("Deposit amount must be more than zero.");
            return false;
        }
        return true;
    }
</script>
</body>
</html>
