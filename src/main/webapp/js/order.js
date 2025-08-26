
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
