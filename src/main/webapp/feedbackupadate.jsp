<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="vehicleSpare.Contact" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit Feedback</title>
    <link rel="stylesheet" href="css/contacustupdate.css">
</head>
<body>

<%
    String emailParam = request.getParameter("email");
    String errorMessage = null;
    Contact contact = null; 

    try {
        if (emailParam != null && !emailParam.isEmpty()) {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parts", "root", "nikshan");

            String query = "SELECT * FROM contactus WHERE email = ?";
            PreparedStatement pst = con.prepareStatement(query);
            pst.setString(1, emailParam); // Ensure emailParam is used

            ResultSet rs = pst.executeQuery();

            if (rs.next()) {
                
                contact = new Contact(
                    rs.getString("email"),
                    rs.getString("name"),
                    rs.getString("subject"),
                    rs.getString("phone"),
                    rs.getString("message")
                );
            } else {
                errorMessage = "No feedback found for the provided email.";
            }

           
            rs.close();
            pst.close();
            con.close();
        } else {
            errorMessage = "Email parameter is missing or invalid.";
        }
    } catch (SQLException e) {
        e.printStackTrace(); 
        errorMessage = "An error occurred while retrieving the feedback.";
    } catch (ClassNotFoundException e) {
        e.printStackTrace(); 
        errorMessage = "Database driver not found.";
    }
%>

<div class="container">
    <div class="wrapper">
        <h2>Edit Your Feedback</h2>
        
        <% if (errorMessage != null) { %>
            <div class="error_message"><%= errorMessage %></div>
        <% } else if (contact != null) { %>
            <form id="myform" action="Contactusupdate" method="POST" onsubmit="return validateReviewForm()">
                <div class="form-container">
                    <div class="user-details">
                        <div class="input_field">
                            <input type="text" placeholder="Email" name="email" id="email" value="<%= contact.getEmail() %>" required readonly>
                        </div>
                        <div class="input_field">
                            <input type="text" placeholder="Name" name="name" id="name" value="<%= contact.getName() %>" required>
                        </div>
                        <div class="input_field">
                            <input type="text" placeholder="Subject" name="subject" id="subject" value="<%= contact.getSubject() %>" required>
                        </div>
                        <div class="input_field">
                            <input type="text" placeholder="Phone" name="phone" id="phone" value="<%= contact.getPhone() %>" required>
                        </div>
                    </div>
                    <div class="feedback-message">
                        <div class="input_field">
                            <textarea placeholder="Message" id="message" name="message" required><%= contact.getMessage() %></textarea>
                        </div>
                    </div>
                </div>
                <button type="submit" class="btn">Update</button>
            </form>
            
           
               <script>
               function validateReviewForm() {
                 
                   var email = document.getElementById('email').value.trim();
                   var emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/; 
                   
                   
                     

                   if (!emailPattern.test(email)) {
                       alert("Please enter a valid email address.");
                       return false;
                   }

                 
                   var name = document.getElementById('name').value.trim();
                   if (name === "") {
                       alert("Please enter your name.");
                       return false;
                   }

                   
                   var subject = document.getElementById('subject').value.trim();
                   if (subject === "") {
                       alert("Please enter a subject.");
                       return false;
                   }

                  
                   var phoneNumber = document.getElementById('phone').value.trim();
                   var phonePattern = /^\d{10}$/; 

                   if (phoneNumber !== "" && !phonePattern.test(phoneNumber)) {
                       alert("Phone number must be exactly 10 digits.");
                       return false;
                   

                   
                   var message = document.getElementById('message').value.trim();
                   if (message === "") {
                       alert("Please enter your message.");
                       return false;
                   }

                   return true; 
               }
           </script>
   
        <% } %>
    </div>
</div>

</body>
</html>
