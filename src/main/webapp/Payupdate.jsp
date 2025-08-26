<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="vehicleSpare.Pay" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Payment</title>
    <link rel="stylesheet" href="css/Payment.css">
</head>
<body>

<%
    String emailParam = request.getParameter("mail");
    String errorMessage = null;
    Pay p = null; 

    try {
        if (emailParam != null && !emailParam.isEmpty()) {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parts", "root", "nikshan123");

            String query = "SELECT * FROM pay WHERE mail = ?";
            PreparedStatement pst = con.prepareStatement(query);
            pst.setString(1, emailParam);

            ResultSet rs = pst.executeQuery();

            if (rs.next()) {
                p = new Pay(
                    rs.getString("payname"),
                    rs.getString("mail"),
                    rs.getString("remark"),
                    rs.getString("amount"),
                    rs.getString("cnum"),
                    rs.getString("cname"),
                    rs.getString("cmonth"),
                    rs.getString("cyear"),
                    rs.getString("cvv")
                );
            } else {
                errorMessage = "No payment details found for the provided email.";
            }

            rs.close();
            pst.close();
            con.close();
        } else {
            errorMessage = "Email parameter is missing or invalid.";
        }
    } catch (SQLException e) {
        e.printStackTrace(); 
        errorMessage = "An error occurred while retrieving payment information.";
    } catch (ClassNotFoundException e) {
        e.printStackTrace(); 
        errorMessage = "Database driver not found.";
    }
%>

<div class="container">
    <form action="Payupdate" method="POST">
        <center><h2>EDIT USER DATA</h2></center>  

        <div class="inputBox">
            <input type="text" name="payname" placeholder="NAME" value="<%= p != null ? p.getPayname() : "" %>" required>
        </div>
        <div class="inputBox">
            <input type="text" name="mail" placeholder="EMAIL" value="<%= p != null ? p.getMail() : "" %>" required>
        </div>
        <div class="inputBox">
            <input type="text" maxlength="25" name="remark" placeholder="Remarks" value="<%= p != null ? p.getRemark() : "" %>" required>
        </div>
        <div class="inputBox">
            <input type="text" name="amount" value="<%= p != null ? p.getAmount() : "" %>" placeholder="Amount" required>
        </div>
        <br>

        <center><h2>EDIT PAYMENT DETAILS!</h2></center>  

        <div class="inputBox">
            <span>Card Number</span>
            <input type="text" maxlength="16" name="cnum" class="card-number-input" placeholder="CARD NUMBER" value="<%= p != null ? p.getCnum() : "" %>" required>
        </div>

        <div class="inputBox">
            <span>Name on Card</span>
            <input type="text" class="card-holder-input" name="cname" placeholder="CARD NAME" value="<%= p != null ? p.getCname() : "" %>" required>
        </div>

        <div class="flexbox">
            <div class="inputBox">
                <span>Expiry Month</span>
                <select name="cmonth" class="month-input" required>
                    <option value="" disabled <% if (p != null && p.getCmonth() == null) out.print("selected"); %>>Select Month</option>          
                    <option value="01" <% if (p != null && "01".equals(p.getCmonth())) out.print("selected"); %>>1</option>
                    <option value="02" <% if (p != null && "02".equals(p.getCmonth())) out.print("selected"); %>>2</option>
                    <option value="03" <% if (p != null && "03".equals(p.getCmonth())) out.print("selected"); %>>3</option>
                    <option value="04" <% if (p != null && "04".equals(p.getCmonth())) out.print("selected"); %>>4</option>
                    <option value="05" <% if (p != null && "05".equals(p.getCmonth())) out.print("selected"); %>>5</option>
                    <option value="06" <% if (p != null && "06".equals(p.getCmonth())) out.print("selected"); %>>6</option>
                    <option value="07" <% if (p != null && "07".equals(p.getCmonth())) out.print("selected"); %>>7</option>
                    <option value="08" <% if (p != null && "08".equals(p.getCmonth())) out.print("selected"); %>>8</option>
                    <option value="09" <% if (p != null && "09".equals(p.getCmonth())) out.print("selected"); %>>9</option>
                    <option value="10" <% if (p != null && "10".equals(p.getCmonth())) out.print("selected"); %>>10</option>
                    <option value="11" <% if (p != null && "11".equals(p.getCmonth())) out.print("selected"); %>>11</option>
                    <option value="12" <% if (p != null && "12".equals(p.getCmonth())) out.print("selected"); %>>12</option>
                </select>       
            </div>

            <div class="inputBox">
                <span>Expiry Year</span>
                <select class="year-input" name="cyear" required>
                    <option value="" disabled <% if (p != null && p.getCyear() == null) out.print("selected"); %>>Select Year</option>
                    <option value="2024" <% if (p != null && "2024".equals(p.getCyear())) out.print("selected"); %>>2024</option>
                    <option value="2025" <% if (p != null && "2025".equals(p.getCyear())) out.print("selected"); %>>2025</option>
                    <option value="2026" <% if (p != null && "2026".equals(p.getCyear())) out.print("selected"); %>>2026</option>
                    <option value="2027" <% if (p != null && "2027".equals(p.getCyear())) out.print("selected"); %>>2027</option>
                    <option value="2028" <% if (p != null && "2028".equals(p.getCyear())) out.print("selected"); %>>2028</option>
                    <option value="2029" <% if (p != null && "2029".equals(p.getCyear())) out.print("selected"); %>>2029</option>
                    <option value="2030" <% if (p != null && "2030".equals(p.getCyear())) out.print("selected"); %>>2030</option>    
                </select>
            </div>

            <div class="inputBox">
                <span>CVV</span>
                <input type="text" maxlength="4" class="cvv-input" name="cvv" placeholder="CVV" value="<%= p != null ? p.getCvv() : "" %>" required>       
            </div>      
        </div>

        <button type="submit" class="submit-btn">Save the new details</button>
    </form>

    <% if (errorMessage != null) { %>
        <div class="error-message"><%= errorMessage %></div>
    <% } %>
</div>

<script src='#'></script>

</body>
</html>
