<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.sql.*" %>
<%@ page import="vehicleSpare.P_Order" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Order</title>
    <link rel="stylesheet" href="css/order.css">
</head>
<body>

<%
String emailParam = request.getParameter("o_id");
String errorMessage = null;
P_Order order = null; 

try {
    if (emailParam != null && !emailParam.isEmpty()) {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parts", "root", "nikshan");

        String query = "SELECT * FROM orders WHERE o_id = ?"; 
        PreparedStatement pst = con.prepareStatement(query);
        pst.setString(1, emailParam); 

        ResultSet rs = pst.executeQuery();

        if (rs.next()) {
            order = new P_Order(
                rs.getString("o_id"),
                rs.getString("name"),
                rs.getString("address"),
                rs.getString("email"),
                rs.getString("phone"),
                rs.getString("o_date"),
                rs.getString("o_time")
            );
        } else {
            errorMessage = "No order found for the provided email.";
        }

        rs.close();
        pst.close();
        con.close();
    } else {
        errorMessage = "Email parameter is missing or invalid.";
    }
} catch (SQLException e) {
    e.printStackTrace(); 
    errorMessage = "An error occurred while retrieving order information.";
} catch (ClassNotFoundException e) {
    e.printStackTrace(); 
    errorMessage = "Database driver not found.";
}
%>

<jsp:include page="header.jsp" />
<div class="contact-in">
    <div class="contact-form">
        <h1 align='center'>Update Order Details</h1>
          
        <% if (errorMessage != null) { %>
            <div class="message"><%= errorMessage %></div>
        <% } %>
        
        <form class='address_form' action="Updateorder" method="POST"> 
            <div class="input-group">
                <input type="text" placeholder="Order ID" class="contact-form-txt" name="o_id" id="id" value="<%= order != null ? order.getO_id() : "" %>"  required />
                <input type="text" placeholder="Name" class="contact-form-txt" name="name" id="name" value="<%= order != null ? order.getName() : "" %>" required/>
                <input type="text" placeholder="Address" class="contact-form-txt" name="address" id="address" value="<%= order != null ? order.getAddress() : "" %>" required/>
                <input type="text" placeholder="Email-ID" class="contact-form-txt" name="email" id="email" value="<%= order != null ? order.getEmail() : "" %>" readonly required/>
            </div>
            <div class="input-group">
                <input type="text" placeholder="Contact No." class="contact-form-txt" name="phone" id="phone" value="<%= order != null ? order.getPhone() : "" %>" required/>
                <input type="date" placeholder="Date" class="contact-form-txt" name="o_date" id="date" value="<%= order != null ? order.getO_date() : "" %>" required/>
                <input type="text" placeholder="Time Slot" class="contact-form-txt" name="o_time" id="time" value="<%= order != null ? order.getO_time() : "" %>" required/>
            </div>
            <button type="submit" class="contact-form-btn">Update Order Details</button>
            <button type="button" onclick="window.location.href='Orderdetails';" class="contact-form-btn">Cancel</button>
        </form>
    </div>
</div>

</body>
</html>
