<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/estilos.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


</head>
<body >




<div class="container" >
            <div class="col-xs-12  col-sm-12  col-md-12 col-lg-12 offset-xs-0  offset-sm-0  offset-md-0 offset-lg-0" style="background-color:white;">
				              <div class="col-xs-12  col-sm-12  col-md-12 col-lg-12 offset-xs-0  offset-sm-0  offset-md-0 offset-lg-0">				              
						              <div class="col-xs-4  col-sm-4  col-md-4 col-lg-4 offset-xs-0  offset-sm-0  offset-md-0 offset-lg-0" style="background-color:white;">
											<div class="col-xs-12  col-sm-12  col-md-12 col-lg-12 offset-xs-0  offset-sm-0  offset-md-0 offset-lg-0">
												  <h2>Cargar cliente</h2>																	
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
				               </div> <!-- row -->
				                   
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
				  <h3 class="panel-title">Informacion</h3>
				  
				  <table class="table ">
					<thead>
					  <tr>
						<th class="">Detalles</th>
					  </tr>
					</thead>
					<tbody>
					  <tr>
						<td class="">Nombre:</td>
						<td class=""><input type="text" class="form-control" placeholder="Nombre del encargado"></td>
						<td class="">Numero de cedula</td>
						<td class=""><input type="text" class="form-control" placeholder="Numero de cedula"></td>
						<td class="">Correo electronico</td>
						<td class=""><input type="text" class="form-control" placeholder="E-mail"></td>
					  </tr>
					  
					  <tr>
						<td class="">Denominacion del negocio</td>
						<td class=""><input type="text" class="form-control" placeholder="A que se dedica"></td>
						<td class="">Nombre de fantasía si existe:</td>
						<td class=""><input type="text" class="form-control" placeholder="Como se conose a la empresa"></td>
						<td class="">Telefono:</td>
						<td class=""><input type="text" class="form-control" placeholder="Tel"></td>
					  </tr>
					  
					  <tr>
						<td class="">E Mail:</td>
						<td class=""><input type="text" class="form-control" placeholder="E-mail empresa"></td>
						<td class="">Número de cédula natural o jurídica</td>
						<td class=""><input type="text" class="form-control" placeholder="Sedula juridica"></td>
						<td class="">Fecha de inicio:</td>
						<td class=""><input type="text" class="form-control" placeholder="AA/MM/DD"></td>
					  </tr>
					  
					   <tr>
						<td class="">Número de inscripción:</td>
						<td class=""><input type="text" class="form-control" placeholder="1234"></td>
						<td class="">Numeración consecutiva:</td>
						<td class=""><input type="text" class="form-control" placeholder="12345"></td>
						<td class="">Naturaleza del servicio prestado:</td>
						<td class=""><input type="text" class="form-control" placeholder="Servicio prestado"></td>
					  </tr>
					  
					  <tr>
						<td class="">Otras señas</td>
						<td class=""><textarea class="form-control" rows="1" cols="50" id="comment"></textarea></td>
					  </tr>
					  
					  <tr>
						<td class="">Provincia:</td>
						<td class="">
						<select class="custom-se">
						  <option value="">San José.</option>
						  <option value="">Alajuela.</option>
						  <option value="">Cartago.</option>
						  <option value="">Heredia.</option>
						  <option value="">Guanacaste.</option>
						  <option value="">Puntarenas.</option>
						  <option value="">Limón.</option>
						</select>						
						</td>
						
						<td class="">Canton:</td>
						<td class="">
							<select class="custom-se">
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
							<select class="custom-se">
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
						<td class="">Cargar Nuevo usuario:</td>
						<td class=""><input class="button-clasic" type="button" onclick="document.getElementById('loginForm').submit();" value="Enviar"/></td>
					  </tr>
					  
					</tbody>
				  </table>
			</div> <!-- panel body -->
 </div>

</body>
</html>