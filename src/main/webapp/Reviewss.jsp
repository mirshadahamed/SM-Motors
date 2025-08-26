<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Users Management</title>
    <link rel="stylesheet" type="text/css" href="css/details.css"> 
</head>
<body>

<div class="container"> 
    <h1>  Review management</h1>

    <table border="1">
        <thead>
            <tr>
                <th>User name</th>
                <th>About Review</th>
                <th>Product name</th>
                <th>Review message</th>
                <th>Rating</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="rat" items="${revList}">
                <tr>
                    <td>${rat.pcode}</td>
                    <td>${rat.rtype}</td>
                    <td>${rat.pname}</td>
                    <td>${rat.msg}</td>
                    <td>${rat.rate}</td>
                   
                    
                     <td>
                        <button><a href="UpdateReview.jsp?pcode=${rat.pcode}">Update</a></button>
                       <br>
                       <br>                       
                        <form action="DeleteReview" method="POST">                    
                        <input type="hidden" name="pcode" value="${rat.pcode}">
                        <button type="submit">Delete</button>
                    </form>
                    </td>
                   
                </tr>
                
               
            </c:forEach>
        </tbody>
    </table>
</div> 

</body>
</html>
