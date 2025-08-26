<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>order Details</title>
 <link rel="stylesheet" type="text/css" href="css/details.css">
</head>
<body>

<table border="1">
    <thead>
        <tr>
            <th>Postal ID</th>
            <th>Name</th>
            <th>Address</th>
            <th>email</th>
            <th>phone</th>
            <th>Dispatch date</th>
            <th>Dispatch time</th>
            <th>Actions</th>
          
        </tr>
    </thead>
    <tbody>
        <c:forEach var="orders" items="${ordersList}">
            <tr>
                <td>${orders.o_id}</td>
                <td>${orders.name}</td>
                <td>${orders.address}</td>
                <td>${orders.email}</td>
                <td>${orders.phone}</td>
                <td>${orders.o_date}</td>
                <td>${orders.o_time}</td>
                
               
                <td>
                    <button><a href="updateorder.jsp?o_id=${orders.o_id}">Update</a></button>
                 
                    <form action="Orderdelete" method="POST">                    
                        <input type="hidden" name="o_id" value="${orders.o_id}">
                        <button type="submit">Delete</button>
                    </form>
                </td>
            </tr>
        </c:forEach>  
                
    </tbody>
</table>

</body>
</html>