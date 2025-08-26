<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<DOCTYPE html>

<html>

    <head>

    <meta charset="utf-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!--==Title==================================-->
    <title>
         
        SM motors

    </title>

    <link rel="stylesheet" type="text/css" href="css/HomePageCSS.css">
    <script src = 'Home Page JS.js' defer></script>  
    
    </head>

    <body>

       
      <jsp:include page="header2.jsp" />

        <!-- banner -->
             <section id="search-banner">
            <img alt="bg" class="bg-1" src="#">
            <img alt="bg" class="bg-1_rev" src="#">
            <img alt="bg-2" class="bg-2" src="#">
            <div class="search-banner-text">

                 <h1>
                    Your vehicle deserves the best.
                 </h1>
                <strong> 
                    #Smooth journey
                </strong>

             <!-- search -->
                
                <br>
                <strong> 
                    Promo 's Here
                </strong>

                <h3>
                    <a href = 'Addpromoview' style = 'color: red'>
                        Click here to View about today's best deals
                    </a>
                </h3>

            </div>
        </section>

       

   <!--Promos--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
  
<!-------Promos--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
       
 <!-- special parts section -->
     
        <section id="popular-bundle-pack">
           
            <div class="product-heading">
                <h3>Parts for here </h3>
            </div>
            <div class="product-container">

                <div class="product-box">
                    <img src="https://image.made-in-china.com/202f0j00zGaqTLoIjtbH/SENP-Car-Parts-Front-Bumper-Support-Bracket-Wholesale-Auto-Spare-Parts-L11G807883-Bumper-Support-Auto-Parts-Electric-Car-Body-Parts-ID4-ID4-2021-2023.webp">
                    <strong>Car</strong>
                    <span class="quantity">Sale</span>
                    <span class="price">8500/=</span>
                    <a href="Products.jsp" class="cart-btn">
                        <i class="fas fa-shopping-bag"></i> For More
                    </a>
                    <a class="like-btn">
                        <i class="far fa-heart"></i>
                    </a>
                </div>
               
                <div class="product-box">
                    <img  src="https://thumbs.dreamstime.com/z/spare-parts-car-set-timing-belt-rollers-cooling-pump-white-background-kit-timing-belt-rollers-144337798.jpg?w=992">
                    <strong>Bike</strong>
                    <span class="quantity">Sale</span>
                    <span class="price">25000/=</span>
                    <a href="Products.jsp" class="cart-btn">
                        <i class="fas fa-shopping-bag"></i>For More
                    </a>
                    <a class="like-btn">
                     <i class="far fa-heart"></i>
                    </a>
                </div>
                
                <div class="product-box">
                    <img  src="https://image.made-in-china.com/202f0j00zGaqTLoIjtbH/SENP-Car-Parts-Front-Bumper-Support-Bracket-Wholesale-Auto-Spare-Parts-L11G807883-Bumper-Support-Auto-Parts-Electric-Car-Body-Parts-ID4-ID4-2021-2023.webp">
                    <strong>Three Wheeler</strong>
                    <span class="quantity">Sale</span>
                    <span class="price">25000/=</span>
                    <a href="Products.jsp" class="cart-btn">
                        <i class="fas fa-shopping-bag"></i>For More
                    </a>
                    <a class="like-btn">
                        <i class="far fa-heart"></i>
                    </a>
                </div>      
            </div>
        </section>
        
 <!--parts--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->       
       <!--Feedbacks----------->
        
      <section id="clients">
          
            <div class="client-heading">
                <h3>Our Customers Comments here !</h3>
            </div>
           
            <div class="client-box-container">
                
                <div class="client-box">
                    <div class="client-profile">
                        <img alt="client" src="customer.jpg">
                        <div class="profile-text">
                         <a href="Feedbackpage"><span>Click here !</span></a> 
                        <a href="Feedbackpage"><span>Customer</span></a>                            
                        </div>
                    </div>
                    <p>feedback ! input</p>
                </div>

                <div class="client-box">
                    <div class="client-profile">
                        <img alt="client" src="customer.jpg">
                        <div class="profile-text">
                         <a href="Feedbackpage"><span>Click here !</span></a> 
                          <a href="Feedbackpage"> <span>Dealer</span></a> 
                           
                        </div>
                    </div>
                    <p>feedback ! input</p>
                </div>

               <div class="client-box">
                    <div class="client-profile">
                        <img alt="client" src="customer.jpg">
                        <div class="profile-text">
                          <a href="Feedbackpage"><span>Click here !</span></a> 
                           <a href="Feedbackpage"><span>Customer</span></a> 
                            
                        </div>
                    </div>
                    <p>feedback ! input</p>
                </div>

            </div>
        </section>
      
      <!-- -- -->
        <section id="category">

           
            <div class="category-heading">
                <h2>  
                    All category
                </h2>
            </div>

            <!--box-container---------->
            <div class="category-container">

               <!-- parts1 -->
                <a class="category-box"  href = 'Products.jsp'>
					<img  src="images\light.jpg">
					<span>Lights</span>
				</a>
				
                <!-- parts2 -->
                <a class="category-box"  href = 'Products.jsp'>
                    <img src="images\29019.jpg">
                    <span>tyres</span>
                </a>
                
                <!-- parts3 -->
                <a class="category-box"  href = 'Products.jsp'>
                    <img  src="images\29019.jpg">
                    <span>glasses</span>
                </a>
                
                <!-- parts4 -->
                <a class="category-box" href = 'Products.jsp'>
                    <img  src="images\29019.jpg">
                    <span>Cleaning items</span>
                </a>
                
            </div>
            
        </section>
<!--feedbacks--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
       <!-- parts1 -->
        <section id="popular-product">
            <div class="product-heading">
                <h3>Popular Product</h3>
               
            </div>
         
            <div class="product-container">
          
                <div class="product-box">
                    <img alt="" src="images\tyre.jpg">
                    <strong>Tyres</strong>
                    <span class="price">7999/=</span>
                    <a href="Products.jsp" class="cart-btn">
                        <i class="fas fa-shopping-bag"></i> for more
                    </a>
                    <a class="like-btn">
                        <i class="far fa-heart"></i>
                    </a>
                </div>
 
             
                <div class="product-box">
                    <img alt="" src="images\product.jpg">
                    <strong>Glasses</strong>
                    <span class="price">4599/=</span>
                  
                    <a href="Products.jsp" class="cart-btn">
                        <i class="fas fa-shopping-bag"></i> for more
                    </a>
                 
                    <a class="like-btn">
                        <i class="far fa-heart"></i>
                    </a>
                </div>


               
                <div class="product-box">
                    <img alt="" src="images\headlight-lamp-car.jpg">
                    <strong>Lights</strong>
                    <span class="price">3999/=</span>
                    <a href="Products.jsp" class="cart-btn">
                        <i class="fas fa-shopping-bag"></i> for more
                    </a>
                    <a class="like-btn">
                        <i class="far fa-heart"></i>
                    </a>
                </div>
                     
            </div>
        </section>
        

       

        


        










        <section id="partner">
            <!--heading------------>
            <div class="partner-heading">
                <h3>Our Trusted Partner</h3>
            </div>

         
            


      
        <!--==Footer=============================================-->
        <footer>
            <div class="footer-container">
                <!--logo-container------>
                <div class="footer-logo">
                    <a href="#"><span>Sm</span>Motors</a>
                    <!--social----->
                    <div class="footer-social">
                        <a href="https://www.facebook.com/"><i class="fab fa-facebook-f"></i></a>
                        <a href="https://twitter.com/?lang=en-in"><i class="fab fa-twitter"></i></a>
                        <a href="https://www.instagram.com/"><i class="fab fa-instagram"></i></a>
                        <a href="https://www.youtube.com/"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
                <!--links------------------------->
            <div class="footer-links">
                <strong>Product</strong>
                <ul>
                    <li><a href="#">tyres</a></li>
                    <li><a href="#">product</a></li>
                    <li><a href="#">spare</a></li>
                    <li><a href="#">parts</a></li>
                </ul>
            </div>
            <!--links------------------------->
            <div class="footer-links">
                <strong>Category</strong>
                <ul>
                    <li><a href="#">tyres</a></li>
                    <li><a href="#">product</a></li>
                    <li><a href="#">parts</a></li>
                    <li><a href="#">spare</a></li>
                </ul>
            </div>
            <!--links-------------------------->
            <div class="footer-links">
                <strong>Contact</strong>
                <ul>
                    <li><a href="#">Phone : 07711292365</a></li>
                    <li><a href="#">Email : sm@gmail.com</a></li>
                    <li><a href="#">our service</a></li>
                </ul>
				<br><p style="color: aliceblue;">Copyright Sm motors | All Rights Reserved</p>
            </div>
            </div>
        </footer>
    </body>
</html>
