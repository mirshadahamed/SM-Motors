<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>My Profile</title>
    <link rel="stylesheet" type="text/css" href="css/profile.css">
</head>

<body>
<jsp:include page="header2.jsp" />

<%
    Connection con = null;
    PreparedStatement pst = null;
    ResultSet rs = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parts", "root", "nikshan");

        String mail = (String) session.getAttribute("mail");
        String query = "SELECT * FROM systemusers WHERE mail_id = ?";
        pst = con.prepareStatement(query);
        pst.setString(1, mail);
        rs = pst.executeQuery();

        if (rs.next()) {
            session.setAttribute("currentUser", rs.getString("name_a"));
            session.setAttribute("mobile", rs.getString("mobile"));
        } else {
            
        }
    } catch (SQLException | ClassNotFoundException e) {
        e.printStackTrace();
        out.println("<h2>Error retrieving user details.</h2>");
    }
%>
<h1>My Profile</h1>
    
    <div>
        <img src="images\8847137.png" alt="Profile Image" class="profile-image" />
    </div>
    
    <h1><strong>Welcome, </strong><c:out value="${sessionScope.currentUser}"/></h1>
    
    <div class="user-details">
        <p><strong>Username:</strong> <c:out value="${sessionScope.currentUser}"/></p>
        <p><strong>Email:</strong> <c:out value="${sessionScope.mail_id}"/></p>
        <p><strong>Phone Number:</strong> <c:out value="${sessionScope.admin}"/></p>
    </div>
    
    <div class="actions">
        <button class="update-button"><a href="UserUpadte.jsp?mail=${sessionScope.mail_id}">Update</a></button>
        <button class="delete-button"><a href="Deleteuser.jsp?mail=${sessionScope.mail_id}">Delete</a></button>
    </div>
    
    <hr style="margin: 20px 0; border: 1px solid #ddd;">
</div>

</body>
</html>
