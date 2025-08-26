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
  <jsp:include page="header3.jsp" />
<div class="container"> 
    <h1>Registered Users</h1>

    <table border="1">
        <thead>
            <tr>
                <th>User name</th>
                <th>Email</th>
                <th>Password</th>
                <th>Phone Number</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="user" items="${userList}">
                <tr>
                    <td>${user.uname}</td>
                    <td>${user.mail}</td>
                    <td>${user.password}</td>
                    <td>${user.num}</td>
                    
                     <td>
                        <button><a href="UserUpadte.jsp?mail=${user.mail}">Update</a></button>
                        <br>
                        <br>
                        <button><a href="Deleteuser.jsp?mail=${user.mail}">Delete</a></button>
                        
                    </td>
                   
                </tr>
                
               
            </c:forEach>
        </tbody>
    </table>
</div> 

</body>
</html>
