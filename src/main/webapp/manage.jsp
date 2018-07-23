<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="jstl-fmt.tld" prefix="fmt" %>
    <%@ taglib uri="fec-core.tld" prefix="fec" %>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
    <fmt:setLocale value = "es"/>
    <fmt:setBundle basename = "net.ifz.app.web.fec.controller.resources.FecResources"/>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!--ovindas-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Insert title here</title>
	<link rel="stylesheet" href="css/estilos.css">
</head>

<body class="body">
	<div class="container"> 
	    
			<div class="row">
	         	<div  class="col-xs-2  col-sm-2  col-md-2 col-lg-2 offset-xs-1  offset-sm-1  offset-md-1 offset-lg-1">
	         		<img class="col-xs-8  col-sm-8  col-md-8 col-lg-8 offset-xs-0  offset-sm-0  offset-md-0 offset-lg-0" src="images/GLOBALAPPlogoblanco.png" alt="ifz" />
	         	</div>
						<div  class="col-xs-2 col-sm-2 col-md-2 col-lg-2 offset-xs-2 offset-sm-2 offset-md-2 offset-lg-2">
								<h1 class="titulo">Tributantes</h1>
						</div>
			</div>
		
				<div class="row">
					<div  class="col-xs-2 col-sm-2 col-md-2 col-lg-2 offset-xs-0 offset-sm-0 offset-md-0 offset-lg-0">
						<p>Busqueda por:</p>
					</div>
				
							<div  class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-0 offset-sm-0 offset-md-0 offset-lg-0">
								<p class="">Cedula:</p>
							</div>
									<div  class="col-xs-2 col-sm-2 col-md-2 col-lg-2 offset-xs-0 offset-sm-0 offset-md-0 offset-lg-0">
										  <input class="input-text" type="text"   name="securityCode"/>
								    </div>
									    	<div  class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-1 offset-sm-1 offset-md-1 offset-lg-1">
										          <p class="">Nombre:</p>
										    </div>
											    	<div  class="col-xs-2 col-sm-2 col-md-2 col-lg-2 offset-xs-0 offset-sm-0 offset-md-0 offset-lg-0">
														  <input class="input-text" type="text"   name="securityCode"/>
											    	</div> 
										    				<div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-1 offset-sm-1 offset-md-1 offset-lg-1">
																     <a class="buttonBig" >Ir</a>
													    	  </div> 
				 </div>
		
		
		<div class="titleScroll"> 
			<div class="row" >
					<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 offset-xs-1 offset-sm-1 offset-md-1 offset-lg-1">
					   <p>Nombre</p>
					</div > 
					    <div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-1 offset-sm-1 offset-md-1 offset-lg-1">
							<p >Cedula</p>
					    </div> 
					    	<div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-1 offset-sm-1 offset-md-1 offset-lg-1">
								  <p>Estado</p>
					    	</div> 
					    		<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 offset-xs-1 offset-sm-1 offset-md-1 offset-lg-1">
								  	<p>Direccion</p>
					    		</div> 
					    			<div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-1 offset-sm-1 offset-md-1 offset-lg-1">
								  		<p>Detalles</p>
					    			</div> </div>
		</div> 
				    
			<div class="scroll">
					<div class="row">
							<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 offset-xs-1 offset-sm-1 offset-md-1 offset-lg-1">
								<p>Interfaz ft</p>
							</div> 
							    <div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-1 offset-sm-1 offset-md-1 offset-lg-1">
									<p>2 444 333 </p>
							    </div> 
							    	<div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-1 offset-sm-1 offset-md-1 offset-lg-1">
										  <p>Activo</p>
							    	</div> 
							    	        <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 offset-xs-1 offset-sm-1 offset-md-1 offset-lg-1">
										  		<p>San Ramon Centro</p>
							    			</div> 
							    				<div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-1 offset-sm-1 offset-md-1 offset-lg-1">
										  			<input class="buttonSmall" type="button" onclick="document.getElementById('loginForm').submit();" value="+"/>
							    				</div> 
			</div> 
							    	
					<div class="row">
						<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 offset-xs-1 offset-sm-1 offset-md-1 offset-lg-1">
							<p>Global Apps</p>
						</div> 
							 <div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-1 offset-sm-1 offset-md-1 offset-lg-1">
								<p>3 5657 224</p>
							 </div> 
							    <div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-1 offset-sm-1 offset-md-1 offset-lg-1">
										<p>Activo</p>
							    </div> 
							    	<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 offset-xs-1 offset-sm-1 offset-md-1 offset-lg-1">
										  <p>San Ramon Sabana</p>
							    	</div> 
							    	      <div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-1 offset-sm-1 offset-md-1 offset-lg-1">
										     <input class="buttonSmall" type="button" onclick="document.getElementById('loginForm').submit();" value="+"/>
							    	     </div> 
					 </div> 
							    	
				  <div class="row">
						<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 offset-xs-1 offset-sm-1 offset-md-1 offset-lg-1">
								<p>Diet app</p>
						</div> 
							    <div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-1 offset-sm-1 offset-md-1 offset-lg-1">
									<p>2 387383 44</p>
							    </div> 
							    	<div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-1 offset-sm-1 offset-md-1 offset-lg-1">
										  <p>Inactivo</p>
							    	</div> 
							    	      <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 offset-xs-1 offset-sm-1 offset-md-1 offset-lg-1">
										  		<p>La Guaria</p>
							    		  </div> 
							    				<div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-1 offset-sm-1 offset-md-1 offset-lg-1">
										  			<input class="buttonSmall" type="button" onclick="document.getElementById('loginForm').submit();" value="+"/>
							    				</div> 
				  </div> 
							    	
					<div class="row">
							<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 offset-xs-1 offset-sm-1 offset-md-1 offset-lg-1">
								<p>Osvaldo vindas</p>
							</div> 
							    	<div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-1 offset-sm-1 offset-md-1 offset-lg-1">
										  <p>2 550 423</p>
							    	</div> 
							    			<div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-1 offset-sm-1 offset-md-1 offset-lg-1">
										  		<p>Activo</p>
							    			</div> 
							    				<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 offset-xs-1 offset-sm-1 offset-md-1 offset-lg-1">
										  			<p>San Juan</p>
							    				</div> 
							    					<div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-1 offset-sm-1 offset-md-1 offset-lg-1">
										  				<input class="buttonSmall" type="button" onclick="document.getElementById('loginForm').submit();" value="+"/>
							    					</div> 
					</div>
				
				<div class="row">
						<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 offset-xs-1 offset-sm-1 offset-md-1 offset-lg-1">
							<p>Nombre</p>
						</div> 
							   <div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-1 offset-sm-1 offset-md-1 offset-lg-1">
									<p>Cedula</p>
							  </div> 
							    	<div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-1 offset-sm-1 offset-md-1 offset-lg-1">
										  <p>Activo</p>
							    	</div> 
							    			<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 offset-xs-1 offset-sm-1 offset-md-1 offset-lg-1">
										  			<p>Direccion</p>
							    			</div> 
							    				<div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-1 offset-sm-1 offset-md-1 offset-lg-1">
										 			 <input class="buttonSmall" type="button" onclick="document.getElementById('loginForm').submit();" value="+"/>
							    				</div> 
				</div> 
							    	
				<div class="row">
					<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 offset-xs-1 offset-sm-1 offset-md-1 offset-lg-1">
						 <p>Interfaz ft</p>
					</div> 
						<div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-1 offset-sm-1 offset-md-1 offset-lg-1">
							 <p>2 444 333 </p>
					    </div> 
							    <div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-1 offset-sm-1 offset-md-1 offset-lg-1">
									<p>Activo</p>
							    </div> 
							    	 <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 offset-xs-1 offset-sm-1 offset-md-1 offset-lg-1">
										   <p>San Ramon Centro</p>
							    	 </div> 
							    	      <div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-1 offset-sm-1 offset-md-1 offset-lg-1">
										       <input class="buttonSmall" type="button" onclick="document.getElementById('loginForm').submit();" value="+"/>
							    	       </div> 
				</div> 
							    	
				<div class="row">
					<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 offset-xs-1 offset-sm-1 offset-md-1 offset-lg-1">
						<p>Global Apps</p>
					</div> 
						<div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-1 offset-sm-1 offset-md-1 offset-lg-1">
							<p>3 5657 224</p>
						</div> 
							    <div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-1 offset-sm-1 offset-md-1 offset-lg-1">
										  <p>Activo</p>
							    </div> 
							    		<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 offset-xs-1 offset-sm-1 offset-md-1 offset-lg-1">
										  		<p>San Ramon Sabana</p>
							    		</div> 
							    				<div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-1 offset-sm-1 offset-md-1 offset-lg-1">
										  				<input class="buttonSmall" type="button" onclick="document.getElementById('loginForm').submit();" value="+"/>
							    				</div> 
				</div> 
							    	
				<div class="row">
					<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 offset-xs-1 offset-sm-1 offset-md-1 offset-lg-1">
							<p>Diet app</p>
					</div> 
						 <div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-1 offset-sm-1 offset-md-1 offset-lg-1">
								<p>2 387383 44</p>
						</div> 
							    <div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-1 offset-sm-1 offset-md-1 offset-lg-1">
										  <p>Activo</p>
							    </div> 
							    	  <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 offset-xs-1 offset-sm-1 offset-md-1 offset-lg-1">
										   <p>La Guaria</p>
							    	 </div> 
							    	       <div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-1 offset-sm-1 offset-md-1 offset-lg-1">
										        <input class="buttonSmall" type="button" onclick="document.getElementById('loginForm').submit();" value="+"/>
							    	      </div> 
				</div> 
							    	
				<div class="row">
						<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 offset-xs-1 offset-sm-1 offset-md-1 offset-lg-1">
							  <p>Osvaldo vindas</p>
						</div> 
							   <div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-1 offset-sm-1 offset-md-1 offset-lg-1">
									 <p>2 550 423</p>
							   </div> 
							    	<div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-1 offset-sm-1 offset-md-1 offset-lg-1">
										  <p>Activo<input type="checkbox" id="cbox1" value="first_checkbox"></p>
							    	</div> 
							    	        <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 offset-xs-1 offset-sm-1 offset-md-1 offset-lg-1">
										 		 <p>San Juan</p>
							    			</div> 
							    					<div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-1 offset-sm-1 offset-md-1 offset-lg-1">
										 					 <input class="buttonSmall" type="button" onclick="document.getElementById('loginForm').submit();" value="+"/>
					   		    					</div> 
	            </div> 

		</div> 

			    	<div class="row">
					    	<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 offset-xs-9 offset-sm-9 offset-md-9 offset-lg-9">
											     <a class="buttonBig"  href="/fec/Handle.do" >Nuevo tributante</a>
								    	     </div> 
			    	</div>
 	
</div>
</body>
</html>