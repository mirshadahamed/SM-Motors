<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="vehicleSpare.Ads" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Promo</title>
    <link rel="stylesheet" href="css/promo.css">
    
</head>
<body>


<div class="contact-in">
    <center><h1>Update Promo</h1></center>
       
    <%
    String pcode = request.getParameter("pcode");
    String errorMessage = null;
    Ads p = null; 

    try {
        if (pcode != null && !pcode.isEmpty()) {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parts", "root", "nikshan");

            String query = "SELECT * FROM promo WHERE pcode = ?";
            PreparedStatement pst = con.prepareStatement(query);
            pst.setString(1, pcode);

            ResultSet rs = pst.executeQuery();

            if (rs.next()) {
                p = new Ads(
                    rs.getString("pcode"),
                    rs.getString("promoTitle"),
                    rs.getString("promoDescription"),
                    rs.getString("promoDate"),
                    rs.getString("promoend")
                );
            } else {
                errorMessage = "No promo found for the provided promo code.";
            }

            rs.close();
            pst.close();
            con.close();
        } else {
            errorMessage = "Promo code parameter is missing or invalid.";
        }
    } catch (SQLException e) {
        e.printStackTrace(); 
        errorMessage = "An error occurred while retrieving promo information.";
    } catch (ClassNotFoundException e) {
        e.printStackTrace(); 
        errorMessage = "Database driver not found.";
    }
    %>
       
   
    <% if (errorMessage != null) { %>
        <p style="color: red;"><%= errorMessage %></p>
    <% } else if (p != null) { %>

    <form id="promoForm" action="AddpromoUpdate" method="POST" onsubmit="return validatePromoForm()"> 
        <label for="pcode">Promo Code:</label>
        <input type="text" id="pcode" name="pcode" value="<%= p.getPcode() %>"  class="contact-form-txt" readonly> 
        <br> 
        <label for="promoTitle">Promo Title:</label>
        <input type="text" id="promoTitle" name="promoTitle" value="<%= p.getPromoTitle() %>" required class="contact-form-txt">
        <br>
        <label for="promoDescription">Promo Description:</label>
        <input type="text" id="promoDescription" name="promoDescription" value="<%= p.getPromoDescription() %>" required class="contact-form-txt">
        <br>
        <label for="promoDate">Promo Date:</label>
        <input type="date" id="promoDate" name="promoDate" value="<%= p.getPromoDate() %>" required class="contact-form-txt">
        <br>
        <br>
        <label for="promoDate">Promo End Date:</label>
        <input type="date" id="promoEndDate" name="promoend" value="<%= p.getPromoend() %>" required class="contact-form-txt">
  
        <button type="submit" class="contact-form-btn">Update Promo</button>
    </form>

    <% } %>
</div>


</body>

<script>
alert("Update promo for users");

function validatePromoForm() {
    var promoCode = document.getElementById('pcode').value.trim();
    var promoCodePattern = /^p\d{3}$/i; 

    if (!promoCodePattern.test(promoCode)) {
        alert("Promo code must follow the format: PXXX");
        return false;
    }

    var promoStartDate = new Date(document.getElementById('promoDate').value);
    var promoEndDate = new Date(document.getElementById('promoEndDate').value);
    
  
    if (isNaN(promoEndDate.getTime()) || promoEndDate == promoStartDate  || promoEndDate <= promoStartDate) {
        alert("Promo end date must be after the promo start date & minimum promo duration One day");
        
        return false;
    }
  
   

    return true; 
}
</script>
</html>
