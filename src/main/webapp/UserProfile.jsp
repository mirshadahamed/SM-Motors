<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Profile</title>
</head>
<body>
<% 
String mail = request.getParameter("mail");
%>
    <div class="container">
        <img alt="User" src="images/log2r.png">
        <form action="PayDelete" method="post">
            <input type="email" name="mail" placeholder="Enter Email" value="<%= mail != null ? mail : "" %>" required>
          
            <button type="submit">DELETE</button>
        </form>
    </div>

</body>
</html>