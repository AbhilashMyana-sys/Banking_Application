<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration Success</title>
    <style>
        /* Global Styles */
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    display: flex;
    align-items: center;
    justify-content: center;
    height: 100vh;
    margin: 0;
    padding: 0;
    background-color: #fff; /* White background color */
    color: #333;
    position: relative; /* For overlay positioning */
    overflow: hidden; /* Prevent scrollbars if the content overflows */
}

body::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-image: url(regestration-success-img.jpeg); /* Path to your background image */
    background-size: cover; /* Cover the entire viewport */
    background-position: center; /* Center the image */
    opacity: 0.8; /* Low transparency */
    z-index: -1; /* Place background behind content */
}

.container {
    text-align: center;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    background-color: #fff; /* Bright white background for content */
    position: relative; /* Ensure container is above the background */
    z-index: 1; /* Bring container above the background */
}

h1 {
    color: #000; /* Black text color */
    font-size: 36px;
    margin-bottom: 20px;
    text-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
}

p {
    margin-top: 15px;
}

p span {
    font-weight: bold;
    color: #2980b9; /* Blue color for account number and password */
}

.back-btn {
    padding: 10px 20px;
    background-color: #3498db; /* Blue background color */
    color: #fff; /* White text color */
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
    text-decoration: none;
    margin-top: 30px;
    margin-bottom: 50px; /* Add 50px space below the button */
}

.back-btn:hover {
    background-color: #2980b9; /* Darker blue color on hover */
}

/* New Innovative CSS Code for container hover effect */
.container {
    background-image: linear-gradient(to bottom, #fff, #f7f7f7);
    background-size: 100% 200px;
    background-position: 0% 100%;
    transition: background-position 0.3s ease;
}

.container:hover {
    background-position: 100% 100%;
}

    </style>

</head>
<body>
    <div class="container">
        <h1>Registration Successful!</h1>
        <p>Your account number: <span>${ac}</span></p>
        <p>Your password: <span>${pass}</span></p>
    </div>
</body>
</html>

