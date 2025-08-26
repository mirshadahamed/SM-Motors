


    function validateForm() {
        var name = document.getElementById("uname").value;
        var mail = document.getElementById("mail").value;
        var password = document.getElementById("password").value;
        var phoneNumber = document.getElementById("num").value;

        if (name.trim() === "") {
            alert("Please enter your name.");
            return false;
        }

        // Email validation
        var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailPattern.test(mail)) {
            alert("Please enter a valid email address.");
            return false;
        }

        if (password.length < 6) {
            alert("Password must be at least 6 characters long.");
            return false;
        }

        // Phone number validation
        var phonePattern = /^\d{10}$/;
        if (phoneNumber !== "" && !phonePattern.test(phoneNumber)) {
            alert("Phone number must be exactly 10 digits.");
            return false;
        }

        return true;
    }

