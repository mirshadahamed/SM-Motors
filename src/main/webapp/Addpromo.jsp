<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Promo</title>
       <link rel="stylesheet" href="css/promo.css">
       
</head>

<body>

     <<button class="contact-form-btn" onclick="window.location.href='Addpromoviews'"> Current Promo Details</button>
     <br>
    <div class="contact-in">
       <center><h1>Promo Ads Management</h1></center>
       
            
     
        <form id="promoForm" action="Addpromo" method="POST" onsubmit="return validatePromoForm()" > 
        
          
            <label for="images">Promocode:</label>
            <input type="text" id="pcode" name="pcode" placeholder="Promo00x" required class="contact-form-txt"> 
            <br> 
            <label for="promoTitle">Promo Title:</label>
            <input type="text" id="promoTitle" name="promoTitle" placeholder="Promo Title" required class="contact-form-txt">
              <br>
            <label for="promoDescription">Promo Description:</label>
            <input type="text" id="promoDescription" name="promoDescription" placeholder="Promo Description" required class="contact-form-txt">
              <br>
            <label for="promoDate">Promo Date:</label>
            <input type="date" id="promoDate" name="promoDate" required class="contact-form-txt">
              <br>
               <br>
            <label for="promoDate">Promo End Date:</label>
            <input type="date" id="promoEndDate" name="promoend" required class="contact-form-txt">
              <br>
            <button type="submit" class="contact-form-btn">Add Promo</button>
        </form>
        
        <script>
        alert("ADD new promo for users");

        function validatePromoForm() {
            var promoCode = document.getElementById('pcode').value.trim();
            var promoCodePattern = /^p\d{3}$/i; // Case-insensitive

            if (!promoCodePattern.test(promoCode)) {
                alert("Promo code must follow the format: PXXX");
                return false;
            }

            var promoStartDate = new Date(document.getElementById('promoDate').value);
            var promoEndDate = new Date(document.getElementById('promoEndDate').value);
            
          
            if (isNaN(promoEndDate.getTime()) || promoEndDate == promoStartDate) {
                alert("Promo end date must be after the promo start date & minimum promo duration One day");
                
                return false;
            }
            if (isNaN(promoEndDate.getTime()) || promoEndDate <= promoStartDate) {
                alert("Promo end date must be after the promo start date & minimum promo duration One day");
                
                return false;
            }
           

            return true; 
        }
        </script>
    </div>

</body>
</html>
