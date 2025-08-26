<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Manager Panel</title>
    <link rel="stylesheet" href="css/styles.css"> <!-- Ensure this points to your CSS file -->
</head>

<style>
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');

* {
    font-family: 'Poppins', sans-serif;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    scroll-behavior: smooth;
}

ul {
    list-style: none;
}

a {
    text-decoration: none;
}

body {
    margin: 0;
    padding: 0;
}

/* Navigation */
.navigation {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 35px;
    max-width: 1070px;
    width: 100%;
    margin: auto;
    margin-left: 75px;
}

.menu {
    display: flex;
    align-items: left;
}

.menu li a {
    padding: 3px 10px;
    margin: 0 15px;
    color: red;
    font-weight: 500;
    letter-spacing: 0.5px;
    transition: all ease 0.3s;
}

.logo {
    font-size: 1.4rem;
    font-weight: 600;
    letter-spacing: 1px;
    color: #202020;
}

.logo span {
    color: red;
}

.right-nav {
    display: flex;
    gap: 25px;
}

.right-nav a {
    width: 40px;
    height: 40px;
    display: flex;
    justify-content: center;
    align-items: center;
    border-radius: 50%;
    position: relative;
}

.right-nav .like {
    background-color: #fff0ee;
    color: #ff6c57;
}

.right-nav .cart {
    background-color: #ecf7ee;
    color: #4eb060;
}

.right-nav .user-profile {
    background-color: #ecf7ee;
    color: rgb(139, 195, 221);
}

.right-nav a span {
    position: absolute;
    top: -7px;
    right: -7px;
    width: 20px;
    height: 20px;
    display: flex;
    justify-content: center;
    align-items: center;
    border-radius: 50%;
    color: #ffffff;
    font-size: 0.6rem;
    font-weight: 500;
}

.right-nav .like span {
    background-color: #ff6c57;
}

.right-nav .cart span {
    background-color: #4eb060;
}

.right-nav .user-profile span {
    background-color: rgb(95, 183, 224);
}

.menu li a:hover,
.menu .active {
    color: black;
    transition: all ease 0.3s;
}

/* Navbar styles */
.navbar {
    display: flex;
    justify-content: center; 
    gap: 20px; 
    margin: 20px;
    margin-top:75px
}

.nav-box {
    background-color: red; /* Light red background for nav-boxes */
    color: white; /* White text for better contrast */
    padding: 15px 20px; /* Padding for the nav-box */
    border-radius: 8px; /* Rounded corners */
    transition: background-color 0.3s ease, transform 0.2s ease; /* Transition effects */
    text-align: center; /* Center text in nav-box */
}

.nav-box:hover {
    background-color: white; /* Change background on hover */
    color: red; /* Change text color on hover */
    transform: scale(1.05); /* Scale up on hover for effect */
}
</style>
<body>
    <nav class="navigation">
        <a href="Home2.jsp" class="logo">
            <span>SM</span> Motors
        </a>
        <ul class="menu">
            
            <li><a href="manager.jsp">Home</a></li>
            <li><a href="Contactus.jsp">Feedback</a></li>
            <li><a href="AdministratorLogin.jsp">Logout</a></li>
        </ul>
    </nav>

    <center>
        <b><h1>Manager Panel</h1></b>
    </center>

    <div class="navbar">
        <a href="admins.jsp" class="nav-box">My Profile</a>     
        <a href="Orderdetails" class="nav-box">Orders</a>
        <a href="Paymentboard" class="nav-box">Payment Details</a>
        
    </div>
</body>
</html>

