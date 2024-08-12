<!-- ForgotPassword.jsp -->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Forgot Password</title>
</head>
<body>
    <style>
        body {
     font-family: Arial, sans-serif;
     margin: 0;
     padding: 0;
     user-select: none;
     text-align: center;
     position: relative; /* Position relative for overlay */
     background-color: white; /* White background color */
 }
 
 body::before {
     content: '';
     position: absolute;
     top: 0;
     left: 0;
     right: 0;
     bottom: 0;
     background-image: url(forgot-pass-img.jpeg); /* Background image URL */
     background-size: cover; /* Cover the entire viewport */
     background-position: center; /* Center the image */
     opacity: 0.3; /* Low transparency */
     z-index: -1; /* Place the background behind the content */
 }
 
 form {
     width: 50%;
     max-width: 400px; /* Ensure form is responsive */
     margin: 40px auto;
     padding: 20px;
     border: 1px solid #ccc;
     border-radius: 10px;
     box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
     background-color: white; /* Bright background color for form */
     position: relative; /* Ensure form is above the overlay */
     z-index: 1;
 }
 
 label {
     display: block;
     margin-bottom: 10px;
     color: black; /* Black text color for labels */
 }
 
 input[type="text"] {
     width: 100%;
     padding: 10px;
     margin-bottom: 20px;
     border: 1px solid #ccc;
     border-radius: 5px;
     box-sizing: border-box; /* Include padding and border in element's total width and height */
 }
 
 input[type="submit"] {
     background-color: #34C759; /* Green color */
     color: white;
     padding: 10px 20px;
     border: none;
     border-radius: 5px;
     cursor: pointer;
     transition: background-color 0.3s ease;
 }
 
 input[type="submit"]:hover {
     background-color: #2E865F; /* Darker green color on hover */
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
 
     </style>
 
    <form action="ForgotPasswordServlet" method="post">
        <label for="accountNumber">Account Number:</label>
        <input type="text" id="accountNumber" name="accountNumber" required><br>
        <input type="submit" value="Submit">
    </form>
</body>
</html>
