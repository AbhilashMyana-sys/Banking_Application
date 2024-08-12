<%@ page import="java.util.List" %>
<%@ page import="register.Customer" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View Customer Details</title>
    <style>
        body {
     font-family: Arial, sans-serif;
     margin: 0;
     padding: 0;
     color: #333; /* Dark gray text color */
     background-color: #ffffff;
     position: relative;
     min-height: 100vh;
     overflow: hidden;
 }
 
 body::before {
     content: '';
     position: absolute;
     top: 0;
     left: 0;
     width: 100%;
     height: 100%;
     background-image: url(customer-details-img.jpeg); /* Path to your background image */
     background-size: cover;
     background-position: center;
     opacity: 0.3; /* Low transparency */
     z-index: -1;
 }
 
 @keyframes fadeIn {
     from {
         opacity: 0;
     }
     to {
         opacity: 1;
     }
 }
 
 .header-strip {
     background-color: #fff; /* White background */
     padding: 10px 0;
     text-align: center;
     color: #333; /* Dark gray text color */
     width: 100%;
     box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
 }
 
 h1 {
     margin-left: 50px;
     color: #333; /* Dark gray heading color */
     opacity: 0; /* Initially hidden */
     animation: fadeInLeft 1s forwards;
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
 
 h2 {
     text-align: center;
     margin-bottom: 25px;
     color: #333; /* Dark gray heading color */
     animation: fadeInUp 1s ease-in-out;
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
 
 table {
     width: 80%;
     margin: auto;
     margin-bottom: 70px;
     border-collapse: collapse;
     box-shadow: 0 0 10px rgba(0, 0, 0, 0.3); /* Slight shadow effect */
     background-color: #fff; /* White table background */
     z-index: 1; /* Ensure table is above the background */
     position: relative;
 }
 
 th, td {
     border: 1px solid #ccc; /* Light gray border */
     padding: 12px;
     text-align: left;
     transition: background-color 0.3s ease; /* Smooth background color transition */
 }
 
 th {
     background-color: #333; /* Dark background for headers */
     color: white; /* White header text color */
 }
 
 tr:hover {
     background-color: #f1f1f1; /* Light gray background on hover */
 }
 
 .tile {
     margin: auto; 
     text-align: center; 
 }
 
 img {
     max-width: 8%;
     height: auto;
 }
 
 .fadeInLeft {
     animation: fadeInLeft 1s forwards;
 }
 
 .fadeInUp {
     animation: fadeInUp 1s ease-in-out;
 }
 
     </style>
 

</head>
<body>
    <div class="header-strip">
        <h1>VelTech InfiniBank</h1>
    </div>
    <div class="tile">
        <img src="view.png" alt="View Customer">
    </div>

    <h2>Customer Details</h2>

    <table border="1">
        <thead>
            <tr>
                <th>Account Number</th>
                <th>Full Name</th>
                <th>Address</th>
                <th>Email ID</th>
                <th>Date of Birth</th>
                <th>Phone</th>
            </tr>
        </thead>
        <tbody>
            <% List<Customer> customerList = (List<Customer>) request.getAttribute("customers");
               for (Customer customer : customerList) { %>
                <tr>
                    <td><%= customer.getAccountNumber() %></td>
                    <td><%= customer.getFullName() %></td>
                    <td><%= customer.getAddress() %></td>
                    <td><%= customer.getEmailId() %></td>
                    <td><%= customer.getDob() %></td>
                    <td><%= customer.getphone() %></td>
                </tr>
            <% } %>
        </tbody>
    </table>
</body>
</html>
