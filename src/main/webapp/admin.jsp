<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="css/Admindashboard.css">
    <style>
        @charset "UTF-8";

        body {
            font-family: Arial, sans-serif;
            background-color: white;
            margin: 0;
            display: flex;
            flex-direction: column; 
            align-items: center; 
            height: 100vh; 
            justify-content: flex-start; 
        }

        .navbar {
            display: grid;
            grid-template-columns: repeat(2, 1fr); 
            grid-template-rows: repeat(2, 1fr); 
            gap: 20px; 
            width: 80%; 
            max-width: 600px; 
            margin-bottom: 200px; 
            
        }

        .nav-box {
            background-color: orange; 
            color: #333; 
            padding: 40px; 
            text-align: center;
            border-radius: 8px;
            transition: background-color 0.3s ease;
            cursor: pointer; 
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            text-decoration: none; 
            font-size: 1.2em; 
        }

        .nav-box:hover {
            background-color: white; 
        }
    </style>
</head>
<body>
  
    <jsp:include page="header3.jsp" />


    <center>  <b><h1>Admin Dashboard  </h1> </b>   </center>
    <div class="navbar">
        <a href="admins.jsp" class="nav-box">My profile </a>
        <a href="Userdashboard" class="nav-box">User Deatails</a>
        <a href="Feedbackpage" class="nav-box">Feedbacks</a>
        <a href="Orderdetails" class="nav-box">Orders</a>
        <a href="Paymentboard" class="nav-box">Payment Deatails</a>
        <a href="Addpromo.jsp" class="nav-box">Add promotions</a>
    </div>
</body>
</html>
