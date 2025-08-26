
function validate() {
    
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

  
    var name = document.getElementById('name').value;
    var subject = document.getElementById('subject').value;
    var message = document.getElementById('message').value;

    if (name.trim() === "" || subject.trim() === "" || message.trim() === "") {
        alert("Please fill out all required fields.");
        return false;
    }

    return true; 
}
