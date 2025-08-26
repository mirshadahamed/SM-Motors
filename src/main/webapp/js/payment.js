

 alert("Make your payment here");
function validatePaymentForm() {
   
    var cardNumber = document.querySelector('input[name="cnum"]').value;
	
    var cardPattern = /^\d{16}$/; 
	
    if (!cardPattern.test(cardNumber)) {
        alert("Card number must be exactly 16 digits.");
        return false;
    }

    
    var cvv = document.querySelector('input[name="cvv"]').value;
    var cvvPattern = /^\d{3}$/; 
    if (!cvvPattern.test(cvv)) {
        alert("CVV must be exactly 3 digits.");
        return false;
    }

    return true; 
}
