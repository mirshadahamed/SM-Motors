<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PAY here</title>
<link rel="stylesheet" href="css\Payment.css">
 <script src="js/order.js" defer></script>
</head>


<body>

    <div class="container">

       <jsp:include page="header2.jsp" />
      
      <button type="button" class="submit-btn" style="background-color: brown;" onclick="window.location.href='ViewPayments.jsp'">
       View My Payments
    </button>
      

        <form action="Payment"  method="POST"  onsubmit="return validatePaymentForm()">
        
            <center><h2>ENTER YOUR Details</h2></center>  

            <div class="inputBox">
                <input type="text" name="payname" placeholder="NAME" required>
            </div>
            <div class="inputBox">
                <input type="text" name="mail" placeholder="EMAIL" required>
            </div>
            <div class="inputBox">
                <input type="text" maxlength="25"  name="remark" placeholder="Remarks " required>
            </div>
            <div class="inputBox">
                <input type="text" name="amount" placeholder="Amount">
            </div>
              <br>
            
              <center><h2>PAY HERE !</h2></center>  

            <div class="inputBox">
                <span>card number</span>
                <input type="text" maxlength="16" name="cnum" class="card-number-input" placeholder="CARD NUMBER" required>
            </div>

            <div class="inputBox">
                <span>name on card</span>
                <input type="text" class="card-holder-input" name="cname" placeholder="CARD NAME" required>
            </div>

            <div class="flexbox">

                <div class="inputBox">
                    <span>expiry mm </span>
                    <select type="number"  id="" name="cmonth" class="month-input" required>
                        <option value="month" selected disabled>month</option>          
                        <option value="01">1</option>
                        <option value="02">2</option>
                        <option value="03">3</option>
                        <option value="04">4</option>
                        <option value="05">5</option>
                        <option value="06">6</option>
                        <option value="07">7</option>
                        <option value="08">8</option>
                        <option value="09">9</option>
                        <option value="10">10</option>
                        <option value="11">11</option>
                        <option value="12">12</option>
                    </select>       
                </div>

                <div class="inputBox">
                    <span>expiry yy</span>
                    <select  id="" class="year-input" name="cyear" required>
                        <option value="year" selected disabled> year </option>
                        <option value="2024"> 2024</option>
                        <option value="2025"> 2025</option>
                        <option value="2026"> 2026</option>
                        <option value="2027"> 2027</option>
                        <option value="2028"> 2028</option>
                        <option value="2029"> 2029</option>
                        <option value="2030"> 2030</option>    
                    </select>
                </div>

                <div class="inputBox">
                    <span> cvv </span>
                    <input type="text" maxlength="3" class="cvv-input" name="cvv" placeholder="CVV" required>       
                </div>      

            </div>

            <button type="submit"  class="submit-btn">
                <a href = '#' style = 'color: white; text-decoration: none;'> </a> 
                PAY   
            </button>
            
        </form>

    </div>
    
    <script > 
    
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

    
    
    </script>

    </body>
</html> --%>




<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Secure Payment</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
<style>
    :root {
        --primary-color: #4361ee;
        --secondary-color: #3f37c9;
        --success-color: #4cc9f0;
        --danger-color: #f72585;
        --light-color: #f8f9fa;
        --dark-color: #212529;
    }
    
    * {
        box-sizing: border-box;
        margin: 0;
        padding: 0;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }
    
    body {
        background-color: #f5f7fa;
        color: var(--dark-color);
        line-height: 1.6;
    }
    
    .container {
        max-width: 600px;
        margin: 30px auto;
        padding: 30px;
        background: white;
        border-radius: 15px;
        box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
    }
    
    .header {
        text-align: center;
        margin-bottom: 30px;
    }
    
    .header h2 {
        color: var(--primary-color);
        margin-bottom: 10px;
    }
    
    .header p {
        color: #6c757d;
    }
    
    .form-section {
        margin-bottom: 25px;
    }
    
    .section-title {
        font-size: 18px;
        color: var(--primary-color);
        margin-bottom: 15px;
        padding-bottom: 5px;
        border-bottom: 1px solid #e9ecef;
    }
    
    .input-group {
        margin-bottom: 20px;
        position: relative;
    }
    
    .input-group label {
        display: block;
        margin-bottom: 8px;
        font-weight: 500;
        color: #495057;
    }
    
    .input-group input, 
    .input-group select {
        width: 100%;
        padding: 12px 15px;
        border: 1px solid #ced4da;
        border-radius: 8px;
        font-size: 16px;
        transition: all 0.3s;
    }
    
    .input-group input:focus, 
    .input-group select:focus {
        border-color: var(--primary-color);
        box-shadow: 0 0 0 3px rgba(67, 97, 238, 0.2);
        outline: none;
    }
    
    .input-group .icon {
        position: absolute;
        right: 15px;
        top: 40px;
        color: #6c757d;
    }
    
    .flex-container {
        display: flex;
        gap: 15px;
    }
    
    .flex-container .input-group {
        flex: 1;
    }
    
    .btn {
        display: inline-block;
        padding: 12px 24px;
        border: none;
        border-radius: 8px;
        font-size: 16px;
        font-weight: 500;
        cursor: pointer;
        text-align: center;
        transition: all 0.3s;
        text-decoration: none;
    }
    
    .btn-primary {
        background-color: var(--primary-color);
        color: white;
        width: 100%;
    }
    
    .btn-primary:hover {
        background-color: var(--secondary-color);
    }
    
    .btn-secondary {
        background-color: #6c757d;
        color: white;
        width: 100%;
        margin-bottom: 20px;
    }
    
    .btn-secondary:hover {
        background-color: #5a6268;
    }
    
    .card-icons {
        display: flex;
        gap: 10px;
        margin-top: 5px;
    }
    
    .card-icons img {
        height: 25px;
    }
    
    .tooltip {
        position: relative;
        display: inline-block;
        margin-left: 5px;
    }
    
    .tooltip .tooltiptext {
        visibility: hidden;
        width: 200px;
        background-color: #555;
        color: #fff;
        text-align: center;
        border-radius: 6px;
        padding: 5px;
        position: absolute;
        z-index: 1;
        bottom: 125%;
        left: 50%;
        margin-left: -100px;
        opacity: 0;
        transition: opacity 0.3s;
        font-size: 12px;
    }
    
    .tooltip:hover .tooltiptext {
        visibility: visible;
        opacity: 1;
    }
    
    @media (max-width: 768px) {
        .container {
            padding: 20px;
            margin: 20px;
        }
        
        .flex-container {
            flex-direction: column;
            gap: 0;
        }
    }
</style>
</head>

<body>
    <div class="container">
        <div class="header">
            <h2><i class="fas fa-lock"></i> Secure Payment</h2>
            <p>Complete your purchase with confidence</p>
        </div>

        <a href="Paymentboard" class="btn btn-secondary">
            <i class="fas fa-history"></i> View My Payment History
        </a>

        <form action="Payment" method="POST" onsubmit="return validatePaymentForm()">
            <div class="form-section">
                <h3 class="section-title"><i class="fas fa-user-circle"></i> Personal Information</h3>
                
                <div class="input-group">
                    <label for="payname">Full Name</label>
                    <input type="text" id="payname" name="payname" placeholder="John Doe" required>
                    <i class="fas fa-user icon"></i>
                </div>
                
                <div class="input-group">
                    <label for="mail">Email Address</label>
                    <input type="text" id="mail" name="mail" placeholder="john@example.com" required>
                    <i class="fas fa-envelope icon"></i>
                </div>
                
                <div class="input-group">
                    <label for="remark">Payment Note <span class="tooltip"><i class="fas fa-info-circle"></i>
                        <span class="tooltiptext">Add any special instructions or reference for this payment</span>
                    </span></label>
                    <input type="text" id="remark" maxlength="25" name="remark" placeholder="e.g. Monthly subscription">
                </div>
                
                <div class="input-group">
                    <label for="amount">Amount</label>
                    <input type="text" id="amount" name="amount" placeholder="0.00">
                    <i class="fas fa-dollar-sign icon"></i>
                </div>
            </div>
            
            <div class="form-section">
                <h3 class="section-title"><i class="far fa-credit-card"></i> Payment Details</h3>
                
                <div class="input-group">
                    <label for="cnum">Card Number</label>
                    <input type="text" id="cnum" maxlength="16" name="cnum" class="card-number-input" placeholder="1234 5678 9012 3456" required>
                    <i class="far fa-credit-card icon"></i>
                    <div class="card-icons">
                        <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/visa/visa-original.svg" alt="Visa">
                        <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/mastercard/mastercard-original.svg" alt="Mastercard">
                        <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/apple/apple-original.svg" alt="Apple Pay">
                    </div>
                </div>
                
                <div class="input-group">
                    <label for="cname">Name on Card</label>
                    <input type="text" id="cname" class="card-holder-input" name="cname" placeholder="JOHN DOE" required>
                </div>
                
                <div class="flex-container">
                    <div class="input-group">
                        <label for="cmonth">Expiration Date</label>
                        <select id="cmonth" name="cmonth" class="month-input" required>
                            <option value="" selected disabled>Month</option>          
                            <option value="01">01 - January</option>
                            <option value="02">02 - February</option>
                            <option value="03">03 - March</option>
                            <option value="04">04 - April</option>
                            <option value="05">05 - May</option>
                            <option value="06">06 - June</option>
                            <option value="07">07 - July</option>
                            <option value="08">08 - August</option>
                            <option value="09">09 - September</option>
                            <option value="10">10 - October</option>
                            <option value="11">11 - November</option>
                            <option value="12">12 - December</option>
                        </select>       
                    </div>
                    
                    <div class="input-group">
                        <label for="cyear">&nbsp;</label>
                        <select id="cyear" class="year-input" name="cyear" required>
                            <option value="" selected disabled>Year</option>
                            <option value="2024">2024</option>
                            <option value="2025">2025</option>
                            <option value="2026">2026</option>
                            <option value="2027">2027</option>
                            <option value="2028">2028</option>
                            <option value="2029">2029</option>
                            <option value="2030">2030</option>    
                        </select>
                    </div>
                    
                    <div class="input-group">
                        <label for="cvv">CVV <span class="tooltip"><i class="fas fa-question-circle"></i>
                            <span class="tooltiptext">3-digit code on back of your card</span>
                        </span></label>
                        <input type="text" id="cvv" maxlength="3" class="cvv-input" name="cvv" placeholder="123" required>
                        <i class="fas fa-lock icon"></i>
                    </div>      
                </div>
            </div>
            
            <button type="submit" class="btn btn-primary">
                <i class="fas fa-lock"></i> Complete Secure Payment
            </button>
        </form>
    </div>
    
    <script> 
    document.addEventListener('DOMContentLoaded', function() {
        // Friendly welcome message
        setTimeout(() => {
            alert("Welcome to our secure payment portal! Please enter your details to complete your transaction.");
        }, 500);
        
        // Format card number input
        const cardNumberInput = document.querySelector('input[name="cnum"]');
        cardNumberInput.addEventListener('input', function(e) {
            let value = e.target.value.replace(/\s+/g, '');
            if (value.length > 0) {
                value = value.match(new RegExp('.{1,4}', 'g')).join(' ');
            }
            e.target.value = value;
        });
        
        // Format amount input
        const amountInput = document.querySelector('input[name="amount"]');
        amountInput.addEventListener('blur', function(e) {
            let value = parseFloat(e.target.value);
            if (!isNaN(value)) {
                e.target.value = value.toFixed(2);
            }
        });
    });
    
    function validatePaymentForm() {
        const cardNumber = document.querySelector('input[name="cnum"]').value.replace(/\s+/g, '');
        const cardPattern = /^\d{16}$/; 
        
        if (!cardPattern.test(cardNumber)) {
            alert("Please enter a valid 16-digit card number.");
            return false;
        }

        const cvv = document.querySelector('input[name="cvv"]').value;
        const cvvPattern = /^\d{3}$/; 
        if (!cvvPattern.test(cvv)) {
            alert("Please enter a valid 3-digit CVV code.");
            return false;
        }

        const amount = document.querySelector('input[name="amount"]').value;
        if (!amount || isNaN(amount) {
            alert("Please enter a valid payment amount.");
            return false;
        }

        return true; 
    }
    </script>
</body>
</html>