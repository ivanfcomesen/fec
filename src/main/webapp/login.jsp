<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%> 
<%@ taglib uri="jstl-fmt.tld" prefix="fmt" %>

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
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script>
			$( document ).ready(function() {
			   changeLogo();
			});
			
			function changeLogo(){
				$("#loginLogo").attr("src","/fec/getLogo.do?id=" +  $("#tributaryId").val());
			}
			
		</script>
		
	</head>
	<body class="body">
	
	
		<form action="/fec/login.do" id="loginForm" method="post">
			<div class="container">
							<div class="row">
					    		<div  class="col-xs-2 col-sm-2 col-md-2 col-lg-2 offset-xs-5 offset-sm-5 offset-md-5 offset-lg-5">
					    			<img id="loginLogo"  class="logo"    src="" alt="ifz"/></div>
							    </div>
					
						     <div class="row">
								<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 offset-xs-5 offset-sm-5 offset-md-5 offset-lg-5">
									<select onchange="changeLogo();" class="custom-select" name="tributaryId" id="tributaryId">									  
										  <c:forEach items="${tributaryList}" var = "tribuitary">
									          <option  value="<c:out value ="${tribuitary.idTributario}"/>"><c:out value="${tribuitary.name}"/></option>
									      </c:forEach> 
									</select>
									
								</div>
							 </div>
								
			 				 <div class="row">
								<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 offset-xs-5 offset-sm-5 offset-md-5 offset-lg-5">
								<input class="input-text" type="password" placeholder="<fmt:message key="common.app.login.enterYourPassword"/>" name="securityCode"/></div>
							 </div> 
	 						
							<c:if test = "${not empty errorCode}">
								<div class="col-xs-10 col-sm-6 col-md-2 col-lg-2 offset-xs-1 offset-sm-3 offset-md-5 offset-lg-5">
									<p><fmt:message key="common.app.login.errorCode.${errorCode}"/><p>
								</div>
						    </c:if>

						<div class="row">
							<div class=" col-xs-2 col-sm-2 col-md-2 col-lg-2 offset-xs-5 offset-sm-5 offset-md-5 offset-lg-5">
							<input class="buttonBig" type="button" onclick="document.getElementById('loginForm').submit();" value="<fmt:message key="common.app.login.enterSystem"/>"/></div>

						</div>
			</div>
		</form>					
	</body>
</html>