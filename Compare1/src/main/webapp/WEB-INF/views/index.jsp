<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EKART</title>
    <link rel="stylesheet" href="<c:url value="/resources/assets/bootstrap/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/https://fonts.googleapis.com/css?family=Cookie"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/fonts/font-awesome.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/styles.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/Pretty-Registration-Form.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/Pretty-Footer.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/Google-Style-Login.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/Pretty-Registration-Form-1.css"/>">
</head>

<body>
    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container-fluid">
            <div class="navbar-header"><a class="navbar-brand text-uppercase navbar-link" href="login.html" target="_parent"><strong>E K A R T</strong></a>
                <button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
            </div>
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="nav navbar-nav navbar-right">
                
           <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="nav navbar-nav">
                    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="#">Category <span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                        
                        <c:forEach items="${categoryList}" var="category">
                            <li role="presentation"><a href="product${category.categoryId}">${category.categoryName}</a></li>
                            </c:forEach>
                            
                        </ul>
                    </li>
                </ul>
            </div>
                     <sec:authorize access="!isAuthenticated()">
                            <li><a href="login">Login</a></li>
                            <li><a href="register">Registration</a></li>
                      </sec:authorize>
                       <sec:authorize access="isAuthenticated()">
                              <li> <a href="<c:url value="j_spring_security_logout" />">Logout</a></li>
                               <li><a href="cart">Cart</a></li>
                   </sec:authorize>
                    
                </ul>
            </div>
        </div>
    </nav>
    <div class="carousel slide" data-ride="carousel" id="carousel-1">
        <div class="carousel-inner" role="listbox">
        
            <div class="item"><img src="<c:url value="/resources/assets/img/mac 1.jpg"/>" alt="Slide Image">
                <div class="carousel-caption">
                    <h2 class="text-center show">Mac Pro </h2>
                    <p class="lead show"><strong>starts from 65000</strong></p>
                </div>
            </div>
            <div class="item"><img src="<c:url value="/resources/assets/img/Lenovo.jpg"/>" alt="Slide Image"></div>
            <div class="item active"><img src="<c:url value="/resources/assets/img/surface.jpg"/>" alt="Slide Image"></div>
        </div>
        <div><a class="left carousel-control" href="#carousel-1" role="button" data-slide="prev"><i class="glyphicon glyphicon-chevron-left"></i><span class="sr-only">Previous</span></a><a class="right carousel-control show" href="#carousel-1" role="button"
            data-slide="next"><i class="glyphicon glyphicon-chevron-right"></i><span class="sr-only">Next</span></a></div>
        <ol class="carousel-indicators">
            <li data-target="#carousel-1" data-slide-to="0"></li>
            <li data-target="#carousel-1" data-slide-to="1"></li>
            <li data-target="#carousel-1" data-slide-to="2" class="active"></li>
        </ol>
    </div>
    <div class="row">
        <div class="col-md-4">
            <div class="thumbnail"><img src="<c:url value="/resources/assets/img/nokia-5.jpg" />">

                <div class="caption">
                    <h3>nokia 5</h3>
                   
                    <a href="http://localhost:8080/Compare1/cart" class="btn btn-default" type="button">AddToCart</a>     
                    <p> </p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="thumbnail"><img src="<c:url value="/resources/assets/img/nokia).jpg"/>">
                <div class="caption">
                    <h3>nokia 6</h3>
                   
                    <button class="btn btn-default" type="button">AddToCart </button>
                    <p> </p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="thumbnail"><img src="<c:url value="/resources/assets/img/mac 1.jpg"/>">
                <div class="caption">
                    <h3>mac pro</h3>
                   
                    <button class="btn btn-default" type="button">AddToCart </button>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
            <div class="thumbnail"><img src="<c:url value="/resources/assets/img/fitbitband.jpg"/>">
                <div class="caption">
                    <h3>fitbit band</h3>
                   
                    <button class="btn btn-default" type="button">AddToCart </button>
                    <p> </p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="thumbnail"><img src="<c:url value="/resources/assets/img/oneplus5.jpg"/>">
                <div class="caption">
                    <h3>one plus5</h3>
                    
                    <button class="btn btn-default" type="button">AddToCart </button>
                    <p> </p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="thumbnail"><img src="<c:url value="/resources/assets/img/i smart.jpg"/>">
                <div class="caption">
                    <h3>i watch</h3>
                          <button class="btn btn-default" type="button">AddToCart </button>
                </div>
            </div>
        </div>
    </div>
    <footer>
        <div class="row">
            <div class="col-md-4 col-sm-6 footer-navigation">
                <h2><a class="text-info" href="#">E K A R T</a></h2>
                <p class="links"><a href="#">Home</a><strong> · </strong><a href="#">Blog</a><strong> · </strong><a href="#">Pricing</a><strong> · </strong><a href="#">About</a><strong> · </strong><a href="#">Faq</a><strong> · </strong><a href="#">Contact</a></p>
                <p class="company-name">E K A R T © 2015 </p>
            </div>
            <div class="col-md-4 col-sm-6 footer-contacts">
                <div><span class="fa fa-map-marker footer-contacts-icon"> </span>
                    <p><span class="new-line-span">21 Revolution Street</span> Paris, France</p>
                </div>
                <div><i class="fa fa-phone footer-contacts-icon"></i>
                    <p class="footer-center-info email text-left"> +91 999999999</p>
                </div>
                <div><i class="fa fa-envelope footer-contacts-icon"></i>
                    <p> <a href="#" target="_blank">support@ekart.com</a></p>
                </div>
            </div>
            <div class="clearfix visible-sm-block"></div>
            <div class="col-md-4 footer-about">
                <h4>About the company</h4>
                <p> established in 2016 to serve better products in ekart and fulfill customer dreams.
                </p>
                <div class="social-links social-icons"><a href="#"><i class="fa fa-facebook"></i></a><a href="#"><i class="fa fa-twitter"></i></a><a href="#"><i class="fa fa-linkedin"></i></a><a href="#"><i class="fa fa-github"></i></a></div>
            </div>
        </div>
    </footer>
    <script src="<c:url value="/resources/assets/js/jquery.min.js"/>"></script>
    <script src="<c:url value="/resources/assets/bootstrap/js/bootstrap.min.js"/>">
    </script>
</body>

</html>