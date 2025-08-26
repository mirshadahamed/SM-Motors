<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.sql.*" %>
<%@ page import="vehicleSpare.User" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Customer Update</title>
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background-image: url(../images/light.jpg); 
            background-size: cover;
            background-position: center;
        }

        .container {
            background-color: rgba(51, 77, 77, 0.9);
            border-radius: 15px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.6);
            padding: 40px 30px;
            width: 100%;
            max-width: 600px;
            color: #FF8C00;
        }

        h1 {
            text-align: center;
            color: #FF8C00;
            margin-bottom: 30px;
            font-size: 24px;
        }

        label {
            display: block;
            margin: 10px 0 5px;
            color: #FF8C00;
            font-weight: bold;
        }

        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: none;
            border-bottom: 2px solid #FF8C00;
            border-radius: 4px;
            background: rgba(255, 255, 255, 0.9);
            font-size: 16px;
            transition: border-color 0.3s;
        }

        input[type="text"]:focus, input[type="password"]:focus {
            outline: none;
            border-bottom: 2px solid #FF6347;
        }

        .btn {
            background-color: #FF4500;
            color: white;
            border: none;
            padding: 15px;
            border-radius: 8px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
            width: 100%;
            margin-top: 20px;
        }

        .btn:hover {
            background-color: #FF6347;
        }

        .message {
            color: #FF8C00;
            margin-top: 15px;
            text-align: left;
            font-size: 14px;
        }

        @media (max-width: 600px) {
            .container {
                padding: 30px 20px;
            }

            h1 {
                font-size: 22px;
            }

            .btn {
                padding: 12px;
            }
        }
    </style>
</head>

<body>

<%
String emailParam = request.getParameter("mail");
String errorMessage = null;
User user = null; 

try {
    if (emailParam != null && !emailParam.isEmpty()) {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parts", "root", "nikshan");

        String query = "SELECT * FROM users WHERE mail = ?";
        PreparedStatement pst = con.prepareStatement(query);
        pst.setString(1, emailParam); // Ensure emailParam is used

        ResultSet rs = pst.executeQuery();

        if (rs.next()) {
            user = new User(
                rs.getString("uname"),
                rs.getString("mail"),
                rs.getString("password"),
                rs.getString("num")
            );
        } else {
            errorMessage = "No user found for the provided email.";
        }

        rs.close();
        pst.close();
        con.close();
    } else {
        errorMessage = "Email parameter is missing or invalid.";
    }
} catch (SQLException e) {
    e.printStackTrace(); 
    errorMessage = "An error occurred while retrieving user information.";
} catch (ClassNotFoundException e) {
    e.printStackTrace(); 
    errorMessage = "Database driver not found.";
}
%>

<div class="container">
    <h1>Update Profile</h1>
    
    <% if (errorMessage != null) { %>
        <div class="message"><%= errorMessage %></div>
    <% } %>

    <form action="ProfileUpdate" method="POST" onsubmit="return validateForm() ">
        <label for="uname">User Name:</label>
        <input type="text" name="uname" id="uname" value="<%= user != null ? user.getUname() : "" %>" required>

        <label for="mail">E-Mail Address:</label>
        <input type="text" name="mail" id="mail" value="<%= user != null ? user.getMail() : "" %>" required readonly>

        <label for="password">Password:</label>
        <input type="password" name="password"  value="<%= user != null ? user.getPassword() : "" %>" id="password" required>

        <label for="num">Mobile Number:</label>
        <input type="text" name="num" id="num" value="<%= user != null ? user.getNum() : "" %>" required>

        <button type="submit" class="btn">Submit</button>
    </form>
    
    
    <script>
    function validateForm() {
        var name = document.getElementById("uname").value;
        var mail = document.getElementById("mail").value;
        var password = document.getElementById("password").value;
        var phoneNumber = document.getElementById("num").value;

        if (name.trim() === "") {
            alert("Please enter your name.");
            return false;
        }

        
        var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailPattern.test(mail)) {
            alert("Please enter a valid email address.");
            return false;
        }

        if (password.length < 6) {
            alert("Password must be at least 6 characters long.");
            return false;
        }

        var phonePattern = /^0\d{9}$/;
        if (phoneNumber !== "" && !phonePattern.test(phoneNumber)) {
            alert("Phone number must be exactly 10 digits. & start with zero");
            return false;
        }

        return true;
    }
</script>
    
</div>

</body>
</html>
