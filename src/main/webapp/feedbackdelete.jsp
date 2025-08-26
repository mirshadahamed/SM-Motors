<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete My feedback</title>
<link rel="stylesheet" href="css\delete.css">
</head>
<body>

 
<% 

String email = request.getParameter("email");

%>
    <div class="container">
        <img alt="User" src="images/log2r.png">
        <form action="ContactusDelete" method="post">
            <input type="email" name="email" placeholder="Enter Email" value="<%= email != null ? email : "" %>" required>
            <p>Enter the email for Delete your feedback </p>
            <button type="submit">Delete</button>
        </form>
    </div>


</body>
</html>