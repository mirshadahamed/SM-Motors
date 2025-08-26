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