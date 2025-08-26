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