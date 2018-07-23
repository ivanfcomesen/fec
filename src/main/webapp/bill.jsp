<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/estilos.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Factura</title>

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
<body >




<div class="container" >

			<div class="col-xs-12  col-sm-12  col-md-12 col-lg-12 offset-xs-0  offset-sm-0  offset-md-0 offset-lg-0" >
			
						  <div class="text-center">
         						<h1>Factura electronica corporativa.</h1>
   						  </div>
									<div  class="col-xs-2  col-sm-2  col-md-2 col-lg-2 offset-xs-0  offset-sm-0  offset-md-0 offset-lg-0">
				         					<img width="200" height="30" src="images/GLOBALAPP logo color (1).png" alt="ifz" />
				         			</div>			
											<div  class="col-xs-2 col-sm-2 col-md-2 col-lg-2 offset-xs-8 offset-sm-8 offset-md-8 offset-lg-8">
								                <p class=""> <script>DameLaFechaHora();</script></p> 
							                </div>								
			</div>

  

     <div class="col-xs-12  col-sm-12  col-md-12 col-lg-12 offset-xs-0  offset-sm-0  offset-md-0 offset-lg-0" style="background-color:#ddd;">
        <div class="col-xs-12  col-sm-12  col-md-12 col-lg-12 offset-xs-0  offset-sm-0  offset-md-0 offset-lg-0">
            
                    <!-- <h3 class="panel-title">Cabecera</h3> -->
					<br>
					<br>
                    <div class="col-xs-12  col-sm-12  col-md-12 col-lg-12 offset-xs-0  offset-sm-0  offset-md-0 offset-lg-0" style="background-color:#b3b3b3;">
                        
                        <div class="col-xs-12  col-sm-12  col-md-12 col-lg-12 offset-xs-0  offset-sm-0  offset-md-0 offset-lg-0" style="background-color:white;">
				                            <div class="col-xs-12  col-sm-12  col-md-12 col-lg-12 offset-xs-0  offset-sm-0  offset-md-0 offset-lg-0">
										                                <div class="col-xs-3  col-sm-3  col-md-3 col-lg-3 offset-xs-0  offset-sm-0  offset-md-0 offset-lg-0">
										                               		 <select class="button-clasic" placeholder="Id">
																					<option value="crc">Seleccione un cliente</option>
																					<option value="usd" href="myBtn">Interfaz Software</option>
																					<option value="usd">GolbalAPP</option>
																			 </select>
																	
												                        </div>

												                          <div class="col-xs-3  col-sm-3  col-md-3 col-lg-3 offset-xs-0  offset-sm-0  offset-md-0 offset-lg-0" style="background-color:white;">
												                            <div class="form-group">
												                               
												                               <button id="myBtn" class="button-clasic">Agregar cliente</button>
																<div id="myModal" class="modal">
																  <div class="modal-content">
																    <span class="close">&times;</span>
																    																    
<!-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->															    
																    
																    
																    
																    
																    
																    

								    
<div class="container" >
            <div class="col-xs-12  col-sm-12  col-md-12 col-lg-12 offset-xs-0  offset-sm-0  offset-md-0 offset-lg-0" style="background-color:white;">
				              <div class="col-xs-12  col-sm-12  col-md-12 col-lg-12 offset-xs-0  offset-sm-0  offset-md-0 offset-lg-0">				              
						              <div class="col-xs-4  col-sm-4  col-md-4 col-lg-4 offset-xs-0  offset-sm-0  offset-md-0 offset-lg-0" style="background-color:white;">
											<div class="col-xs-12  col-sm-12  col-md-12 col-lg-12 offset-xs-0  offset-sm-0  offset-md-0 offset-lg-0">
												  <h3 style="color:#ff6600;">Cargar cliente</h3>																	
											</div>		                            
									   </div> 												                        
												<div class="col-xs-4  col-sm-4  col-md-4 col-lg-4 offset-xs-0  offset-sm-0  offset-md-0 offset-lg-0" style="background-color:white;">
													<div class="col-xs-12  col-sm-12  col-md-12 col-lg-12 offset-xs-0  offset-sm-0  offset-md-0 offset-lg-0">  												                            
															<form>
																	<label class="radio-inline">
																			<input type="radio" name="optradio">Empresarial
																	</label>
																			<label class="radio-inline">
																			       <input type="radio" name="optradio">Tributante fisico
																	        </label>																				  
															</form>																				  			                          
													 </div>
												</div>
				               </div> 
				                   
				                  
			</div> 
			
			<div class="col-xs-12  col-sm-12  col-md-12 col-lg-12 offset-xs-0  offset-sm-0  offset-md-0 offset-lg-0" style="background-color:#ffffff;">
				  
				  
				  <table class="table ">
					<thead>
					  <tr>
						<th class="">Informacion</th>
					  </tr>
					</thead>
					<tbody>
					  <tr>
						<td class="">Nombre:</td>
						<td class=""><input type="text" class="form-control" placeholder="Encargado"></td>
						<td class="">Numero de cedula</td>
						<td class=""><input type="text" class="form-control" placeholder="Cedula"></td>
						<td class="">Correo electronico</td>
						<td class=""><input type="text" class="form-control" placeholder="E-mail"></td>
					  </tr>
					  
					  <tr>
						<td class="">Denominacion del negocio</td>
						<td class=""><input type="text" class="form-control" placeholder="Negocio"></td>
						<td class="">Nombre de fantasía si existe:</td>
						<td class=""><input type="text" class="form-control" placeholder="Empresa"></td>
						<td class="">Telefono:</td>
						<td class=""><input type="text" class="form-control" placeholder="Tel"></td>
					  </tr>
					
					  
					   <tr>
								
								<td class="">Numeración consecutiva:</td>
								<td class=""><input type="text" class="form-control" placeholder="12345"></td>
								<td class="">Naturaleza del servicio prestado:</td>
								<td class=""><input type="text" class="form-control" placeholder="Servicio prestado"></td>
								<td class="">Provincia:</td>
						<td class="">
						<select class="button-clasic">
						  <option value="">San José.</option>
						  <option value="">Alajuela.</option>
						  <option value="">Cartago.</option>
						  <option value="">Heredia.</option>
						  <option value="">Guanacaste.</option>
						  <option value="">Puntarenas.</option>
						  <option value="">Limón.</option>
						</select>						
						</td>

					  </tr>
					  
					 
					  
					  <tr>
						
						
						<td class="">Canton:</td>
						<td class="">
							<select class="button-clasic">
							  <option value="">San José.</option>
							  <option value="">Alajuela.</option>
							  <option value="">Cartago.</option>
							  <option value="">Heredia.</option>
							  <option value="">Guanacaste.</option>
							  <option value="">Puntarenas.</option>
							  <option value="">Limón.</option>
							</select>
						</td>
						
					  <td class="">Distrito:</td>
						<td class="">
							<select class="button-clasic">
							  <option value="">San José.</option>
							  <option value="">Alajuela.</option>
							  <option value="">Cartago.</option>
							  <option value="">Heredia.</option>
							  <option value="">Guanacaste.</option>
							  <option value="">Puntarenas.</option>
							  <option value="">Limón.</option>
							</select>						
						</td>
						<td class="">Otras señas</td>
								<td class=""><textarea class="form-control" rows="1" cols="25" id="comment"></textarea></td>
					  </tr>
					  
					   <tr>
						<td class="">Cargar Nuevo usuario:</td>
						<td class=""><input class="button-clasic" type="button" onclick="document.getElementById('loginForm').submit();" value="Enviar"/></td>
					  </tr>
					  
					</tbody>
				  </table>
			</div> 
 </div>
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
<!-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->	    
								    
								                       			 </div>
															</div>
												                               
												                               
												                            </div>
												                        </div>
												                        
												                        <div class="col-xs-4  col-sm-4  col-md-4 col-lg-4 offset-xs-0  offset-sm-0  offset-md-0 offset-lg-0" style="background-color:white;">
												                            <div class="col-xs-5  col-sm-5  col-md-5 col-lg-5 offset-xs-0  offset-sm-0  offset-md-0 offset-lg-0">  
												                            <select class="button-clasic">
																					<option value="crc">CRC</option>
																					<option value="usd">USD</option>
																			</select>
												                                
														                          
												                            </div>
												                        </div>
				                        
				                      
				                        
				                    </div> <!-- row -->
				                    <br>
				                    <div class="col-xs-12  col-sm-12  col-md-12 col-lg-12 offset-xs-0  offset-sm-0  offset-md-0 offset-lg-0" style="background-color:#f5f5f5;">
				                        <div class="col-md-6"> 
				                          <address>
				                           <strong class="">BERNARDO GINARD PRATS</strong><br class="">
				                            Carrer Ciutadella nº 26 A<br class="">
				                            07008 Palma<br class="">
				                            Illes Balears<br class="">                          
				                           </address>
				                        </div>
                   						</div> <!-- row -->
				</div> <!-- panel heading -->
				<div class="col-xs-12  col-sm-12  col-md-12 col-lg-12 offset-xs-0  offset-sm-0  offset-md-0 offset-lg-0" style="background-color:#ffffff;">
				  <h3 class="panel-title">Detalle</h3>
				  
				  <table class="table table-condensed">
					<thead>
					  <tr>
						<th class="">Producto</th>
						<th class="">Descripción</th>
						<th class="">cantidad</th>
						<th class="">precio</th>
						<th class="">tipo impuesto</th>
						<th class="">importe</th>
					  </tr>
					</thead>
					<tbody>
					  <tr>
						<td class="">001</td>
						<td class="">Doe moe</td>
						<td class="">12.00</td>
						<td class="">100.00</td>
						<td class="">Reducido 7%</td>
						<td class="">1200.00</td>
					  </tr>
					  <tr>
						<td class="">002</td>
						<td class="">Doe moe TURURU</td>
						<td class="">10.00</td>
						<td class="">1000.00</td>
						<td class="">Normal 18%</td>
						<td class="">10000.00</td>
					  </tr>
					</tbody>
				  </table>
				</div> <!-- panel body -->
				<div>
				<div class="col-xs-1  col-sm-1  col-md-1 col-lg-1 offset-xs-0  offset-sm-0  offset-md-0 offset-lg-0"><p>Piefactura</p>
				</div>
				<div class="col-xs-1  col-sm-1  col-md-1 col-lg-1 offset-xs-7  offset-sm-7  offset-md-7 offset-lg-7"><p>Total</p>
				</div>
				<div class="col-xs-2  col-sm-2  col-md-2 col-lg-2 offset-xs-1  offset-sm-1  offset-md-1 offset-lg-1"><p>20000</p>
				</div>
				
             </div> <!-- panel -->
             
        </div> <!-- col -->
    </div> <!-- row -->
    
    
    <div class="row text-center">
       <p class="">Pie de pagina</p>
    </div>

 </div>
 
 </div>


















<script>
// Get the modal
var modal = document.getElementById('myModal');

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
    modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>

</body>
</html>