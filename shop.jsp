<%-- 
    Document   : shop
    Created on : Jul 24, 2017, 2:52:48 PM
    Author     : User
--%>

<%@page import="za.co.reverside.entities.Product"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Shop</title>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="style.css" type="text/css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body class="body">
        <header class="mainHeader">
            <img src="Pictures/logo1.jpg" alt=""/>
            <nav>
                <ul>
                    <li><a href="home_in.html">Home</a></li>
                    <li><a href="#">Smart Shopper</a></li>
                    <li><a href="#">Contact</a></li>
                    <li><a href="index.html">Sign out</a></li>
                </ul>
            </nav>
        </header>
        
        <div class="mainContent">
            <div class="content">
                <article class="topcontent">
                    <header>
                        <h2><a href="#" title="First Post">Welcome</a></h2>
                    </header>
                    <%
                        String name = (String)session.getAttribute("name");
                    %>
                    <footer>
                        <p class="post-info">Hi, <%=name%></p>
                    </footer>
                    <%
                        List<Product> products = (List<Product>) session.getAttribute("drinks");

                        for (Product p : products) {

                    %>
                    <table>
                        <tr>
                            <td><img src="Pictures/<%=p.getImage()%>.jpg" /></td>
                        </tr>
                        <tr>
                            <td><b>Description: <%=p.getName()%></b></td><br>
                        </tr>
                        <tr>
                            <td><b>Price: R<%=p.getPrice()%></b></td>
                        </tr>
                        <tr>
                            <td>
                                <form action="AddToCart.do" method="POST">
                                    <table>
                                        <tr>
                                            <td>
                                                <div class="quantity">
                                                    <input type="number" name="qty" min="1" max="9" step="1" value="1">
                                                </div>
                                            </td>
                                            <td>
                                                <input type="text" name="desc" value="<%=p.getName()%>" hidden>
                                            </td>
                                            <td>
                                                <input type="text" name="price" value="<%=p.getPrice()%>" hidden>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><input type="submit" value="Add to Cart"/></td>
                                        </tr>
                                    </table>
                                </form>
                            </td>
                        </tr>
                    </table>                    
                    <%

                        }
                    %>
                </article>
            </div>
        </div>
        <aside class="top-sidebar">
            <article>
                <h2>Grocery</h2>
                <content>
                    <a href="#">Bakery</a><br>
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
                    background-image: url("Pictures/searchicon.png");
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
                .quantity {
                    position: relative;
                }

                input[type=number]::-webkit-inner-spin-button,
                input[type=number]::-webkit-outer-spin-button
                {
                    -webkit-appearance: none;
                    margin: 0;
                }

                input[type=number]
                {
                    -moz-appearance: textfield;
                }

                .quantity input {
                    width: 45px;
                    height: 42px;
                    line-height: 1.65;
                    float: left;
                    display: block;
                    padding: 0;
                    margin: 0;
                    padding-left: 20px;
                    border: 1px solid #eee;
                }

                .quantity input:focus {
                    outline: 0;
                }

                .quantity-nav {
                    float: left;
                    position: relative;
                    height: 42px;
                }

                .quantity-button {
                    position: relative;
                    cursor: pointer;
                    border-left: 1px solid #eee;
                    width: 20px;
                    text-align: center;
                    color: #333;
                    font-size: 13px;
                    font-family: "Trebuchet MS", Helvetica, sans-serif !important;
                    line-height: 1.7;
                    -webkit-transform: translateX(-100%);
                    transform: translateX(-100%);
                    -webkit-user-select: none;
                    -moz-user-select: none;
                    -ms-user-select: none;
                    -o-user-select: none;
                    user-select: none;
                }

                .quantity-button.quantity-up {
                    position: absolute;
                    height: 50%;
                    top: 0;
                    border-bottom: 1px solid #eee;
                }

                .quantity-button.quantity-down {
                    position: absolute;
                    bottom: -1px;
                    height: 50%;
                }
            </style>
        </footer>
    </body>
</html>