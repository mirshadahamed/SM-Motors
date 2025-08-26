<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Promotions Dashboard</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 20px;
            background-color: #f9f9f9;
        }
        h1 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }
        .promo {
            border: 1px solid #ccc;
            padding: 15px;
            margin: 10px;
            border-radius: 5px;
            background-color: white;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s;
        }
        .promo:hover {
            transform: translateY(-5px);
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
        }
        .product-heading h3 {
            margin: 0;
            color: #007BFF;
        }
        .product-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
        }
        .product-box {
            width: 300px;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 8px;
            background-color: #fff;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .product-box img {
            max-width: 100%;
            height: auto;
            border-radius: 8px;
        }
        .product-box strong {
            display: block;
            margin: 10px 0;
            color: #555;
        }
        .product-box h3 {
            margin: 5px 0;
            color: #333;
        }
        button {
            margin: 5px;
            padding: 10px 15px;
            background-color: red;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        button a {
            color: white;
            text-decoration: none;
        }
        button:hover {
            background-color: #0056b3;
        }
        .cart-btn {
            display: inline-block;
            padding: 10px 15px;
            background-color: red;
            color: white;
            border-radius: 5px;
            text-decoration: none;
            transition: background-color 0.3s;
        }
        .cart-btn:hover {
            background-color: black;
        }
    </style>
</head>
<body>



    <section id="popular-bundle-pack">
        <div class="product-heading">
        <jsp:include page="header2.jsp" />
            <h1>PROMO'S Here!</h1>
        </div>
        <div class="product-container">
            <c:forEach var="pros" items="${promosList}">
                <div class="product-box promo">
                    <img src="images/new.jpg" alt="Promo Image">
                    <strong>File Name:</strong> ${pros.pcode}
                    <h3><strong>Promo Title:</strong> ${pros.promoTitle}</h3>
                    <span class="promo-description"><strong>Promo Description:</strong> ${pros.promoDescription}</span>
                    <span class="promo-date"><strong>Promo Start Date:</strong> ${pros.promoDate}</span>
                    <span class="promo-date"><strong>Promo End Date:</strong> ${pros.promoend}</span>
                   <br>
                    <a href="Products.jsp" class="cart-btn">
                        <i class="fas fa-shopping-bag"></i> Get Now
                    </a>
                </div>
            </c:forEach>
        </div>
    </section>

</body>
</html>
