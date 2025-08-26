<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<%@ page import="vehicleSpare.Review" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Review</title>
    <link rel="stylesheet" href="css/review.css"> 
    
</head>
<body>

<%
String pcode = request.getParameter("pcode");
String errorMessage = null;
Review r = null; 

try {
    if (pcode != null && !pcode.isEmpty()) {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parts", "root", "nikshan");

        String query = "SELECT * FROM review WHERE pcode = ?";
        PreparedStatement pst = con.prepareStatement(query);
        pst.setString(1, pcode); 

        ResultSet rs = pst.executeQuery();

        if (rs.next()) {
            r = new Review(
                rs.getString("pcode"),
                rs.getString("rtype"),
                rs.getString("pname"),
                rs.getString("msg"),
                rs.getString("rate")
            );
        } else {
            errorMessage = "No review found for the provided product code.";
        }

        rs.close();
        pst.close();
        con.close();
    } else {
        errorMessage = "Product code parameter is missing or invalid.";
    }
} catch (SQLException e) {
    e.printStackTrace(); 
    errorMessage = "An error occurred while retrieving review information.";
} catch (ClassNotFoundException e) {
    e.printStackTrace(); 
    errorMessage = "Database driver not found.";
}
%>

<div class="contact-in">
    <center><h1>Update Review</h1></center>

    <%
    if (errorMessage != null) {
    %>
        <p style="color: red;"><%= errorMessage %></p>
    <%
    } else if (r != null) {
    %>

    <form id="promoForm" action="UpdateReview" method="post"> 
        <label for="pcode">Review ID</label>
        <input type="text" id="pcode" name="pcode" placeholder="Review Code" value="<%= r.getPcode() %>"  class="contact-form-txt" readonly> 
        <br> 
        <label for="rtype">About Product type</label>
        <input type="text" id="rtype" name="rtype" placeholder="review product" value="<%= r.getRtype() %>" required class="contact-form-txt">
        <br>
        <label for="pname">User name</label>
        <input type="text" id="pname" name="pname"  placeholder="name of user" value="<%= r.getPname() %>" required class="contact-form-txt">
        <br>
        <label for="msg">Review Message</label>
        <input type="text" id="msg" name="msg" placeholder="message" value="<%= r.getMsg() %>" required class="contact-form-txt">
        <br>
        
        <label for="rate">User Rating</label>
        <input type="radio" id="rate1" name="rate" value="1" <%= "1".equals(r.getRate()) ? "checked" : "" %> class="Review">1 star
        <input type="radio" id="rate2" name="rate" value="2" <%= "2".equals(r.getRate()) ? "checked" : "" %> class="Review">2 stars
        <input type="radio" id="rate3" name="rate" value="3" <%= "3".equals(r.getRate()) ? "checked" : "" %> class="Review">3 stars
        <input type="radio" id="rate4" name="rate" value="4" <%= "4".equals(r.getRate()) ? "checked" : "" %> class="Review">4 stars
        <input type="radio" id="rate5" name="rate" value="5" <%= "5".equals(r.getRate()) ? "checked" : "" %> class="Review">5 stars
        
        <br>
        <button type="submit" class="contact-form-btn">Update</button>
    </form>
    
      <script>
    function validateReviewForm() {
       
        var promoCode = document.getElementById('pcode').value.trim();
        var promoCodePattern = /^R-\d{3}$/; 
        
        if (!promoCodePattern.test(promoCode)) {
            alert("Review ID must follow the format: R-XXX (e.g., R-001)");
            return false;
        }

     
        var ratingSelected = false;
        var checkboxes = document.getElementsByClassName('Review');
        for (var i = 0; i < checkboxes.length; i++) {
            if (checkboxes[i].checked) {
                ratingSelected = true;
                break;
            }
        }

        if (!ratingSelected) {
            alert("Please select at least one rating.");
            return false;
        }

        return true; 
    }
</script>

    <%
    }
    %>
</div>

</body>
</html>
