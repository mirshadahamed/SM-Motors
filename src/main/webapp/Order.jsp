<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order</title>
<link rel="stylesheet" href="css\order.css">
    
</head>
<body>

<body>

      <jsp:include page="header2.jsp" />
    <div class="contact-in">
        <div class="contact-form">
            <h1 align='center'>Enter Order Details For Place order</h1>
            
            <form class='address_form' action="Order" method="POST" onsubmit="return validate_form()">
                <div class="input-group">
                <input type="text" placeholder="Name" class="contact-form-txt"  name="name" id='name' required/>
               
                    <input type="text" placeholder="Address" class="contact-form-txt"  name="address" id='address' required/>
                     <input type="text" placeholder="Postal code" class="contact-form-txt"   name="o_id"maxlength="5"id='id' required/>
                    <input type="text" placeholder="Email-ID" class="contact-form-txt"  name="email" id='email' required/>
                </div>
                <div class="input-group">
                    <input type="text" placeholder="Contact No." class="contact-form-txt" name="phone" maxlength="10" id='phone' required/>
                    <input type="date" placeholder="Date (Format: dd/mm/yyyy)" class="contact-form-txt" name="o_date" id='date' required/>
                    <input type="time" placeholder="14.00" class="contact-form-txt" name="o_time"  id='time' required/>
                    
                </div>      
                 <button href="#" type="submit" class="contact-form-btn" id='submit'>Confirm </button>        
            </form>
            <br>
             <button href="" class="contact-form-btn" id='submit'><a href="Products.jsp" class="contact-form-btn" style = 'text-decoration: none;'>
                       Cancel</a></button>   
                        </div>
    </div>
    
    <script>

    alert("fill out the order details");
    function validate_form() {
       
    	
    	
        var email = document.getElementById('email').value;
        var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/; 
        if (!emailPattern.test(email)) {
            alert("Please enter a valid email address.");
            return false;
        }

        
        var phone = document.getElementById('phone').value;
        var phonePattern = /^\d{10}$/; 
        if (!phonePattern.test(phone)) {
            alert("Phone number must be exactly 10 digits.");
            return false;
        }

        
        var postalCode = document.getElementById('id').value;
        var postalCodePattern = /^\d+$/; 
        if (!postalCodePattern.test(postalCode)) {
            alert("Postal code must be numeric.");
            return false;
        }

       
        var orderDate = new Date(document.getElementById('date').value);
        var today = new Date();
        today.setHours(0, 0, 0, 0); 
        if (orderDate < today) {
            alert("The order date cannot be in the past.");
            return false;
        }

       
        return true;
    }

    
    
    
    
    
    </script>
</body>
</html>