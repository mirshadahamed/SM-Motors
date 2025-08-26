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
        <script src = 'theme.js' defer></script> 
        <link rel="stylesheet" type="text/css" href="header.css"> 
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0&icon_names=person" />        </head>
        <body>      

       
            <nav class="navigation">
                <a href="Home.jsp" class="logo">
                    <span>SM</span>Motors
                </a>
                
               
        
                <label for="menu-btn" class="menu-icon">
                    <span class="nav-icon"></span>
                </label>
        
                <!--menu-------->
                <ul class="menu">
                    <li><a href="Home.jsp" class="active">Home</a></li>
                    <li><a href="log.jsp">Categories</a></li>
                    <li><a href="Feedbackpage">User feedbacks</a></li>
                    <li><a href="log.jsp">Feedback</a></li>
                    <li><a href="AboutUs.jsp">About&nbsp;Us</a></li>
                    <li><a href="log.jsp">Sign&nbsp;Up</a></li>
                    
                    
                    <!-- <span class="material-symbols-outlined">person</span>  -->
                </ul>
               
            </nav>
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
                    <a href = 'log.jsp' style = 'color: red'>
                        Click here to View about today's best deals
                    </a>
                </h3>

            </div>
        </section>

    
           
    
           
          
    
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
                        <a href="Home.jsp" class="cart-btn">
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
                      
                        <a href="Home.jsp" class="cart-btn">
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
                        <a href="Home.jsp" class="cart-btn">
                            <i class="fas fa-shopping-bag"></i> for more
                        </a>
                        <a class="like-btn">
                            <i class="far fa-heart"></i>
                        </a>
                    </div>
                         
                </div>
            </section>
            
    
            <!-- special parts section -->
            <section id="popular-bundle-pack">
               
                <div class="product-heading">
                    <h3>Parts for Here !</h3>
                </div>
                <div class="product-container">
    
                    <div class="product-box">
                        <img src="https://image.made-in-china.com/202f0j00zGaqTLoIjtbH/SENP-Car-Parts-Front-Bumper-Support-Bracket-Wholesale-Auto-Spare-Parts-L11G807883-Bumper-Support-Auto-Parts-Electric-Car-Body-Parts-ID4-ID4-2021-2023.webp">
                        <strong>Car</strong>
                        <span class="quantity">Deal !!</span>
                        <span class="price">8500/=</span>
                        <a href="Home.jsp" class="cart-btn">
                            <i class="fas fa-shopping-bag"></i> for more
                        </a>
                        <a class="like-btn">
                            <i class="far fa-heart"></i>
                        </a>
                    </div>
                   
                    <div class="product-box">
                        <img  src="https://thumbs.dreamstime.com/z/spare-parts-car-set-timing-belt-rollers-cooling-pump-white-background-kit-timing-belt-rollers-144337798.jpg?w=992">
                        <strong>Bike</strong>
                        <span class="quantity">Deal !!</span>
                        <span class="price">25000/=</span>
                        <a href="Home.jsp" class="cart-btn">
                            <i class="fas fa-shopping-bag"></i> for more
                        </a>
                        <a class="like-btn">
                         <i class="far fa-heart"></i>
                        </a>
                    </div>
                    
                    <div class="product-box">
                        <img  src="https://image.made-in-china.com/202f0j00zGaqTLoIjtbH/SENP-Car-Parts-Front-Bumper-Support-Bracket-Wholesale-Auto-Spare-Parts-L11G807883-Bumper-Support-Auto-Parts-Electric-Car-Body-Parts-ID4-ID4-2021-2023.webp">
                        <strong>Three Wheeler</strong>
                        <span class="quantity">Deal !!</span>
                        <span class="price">25000/=</span>
                        <a href="Home.jsp" class="cart-btn">
                            <i class="fas fa-shopping-bag"></i> for more
                        </a>
                        <a class="like-btn">
                            <i class="far fa-heart"></i>
                        </a>
                    </div>      
                </div>
            </section>
           
    
    
            
            <section id="clients">
              
                <div class="client-heading">
                    <h3>Our Customers Comments here !</h3>
                </div>
               
                <div class="client-box-container">
                    
                    <div class="client-box">
                        <div class="client-profile">
    
                            <div class="profile-text">
                                <strong>Verjith</strong>
                                <span>Customer</span>
                            </div>
                        </div>
                        <p>feedback ! input</p>
                    </div>
    
                    <div class="client-box">
                        <div class="client-profile">                       
                            <div class="profile-text">
                                <strong>Hinam</strong>
                                <span>Dealer</span>
                            </div>
                        </div>
                        <p>feedback ! input</p>
                    </div>
    
                   <div class="client-box">
                        <div class="client-profile">
                            <div class="profile-text">
                                <strong>Mirshadh</strong>
                                <span>Customer</span>
                            </div>
                        </div>
                        <p>feedback ! input</p>
                    </div>
    
                </div>
            </section>
            
    
    
    
    
    
    
            <section id="category">
    
               
                <div class="category-heading">
                    <h2>  
                        All category
                    </h2>
                </div>
    
                <!--box-container---------->
                <div class="category-container">
    
                   <!-- parts1 -->
                    <a class="category-box"  href = 'images\light.jpg'>
                        <img  src="images\light.jpg">
                        <span>Lights</span>
                    </a>
                    
                    <!-- parts2 -->
                    <a class="category-box"  href = 'images\4763.jpg'>
                        <img src="images\29019.jpg">
                        <span>tyres</span>
                    </a>
                    
                    <!-- parts3 -->
                    <a class="category-box"  href = 'images\product1 (2).jpg'>
                        <img  src="images\29019.jpg">
                        <span>glasses</span>
                    </a>
                    
                    <!-- parts4 -->
                    <a class="category-box" href = 'images\headlight-lamp-car.jpg'>
                        <img  src="images\29019.jpg">
                        <span>Cleaning items</span>
                    </a>
                    
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
                        <a href="#"><span>SM</span>Motors</a>
                        <!--social----->
                        <div class="footer-social">
                            <a href="https://www.facebook.com/"><i class="fa-brands fa-facebook"></i></a>
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
                   
                </div>
                
                </div>
                
            </footer>
            
            
        </body>
    </html>