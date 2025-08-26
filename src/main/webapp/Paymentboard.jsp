<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Payment Details</title>
    <link rel="stylesheet" type="text/css" href="css/paymentboard.css">
</head>
<body>

<h1>Payment Details</h1>

<div class="container">
    <table border="1">
        <thead>
            <tr><th colspan="5">User Details</th></tr>
            <tr>
                <th>User Name</th>
                <th>Email</th>
                <th>Remark</th>
                <th>Amount</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="payment" items="${paymentList}">
                <tr>
                    <td>${payment.payname}</td>
                    <td>${payment.mail}</td>
                    <td>${payment.remark}</td>
                    <td>${payment.amount}</td>
                    <td>
                        <button><a href="Payupdate.jsp?mail=${payment.mail}">Update</a></button>
                       <a href="deletepay.jsp?mail=${payment.mail}">Delete</a>

                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <table border="1">
        <thead>
            <tr><th colspan="7">Payment Details</th></tr>
            <tr>
                
                <th>Card Number</th>
                <th>Card Name</th>
                <th>Exp-Year</th>
                <th>Exp-Month</th>
                <th>CVV</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="payment" items="${paymentList}">
                <tr>
                    <td>${payment.mail}</td>
                    <td>${payment.cnum}</td>
                    <td>${payment.cname}</td>
                    <td>${payment.cyear}</td>
                    <td>${payment.cmonth}</td>
                    <td>${payment.cvv}</td>
                  
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>
