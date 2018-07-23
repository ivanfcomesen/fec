<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%> 
<%@ taglib uri="jstl-fmt.tld" prefix="fmt" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<fmt:setLocale value = "es"/>
<fmt:setBundle basename = "net.ifz.app.web.fec.controller.resources.FecResources"/>

<!DOCTYPE html>
<!--ovindas-->
<html lang="es">
	<head>
		<meta charset="UTF-8">
		<title><fmt:message key="common.app.title"/></title>
		<link rel="stylesheet" href="css/estilos.css">
	</head>
	<body class="body">  
		<div class="container"> 
	         		<div class="row">
	         		<div  class="col-xs-10  col-sm-6  col-md-2 col-lg-2 offset-xs-1  offset-sm-3  offset-md-5 offset-lg-5">
	         		<img class="logo" src="images/GLOBALAPPlogoblanco.png" alt="ifz" />
	         		</div>
			 		</div>
			 		
			  <form  action="/fec/showLogin.do" id="loginForm" method="post">			   
			 		<div class="row">
					<div class="col-xs-10 col-sm-6 col-md-2 col-lg-2 offset-xs-1 offset-sm-3 offset-md-5 offset-lg-5">
					<input class="input-text"  type="text" name="email" placeholder="some@email.com"/>
					</div>
					<c:if test = "${not empty errorCode}">
						<div class="col-xs-10 col-sm-6 col-md-2 col-lg-2 offset-xs-1 offset-sm-3 offset-md-5 offset-lg-5">
							<p><fmt:message key="common.app.login.errorCode.${errorCode}"/><p>
						</div>
				    </c:if>
				    <c:if test = "${not empty messageCode}">
						<div class="col-xs-10 col-sm-6 col-md-2 col-lg-2 offset-xs-1 offset-sm-3 offset-md-5 offset-lg-5">
							<p><fmt:message key="common.app.login.errorCode.messageCode.${messageCode}"/><p>
						</div>
				    </c:if>
					</div>
						<div class="row">
						<div class="col-xs-10 col-sm-6 col-md-2 col-lg-2 offset-xs-1 offset-sm-3 offset-md-5 offset-lg-5" >
						<input class="buttonBig" type="button" onclick="document.getElementById('loginForm').submit();" value="<fmt:message key="common.app.login.getSecurityCode"/>"/></div >
						
					</div>
			</form>	
		</div>			
	</body>
</html>