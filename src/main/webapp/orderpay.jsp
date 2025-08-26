<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order Success</title>

<style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
    * {
        margin: 0;
        padding: 0;
        font-family: 'Poppins', sans-serif;
    }
    body {
        display: flex;
        min-height: 100vh;
        align-items: center;
        justify-content: center;
        background: #f0f0f0; /* Light grey background */
    }
    .box {
        height: 380px;
        width: 400px;
        background: #ffffff; /* White background for the box */
        padding: 20px;
        border-radius: 30px;
        box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1); /* Add shadow for depth */
    }
    .box div {
        color: #333; /* Dark grey text color */
        font-size: 30px;
        font-weight: 800;
        text-align: center;
        padding: 20px 0;
    }
    .btn {
        border-radius: 30px;
        color: #fff;
        margin-top: 18px;
        padding: 10px;
        background: red; /* Green background for buttons */
        font-size: 18px;
        border: none;
        cursor: pointer;
        transition: background 0.3s; /* Smooth transition for hover effect */
    }
    .btn:hover {
        background: orange; /* Darker green on hover */
    }
</style>
</head>
<body>
    <div class="box">
        <div>
            <h1 style="text-transform: uppercase;">Success!</h1><br>
            <h5>Your order is placed<br> !!!</h5>
            <h4>Select Payment<br> ?</h4>
            <button type="button" class="btn">
                <a href="Home2.jsp" style='color: white; text-decoration: none;'>Cash on Delivery</a>
            </button>
            <button type="button" class="btn">
                <a href="Payment.jsp" style='color: white; text-decoration: none;'>Card Payment</a>
            </button>
        </div>
    </div>
</body>
</html>
