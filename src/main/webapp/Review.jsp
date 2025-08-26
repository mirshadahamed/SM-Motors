<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Review</title>
    <link rel="stylesheet" href="css/review.css"> 
     
</head>
<body>

    
    <div class="contact-in">
       <center><h1>Give Review</h1></center>
       
        <form id="promoForm" action="Addreview" method="post"  onsubmit="return validateReviewForm()"> 
            <label for="pcode">Review ID</label>
            <input type="text" id="pcode" name="pcode" placeholder="Review Code" required class="contact-form-txt"> 
            <br> 
            <label for="promoTitle">About Product type</label>
            <input type="text" id="promoTitle" name="rtype" placeholder="review product" required class="contact-form-txt">
            <br>
            <label for="promoDescription">User name</label>
            <input type="text" id="promoDescription" name="pname" placeholder="User name" required class="contact-form-txt">
            <br>
            <label for="promoDescription">Review message</label>
            <input type="text" id="promoDescription" name="msg" placeholder="review" required class="contact-form-txt" min="10">
            <br>
            
            <label for="userRating">User Rating</label>
         
            <input type="checkbox" id="rate1" name="rate" value="1" class="Review">1 star
        
            <input type="checkbox" id="rate2" name="rate" value="2" class="Review">2 star
       
            <input type="checkbox" id="rate3" name="rate" value="3" class="Review">3 star
            
            <input type="checkbox" id="rate4" name="rate" value="4" class="Review">4 star
       
            <input type="checkbox" id="rate5" name="rate" value="5" class="Review">5 star
        
            <button type="submit" class="contact-form-btn">Give </button>
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
    </div>

</body>
</html>
