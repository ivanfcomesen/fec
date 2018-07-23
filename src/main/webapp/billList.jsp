<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<%@ taglib uri="jstl-fmt.tld" prefix="fmt" %>
<%@ taglib uri="fec-core.tld" prefix="fec" %>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<fmt:setLocale value = "es"/>
<fmt:setBundle basename = "net.ifz.app.web.fec.controller.resources.FecResources"/>

<!DOCTYPE html>
<!--ovindas-->
<html lang="en">

<head>
	<meta charset="UTF-8">
	<title><fmt:message key="common.app.title"/></title>
	<link rel="stylesheet" href="css/estilos.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">	 
	<link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/fonts/simple-line-icons.min.css">
    <link rel="stylesheet" href="css?family=Cookie">
    <link rel="stylesheet" href="css/Pretty-Footer.css">
    <link rel="stylesheet" href="css/Pretty-Header.css">
    <link rel="stylesheet" href="css/styles.css"> 
</head>

<body >    
		<nav class="navbar navbar-default custom-header">
		    <div class="container-fluid">
		        <div class="navbar-header"><a class="navbar-brand" href="#"><img class="img-small" src="/fec/getLogo.do?id=<c:out value="${userSessionInfo.tributary.idTributary}"/>" alt="FEC"/></a><button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button></div>
		        	<div class="collapse navbar-collapse" id="navbar-collapse">
		        	
			            <ul class="nav navbar-nav links">
	
			                <fec:validateRoll roll= "SYSTEM" ><li role="presentation"><a href="/fec/Manage.do">Administrar</a></li></fec:validateRoll>
			                <fec:validateRoll roll= "CLIENT"><li role="presentation"><a href="/fec/bill.do">Tributante</a></li></fec:validateRoll> 
			                <fec:validateRoll roll= "ASSISTANT"><li role="presentation"><a href="/fec/bill.do" class="custom-navbar">Facturar<span class="badge">Nuevo</span></a></li></fec:validateRoll>
			            </ul>
			            
			            <ul class="nav navbar-nav navbar-right">
			                <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="#"> <span class="caret"></span><img src="/fec/getAvatar.do" class="dropdown-image" /></a>
			                    <ul class="dropdown-menu dropdown-menu-right" role="menu">
			                        <li role="presentation"><a href="#">Mi Perfil</a></li>
			                        <li role="presentation" class="active"><a href="/fec/logout.do">Salir</a></li>
			                    </ul>
			                </li>
			            </ul>
		    	</div>
		    </div>
		</nav>
	
	<div class="container"> 
	
	</div>
	
    <footer>
        <div class="row">
            <div class="col-md-4 col-sm-6 footer-navigation">
                <h3><a href="#"><img class="img-small" src="images/GLOBALAPPlogoblanco.png" alt="FEC"/></a></h3>
                <p class="links"><a href="#">Home</a><strong> · </strong><a href="#">Blog</a><strong> · </strong><a href="#">Pricing</a><strong> · </strong><a href="#">About</a><strong> · </strong><a href="#">Faq</a><strong> · </strong><a href="#">Contact</a></p>
                <p class="company-name">Company Name © 2015 </p>
            </div>
            <div class="col-md-4 col-sm-6 footer-contacts">
                <div><span class="fa fa-map-marker footer-contacts-icon"> </span>
                    <p><span class="new-line-span">21 Revolution Street</span> Paris, France</p>
                </div>
                <div><i class="fa fa-phone footer-contacts-icon"></i>
                    <p class="footer-center-info email text-left"> +1 555 123456</p>
                </div>
                <div><i class="fa fa-envelope footer-contacts-icon"></i>
                    <p> <a href="#" target="_blank">support@company.com</a></p>
                </div>
            </div>
            <div class="clearfix visible-sm-block"></div>
            <div class="col-md-4 footer-about">
                <h4>About the company</h4>
                <p> Lorem ipsum dolor sit amet, consectateur adispicing elit. Fusce euismod convallis velit, eu auctor lacus vehicula sit amet.
                </p>
                <div class="social-links social-icons"><a href="#"><i class="fa fa-facebook"></i></a><a href="#"><i class="fa fa-twitter"></i></a><a href="#"><i class="fa fa-linkedin"></i></a><a href="#"><i class="fa fa-github"></i></a></div>
            </div>
        </div>
    </footer>
    		<script src="assets/js/jquery.min.js"></script>
    		<script src="assets/bootstrap/js/bootstrap.min.js"></script>
			<script src="css/jquery.min.js"></script>
    		<script src="css/bootstrap.min.js"></script>
</body>
</html>
