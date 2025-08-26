<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Uder</title>
<link rel="stylesheet" href="css\delete.css">
</head>
<body>
<% 
String mail = request.getParameter("mail");
%>
    <div class="container">
        <img alt="User" src="images/log2r.png">
        <form action="Deleteuser" method="post">
            <input type="email" name="mail" placeholder="Enter Email" value="<%= mail != null ? mail : "" %>" required>
            <p>DELETE USER</p>
            <button type="submit">DELETE</button>
        </form>
    </div>

</body>
</html>