alert("Update promo for users");

function validatePromoForm() {

 
    var promoCode = document.getElementById('pcode').value;
    var promoCodePattern = /^p\d{3}$/;

    if (!promoCodePattern.test(promoCode)) {
        alert("Promo code must follow the format:  (format PXXX).");
        return false;
    }

   
    var promoStartDate = new Date(document.getElementById('promoDate').value);
    var today = new Date();
    today.setHours(0, 0, 0, 0); 
    if (promoStartDate < today) {
        alert("Promo start date cannot be in the past.");
        return false;
    }

    
    var promoEndDate = new Date(document.getElementById('promoEndDate').value);
    if (promoEndDate <= promoStartDate) {
        alert("Expiration date must be after the promo start date.");
        return false;
    }
    var promoEndDate = new Date(document.getElementById('promoEndDate').value);
    if (promoEndDate >= promoStartDate) {
        alert("Expiration date must be after the promo start date.");
        return false;
    }

    return true; 
}
