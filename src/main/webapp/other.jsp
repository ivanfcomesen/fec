<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!--ovindas-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Factura Electronica</title>
<link rel="stylesheet" href="css/estilos.css">


<Script Language="JavaScript">
    function DameLaFechaHora() {
      var hora = new Date()
      var hrs = hora.getHours();
      var min = hora.getMinutes();
      var hoy = new Date();
      var m = new Array();
      var d = new Array()
      var an= hoy.getYear();
      m[0]="Enero";  m[1]="Febrero";  m[2]="Marzo";
      m[3]="Abril";   m[4]="Mayo";  m[5]="Junio";
      m[6]="Julio";    m[7]="Agosto";   m[8]="Septiembre";
      m[9]="Octubre";   m[10]="Noviembre"; m[11]="Diciembre";
      
       document.write("Fecha:"+" ");
      document.write(hoy.getDate());
      document.write(" de ");
      document.write(m[hoy.getMonth()]+",");
      document.write();
     
      document.write(" "+"Hora: "+hrs+":"+min);
    }
  </Script>


</head>
<body class="">
<div class="container"> 

					<div class="row">
									<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 offset-xs-4 offset-sm-4 offset-md-4 offset-lg-4">
											<h2 class="" style="color:#ff3300 ">Factura Electronica corporativa</h2>
									</div>		
											<div  class="col-xs-2 col-sm-2 col-md-2 col-lg-2 offset-xs-2 offset-sm-2 offset-md-2 offset-lg-2">
								                <hp class=""> <script>DameLaFechaHora();</script></p> 
							                </div>								
					</div>

					<div class="row">
				         	<div  class="col-xs-2  col-sm-2  col-md-2 col-lg-2 offset-xs-1  offset-sm-1  offset-md-1 offset-lg-1">
				         		<img width="200" height="30" src="images/GLOBALAPP logo color (1).png" alt="ifz" />
				         	</div>				
															 
					</div>	
					
					<div class="row">
					     <div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-2 offset-sm-2 offset-md-2 offset-lg-2">
								<p class="">Seleccione un clienete: </p>
						</div>	
								<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 offset-xs-0 offset-sm-0 offset-md-0 offset-lg-0">
										<p class=""><Select class="tabla" type="text"   name="">
										<option>Ingresar nuevo clienete</option>
										<option>Automercado</option>
										<option>Globalapp</option>
										<option>Jose miguel</option>
										
										</Select></p>
								</div>						
										<div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-0 offset-sm-0 offset-md-0 offset-lg-0">
											  <p class="">Primer apellido:</p>
									    </div>	
												<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 offset-xs-0 offset-sm-0 offset-md-0 offset-lg-0">
														<p class=""><input class="" type="text"   name=""/></p>
												</div>					
														<div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-0 offset-sm-0 offset-md-0 offset-lg-0">
																<p class="">Segundo apellido:</p>
														</div>	
																 <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 offset-xs-0 offset-sm-0 offset-md-0 offset-lg-0">
																		<p class=""><input class="" type="text"   name=""/></p>
																</div>
					</div>
					
					
					<div class="row">
					     <div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-2 offset-sm-2 offset-md-2 offset-lg-2">
								<p class="">Numero de cedula: </p>
						</div>	
								<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 offset-xs-0 offset-sm-0 offset-md-0 offset-lg-0">
										<p class=""><input class="" type="text"   name=""/></p>
								</div>						
										<div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-0 offset-sm-0 offset-md-0 offset-lg-0">
											  <p class="">E-mail:</p>
									    </div>	
												<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 offset-xs-0 offset-sm-0 offset-md-0 offset-lg-0">
														<p class=""><input class="" type="text"   name=""/></p>
												</div>					
														<div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-0 offset-sm-0 offset-md-0 offset-lg-0">
																<p class="">Moneda:</p>
														</div>	
																 <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 offset-xs-0 offset-sm-0 offset-md-0 offset-lg-0">
																				<p><select>
																				 		 <option value="volvo">CRC</option>
																				  		<option value="saab">USd</option>
																				</select></p>
																</div>
					</div>
					
					

 						<div class="row">
 						
					     <div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-1 offset-sm-1 offset-md-1 offset-lg-1">
								<p class="tabla">No. </p>
						</div>	
								<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 offset-xs-0 offset-sm-0 offset-md-0 offset-lg-0">
										<p class="tabla">DESCRIPCION DEL PRODUCTO </p>
								</div>						
										<div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-0 offset-sm-0 offset-md-0 offset-lg-0">
											  <p class="tabla">CANTIDAD</p>
									    </div>	
												<div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-0 offset-sm-0 offset-md-0 offset-lg-0">
														<p class="tabla">PRECIO </p>
												</div>					
														<div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-0 offset-sm-0 offset-md-0 offset-lg-0">
																<p class="tabla">DESCUENTO</p>
														</div>	
																 <div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-0 offset-sm-0 offset-md-0 offset-lg-0">
																				<p class="tabla">IMPUESTO</p>
																</div>
																		<div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-0 offset-sm-0 offset-md-0 offset-lg-0">
																				<p class="tabla">SUBTOTAL</p>
																        </div>
																        
					</div>
					<br/>	
					<div class="row">
 						
					     <div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-1 offset-sm-1 offset-md-1 offset-lg-1">
								<input class="tablaText" style="width:100%" type="text"   name=""/>
						</div>	
								<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 offset-xs-0 offset-sm-0 offset-md-0 offset-lg-0">
										<input class="tablaText" style="width:100%" type="text"   name=""/>
								</div>						
										<div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-0 offset-sm-0 offset-md-0 offset-lg-0">
											 <input class="tablaText" style="width:100%" type="text"   name=""/>
									    </div>	
												<div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-0 offset-sm-0 offset-md-0 offset-lg-0">
														<input class="tablaText" style="width:100%" type="text"   name=""/>
												</div>					
														<div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-0 offset-sm-0 offset-md-0 offset-lg-0">
																<input class="tablaText" style="width:100%" type="text"   name=""/>
														</div>	
																 <div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-0 offset-sm-0 offset-md-0 offset-lg-0">
																				<input class="tablaText" style="width:100%" type="text"   name=""/>
																</div>
																		<div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-0 offset-sm-0 offset-md-0 offset-lg-0">
																				<input class="tablaText" style="width:100%" type="text"   name=""/>
																        </div>
					
                    </div>
<br/>	
					<div class="row">
 						
					     <div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-1 offset-sm-1 offset-md-1 offset-lg-1">
								<input class="tablaText" style="width:100%" type="text"   name=""/>
						</div>	
								<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 offset-xs-0 offset-sm-0 offset-md-0 offset-lg-0">
										<input class="tablaText" style="width:100%" type="text"   name=""/>
								</div>						
										<div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-0 offset-sm-0 offset-md-0 offset-lg-0">
											 <input class="tablaText" style="width:100%" type="text"   name=""/>
									    </div>	
												<div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-0 offset-sm-0 offset-md-0 offset-lg-0">
														<input class="tablaText" style="width:100%" type="text"   name=""/>
												</div>					
														<div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-0 offset-sm-0 offset-md-0 offset-lg-0">
																<input class="tablaText" style="width:100%" type="text"   name=""/>
														</div>	
																 <div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-0 offset-sm-0 offset-md-0 offset-lg-0">
																				<input class="tablaText" style="width:100%" type="text"   name=""/>
																</div>
																		<div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-0 offset-sm-0 offset-md-0 offset-lg-0">
																				<input class="tablaText" style="width:100%" type="text"   name=""/>
															        </div>
					
                    </div>
					<br/>	
						<div class="row">
 						
					     <div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-1 offset-sm-1 offset-md-1 offset-lg-1">
								<input class="tablaText" style="width:100%" type="text"   name=""/>
						</div>	
								<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 offset-xs-0 offset-sm-0 offset-md-0 offset-lg-0">
										<input class="tablaText" style="width:100%" type="text"   name=""/>
								</div>						
										<div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-0 offset-sm-0 offset-md-0 offset-lg-0">
											 <input class="tablaText" style="width:100%" type="text"   name=""/>
									    </div>	
												<div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-0 offset-sm-0 offset-md-0 offset-lg-0">
														<input class="tablaText" style="width:100%" type="text"   name=""/>
												</div>					
														<div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-0 offset-sm-0 offset-md-0 offset-lg-0">
																<input class="tablaText" style="width:100%" type="text"   name=""/>
														</div>	
																 <div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-0 offset-sm-0 offset-md-0 offset-lg-0">
																				<input class="tablaText" style="width:100%" type="text"   name=""/>
																</div>
																		<div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-0 offset-sm-0 offset-md-0 offset-lg-0">
																				<input class="tablaText" style="width:100%" type="text"   name=""/>
																        </div>
					
                    </div>
                    
                  <br/>	
			 
			 <div class="row">   
																   <div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-1 offset-sm-1 offset-md-1 offset-lg-1">
																        <p>Comentarios</p>																		
																	</div>   
																	 <div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-7 offset-sm-7 offset-md-7 offset-lg-7">
																        <p>Subtotal:</p>																		
																	</div> 
																	 <div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-0 offset-sm-0 offset-md-0 offset-lg-0">
																        <input class="tablaText" style="width:100%" type="text"   name=""/>																	
																	</div> 
			</div>   
					
																  
			 <div class="row">   
																    <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 offset-xs-1 offset-sm-1 offset-md-1 offset-lg-1">
																         <textarea name="comentarios" rows="5" cols="100"></textarea><br>  																		
																	</div>   
																	<div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-6 offset-sm-6 offset-md-6 offset-lg-6">
																        <p>Descuento:</p>																		
																	</div> 
																	 <div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-0 offset-sm-0 offset-md-0 offset-lg-0">
																        <input class="tablaText" style="width:100%" type="text"   name=""/>																	
																	</div> 
			</div>   
															
																	
															
															<div class="row"> 
															<div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-9 offset-sm-9 offset-md-9 offset-lg-9">
																        <p>Impuestos:</p>																		
																	</div> 
																	 <div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-0 offset-sm-0 offset-md-0 offset-lg-0">
																        <input class="tablaText" style="width:100%" type="text"   name=""/>																	
																	</div> 
															
															</div> 
															<div class="row"> 
															<div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-9 offset-sm-9 offset-md-9 offset-lg-9">
																        <p>Total::</p>																		
																	</div> 
																	 <div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 offset-xs-0 offset-sm-0 offset-md-0 offset-lg-0">
																        <input class="tablaText" style="width:100%" type="text"   name=""/>																	
																	</div> 
															
															</div>
<hr/>

					
					

		
								
								
								
								

					
					
</div>
</body>
</html>