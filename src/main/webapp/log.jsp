<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOG in & register</title>

   <link rel="shortcut icon" type="image/jpg" href="css/log.css"/>
   <link type="text/css" rel="stylesheet"  href="css/log.css"  >

</head>
<body>

 <jsp:include page="header.jsp" />
   <section class="imp">
            <section>
            <div class="login show" id="one">
                <div class="textbox slide-left2">
                <div class="head">
                    <h1>                    
                        Sign In to SM motors                
                    </h1>
                    <ul>
                        <li>                          
                            <i class="fab fa-facebook-f" style = "cursor: pointer;"></i>                      
                        </li>
                        <li>
                           
                            <i class="fab fa-google-plus-g" style = "cursor: pointer;"></i>                       
                        </li>
                        <li>                          
                            <i class="fab fa-linkedin-in" style = "cursor: pointer;"></i>                      
                        </li>
                    </ul>
                    <h3 style = "cursor: pointer;">                      
                        or use your E-mail ID                  
                    </h3>
                </div>
                    <form action="Profile"    method="POST">
                        <input type="text" placeholder="EMAIL" name="mail" required>
                        <input type="password" placeholder="PASSWORD" name="password"  required>
                        <button id="b">   
                            <a href="AdministratorLogin.jsp" style = "cursor: pointer;">    
                                 log is As Admin
                            </a>
                        </button>
                        <button type="submit" class = 'sign_in_btn'>
                                SIGN IN
                            </a>
                        </button>
                    </form>
                </div>
            </div>

            <div class="sec show" id="two">
                <div class="textbox slide-left">
                <h1>                   
                    Not a member?                
                </h1>
                <p>                    
                    Sign up and start shopping.                
                </p>
                <button id="b1" style = "cursor: pointer;" class = 'prompt_sign_up'>                    
                    SIGN UP               
                </button>
                </div>
            </div>
        </section>
        
        <section>
            <div class="sec hide" id="three">
                <div class="textbox slide-left">
                    <h1>                        
                        Already a member?                   
                    </h1>
                <p>                    
                    Login to keep shopping.                
                </p>
                <button id="b2" style = "cursor: pointer;" class = 'prompt_sign_in'>                    
                    SIGN IN                
                </button>
                </div>
            </div>

            <div class="login hide" id="four">
                <div class="textbox slide-right">
                <div class="head">
                    <h1>                        
                        Create Account                     
                    </h1>
                    <ul>
                        <li>                            
                            <i class="fab fa-facebook-f" style = "cursor: pointer;"></i>                        
                        </li>
                        <li>                           
                            <i class="fab fa-google-plus-g" style = "cursor: pointer;"></i>                       
                        </li>
                        <li>                          
                            <i class="fab fa-linkedin-in" style = "cursor: pointer;"></i>                       
                        </li>
                    </ul>

                    <h3 style = "cursor: pointer;">                        
                        or use your E-mail ID                    
                    </h3>

                    </div>
                    <form action="Register"    method="POST"   onsubmit="return validateForm()">
                        <input type="text" placeholder="NAME"  id="uname" name="uname" required>                      
                        <br>
                        <input type="email" placeholder="EMAIL" id="mail" name="mail" required>                        
                        <br>
                        <input type="password" placeholder="PASSWORD" id="password" name="password" required>
                        <br>
                        <input type="text" name="num" id="num" placeholder="PHONE NO">
                        <br>
                        <button type="submit" style = "cursor: pointer;" value="Register" class = 'sign_up_btn'>SIGN UP
                            </a>                       
                        </button>
                    </form>


<script>
    function validateForm() {
        var name = document.getElementById("uname").value;
        var mail = document.getElementById("mail").value;
        var password = document.getElementById("password").value;
        var phoneNumber = document.getElementById("num").value;

        if (name.trim() === "") {
            alert("Please enter your name.");
            return false;
        }

       
        var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailPattern.test(mail)) {
            alert("Please enter a valid email address.");
            return false;
        }

        if (password.length < 6) {
            alert("Password must be at least 6 characters long.");
            return false;
        }

        var phonePattern = /^0\d{9}$/;
        if (phoneNumber !== "" && !phonePattern.test(phoneNumber)) {
            alert("Phone number must be exactly 10 digits. & start with zero");
            return false;
        }

        return true;
    }
</script>

                </div>
            </div>
        </section>
        </section>        
    <script src="js/log.js"></script>
</body>
</html>