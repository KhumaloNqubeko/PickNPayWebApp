<%-- 
    Document   : bakery_out
    Created on : Jul 25, 2017, 9:07:51 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Home Page</title>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="style.css" type="text/css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body class="body">
        <header class="mainHeader">
            <center>
                <form method="get" action="SearchProduct.do">
                    <input type="text" name="search" placeholder="Search..." id="search-box" />
                </form>
            </center>
            <img src="Pictures/logo1.jpg" alt=""/>
            <div id="centeredmenu">
                <nav>
                    <ul>
                        <li><a href="FetchStockOut.do">Shop</a></li>
                        <li><a href="#">Smart Shopper</a></li>
                        <li><a href="#">Contact</a></li>
                        <li><a href="login.html">Login</a></li>
                        <li><a href="register.html">Register</a></li>
                    </ul>
                </nav>
            </div>
        </header>

        <div class="mainContent">
            <div class="content">
                <article class="topcontent">
                    <header>
                        <h2><a href="#" title="First Post">Our Bakery</a></h2>
                    </header>
                    <footer>
                        <p class="post-info">Login to be able to select single items</p>
                    </footer>
                    <content>
                        <div class="slideshow-container">

                            <div class="mySlides fade">
                                <div class="numbertext">1 / 4</div>
                                <img src="Pictures/New folder/1.jpg" width="600" height="600" alt="">
                                <div class="text">Bakery 1</div>
                            </div>

                            <div class="mySlides fade">
                                <div class="numbertext">2 / 4</div>
                                <img src="Pictures/New folder/2.jpg" width="600" height="600" alt="">
                                <div class="text">Bakery 2</div>
                            </div>

                            <div class="mySlides fade">
                                <div class="numbertext">3 / 4</div>
                                <img src="Pictures/New folder/3.jpg" width="600" height="600" alt="">
                                <div class="text">Bakery 3</div>
                            </div>
                            <div class="mySlides fade">
                                <div class="numbertext">4 / 4</div>
                                <img src="Pictures/New folder/4.jpg" width="600" height="600" alt="">
                                <div class="text">Bakery 4</div>
                            </div>
                        </div>
                        <br>

                        <div style="text-align:center">
                            <span class="dot"></span> 
                            <span class="dot"></span> 
                            <span class="dot"></span> 
                            <span class="dot"></span> 
                        </div>

                    </content>
                </article>
            </div>
        </div>
        <aside class="top-sidebar">
            <article>
                <h2>Grocery</h2>
                <content>
                    <a href="FetchBakery.do">Bakery</a><br>
                    <a href="#">Beverages</a><br>
                    <a href="#">Butchery</a><br>
                    <a href="#">Dry Grocery</a><br>
                    <a href="#">Frozen Food</a><br>
                </content>
            </article>
        </aside>
        <aside class="middle-sidebar">
            <article>
                <h2>HouseHold Cleaning</h2>
                <content>
                    <a href="#">Air and Fabric Fresheners</a><br>
                    <a href="#">Bleach</a><br>
                    <a href="#">Candles</a><br>
                    <a href="#">Cleaning Accessories</a><br>
                    <a href="#">Detergents</a><br>
                </content>
            </article>
        </aside>
        <aside class="bottom-sidebar">
            <article>
                <h2><a href="about.html">About Us</a></h2>
                <content>
                    <br>Pick n Pay Stores Limited, through its subsidiaries and associates, 
                    operates in the retail sector on the African continent.
                </content>
            </article>
        </aside>
        <footer class="mainFooter">
            <p>Copyright &copy; <a href="#" title="1stwebdesigner">Khumalo</a></p>
        </footer>
        <footer>
            <style>
                body{
                    background-image: url("Pictures/b7.gif");
                    color: #000305;
                    font-size: 87.5%;
                    font-family: Arial,'Lucida Sans Unicode';
                    line-height: 1.5;
                    text-align: left;
                }
                a{
                    text-decoration: none;
                }
                a:link, a:visited{
                    color: #CF5C3F;
                }
                a:hover, a:active{
                    background-color: #CF5C3F;
                    color: #FFF;
                }
                .body{
                    margin: 0 auto;
                    width: 70%;
                    clear: both;
                }
                .mainHeader img{
                    width: 30%;
                    height: auto;
                    margin: 2% 0;
                }
                .mainHeader nav{
                    background-color: #262B65;
                    height: 40px;
                    border-radius: 5px;
                }
                .mainHeader nav ul{
                    list-style: none;
                    margin: 0 auto;
                }
                .mainHeader nav ul li{
                    float: left;
                    display: inline;
                }
                .mainHeader nav a:link, .mainHeader nav a:visited{
                    color: #FFF;
                    display: inline-block;
                    padding: 10px 25px;
                    height: 40px;
                }

                .mainHeader nav a:hover, .mainHeader nav a:active,
                .mainHeader nav .active a:link, .mainHeader nav.active a:visited{
                    background-color: #2B339C;
                    text-shadow: none;
                }
                .mainHeader nav ul li a{
                    border-radius: 5px;
                }
                .mainConent{
                    line-height: 25px;
                    border-radius: 5px;
                    overflow: hidden;
                }
                .content{
                    width: 70%;
                    float: left;
                }
                .topcontent{
                    background-color: #FFF;
                    border-radius: 5px;
                    padding: 3% 5%;
                    margin-top: 2%;
                }
                .bottomcontent{
                    background-color: #FFF;
                    border-radius: 5px;
                    padding: 3% 5%;
                    margin-top: 2%;
                }
                .top-sidebar{
                    width: 21%;
                    float: left;
                    background-color: #FFF;
                    margin: 2% 0 2% 3%;
                    padding: 2% 3%;
                }
                .post-info{
                    font-style: italic;
                    color: #999;
                    font-size: 85%;
                }
                .middle-sidebar{
                    width: 21%;
                    float: left;
                    background-color: #FFF;
                    margin-left: 3%;
                    margin-bottom: 2%;
                    padding: 2% 3%;
                }
                .bottom-sidebar{
                    width: 21%;
                    float: left;
                    background-color: #FFF;
                    margin-left: 3%;
                    margin-bottom: 2%;
                    padding: 2% 3%;
                }
                .mainFooter{
                    width: 100%;
                    float: left;
                    border-radius: 5px;
                    background-color: #262B65;
                    margin: 2% 0;
                }
                .mainFooter p{
                    width: 92%;
                    margin: 2% auto;
                    color: #FFF;
                }
                input[type=text] {
                    width: 90px;
                    box-sizing: border-box;
                    border: 2px solid #ccc;
                    border-radius: 4px;
                    font-size: 12px;
                    background-color: white;
                    background-image: url("Pictures/searffdchicon.jpg");
                    background-position: 7px 7px; 
                    background-repeat: no-repeat;
                    padding: 6px 10px 6px 20px;
                    -webkit-transition: width 0.4s ease-in-out;
                    transition: width 0.4s ease-in-out;
                }
                input[type=text]:focus {
                    width: 90%;
                }
                #search-box{
                    float: right;
                }
                div.relative{
                    position: relative;
                    left: 30px;
                    top: 30px;
                }
                * {box-sizing:border-box}
                body {font-family: Verdana,sans-serif;}
                .mySlides {display:none}

                /* Slideshow container */
                .slideshow-container {
                    max-width: 1000px;
                    position: relative;
                    margin: auto;
                }

                /* Caption text */
                .text {
                    color: #f2f2f2;
                    font-size: 15px;
                    padding: 8px 12px;
                    position: absolute;
                    bottom: 8px;
                    width: 100%;
                    text-align: center;
                }

                /* Number text (1/3 etc) */
                .numbertext {
                    color: #f2f2f2;
                    font-size: 12px;
                    padding: 8px 12px;
                    position: absolute;
                    top: 0;
                }

                /* The dots/bullets/indicators */
                .dot {
                    height: 13px;
                    width: 13px;
                    margin: 0 2px;
                    background-color: #bbb;
                    border-radius: 50%;
                    display: inline-block;
                    transition: background-color 0.6s ease;
                }

                .active {
                    background-color: #717171;
                }

                /* Fading animation */
                .fade {
                    -webkit-animation-name: fade;
                    -webkit-animation-duration: 1.5s;
                    animation-name: fade;
                    animation-duration: 1.5s;
                }

                @-webkit-keyframes fade {
                    from {opacity: .4} 
                    to {opacity: 1}
                }

                @keyframes fade {
                    from {opacity: .4} 
                    to {opacity: 1}
                }

                /* On smaller screens, decrease text size */
                @media only screen and (max-width: 300px) {
                    .text {font-size: 11px}
                }
            </style>
            <script>
                var slideIndex = 0;
                showSlides();

                function showSlides() {
                    var i;
                    var slides = document.getElementsByClassName("mySlides");
                    var dots = document.getElementsByClassName("dot");
                    for (i = 0; i < slides.length; i++) {
                        slides[i].style.display = "none";
                    }
                    slideIndex++;
                    if (slideIndex > slides.length) {
                        slideIndex = 1
                    }
                    for (i = 0; i < dots.length; i++) {
                        dots[i].className = dots[i].className.replace(" active", "");
                    }
                    slides[slideIndex - 1].style.display = "block";
                    dots[slideIndex - 1].className += " active";
                    setTimeout(showSlides, 2000); // Change image every 2 seconds
                }
            </script>
        </footer>
    </body>
</html>
