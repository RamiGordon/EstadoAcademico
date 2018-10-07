<%@ include file="includes/taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">
<head>
	<meta name="pageCode" content="17"/>	
	<title>Arbol</title>
	<script type="text/javascript">
	$(function(){	
		$("#arbol").tree({
			ui : {
				theme_name : "classic",
				context : [
		            {
		                id      : "agregar",
		                label   : "Agregar", 
		                icon    : "${staticPath}images/iconos/editar-over.gif",	
		                visible : function (NODE, TREE_OBJ) { return true; }, 	                
		                action  : function (NODE, TREE_OBJ) { showInfoMsg('Se cliqueó Agregar.<br>'); }  
		            },
		            {
		                id      : "eliminar",
		                label   : "Eliminar", 
		                icon    : "${staticPath}images/iconos/eliminar.gif",	
		                visible : function (NODE, TREE_OBJ) { return true; }, 	                
		                action  : function (NODE, TREE_OBJ) { showInfoMsg('Se cliqueó Eliminar.<br>'); }  
		            },
		            {
		                id      : "Consultar",
		                label   : "Consultar", 
		                icon    : "${appCtx}/images/iconos/lupaOn.gif",	
		                visible : function (NODE, TREE_OBJ) { return true; }, 	                
		                action  : function (NODE, TREE_OBJ) { showInfoMsg('Se cliqueó Consultar.<br>'); }
		            }
		        ]								
			},
			plugins : { 
				checkbox : { }
			}
		});	


		$("#arbolConCheck").tree({
			ui : {
				theme_name : "checkbox",
				context : [
		            {
		                id      : "agregar",
		                label   : "Agregar", 
		                icon    : "${staticPath}images/iconos/editar-over.gif",	
		                visible : function (NODE, TREE_OBJ) { return true; }, 	                
		                action  : function (NODE, TREE_OBJ) { showInfoMsg('Se cliqueó Agregar.<br>'); }  
		            },
		            {
		                id      : "eliminar",
		                label   : "Eliminar", 
		                icon    : "${staticPath}images/iconos/eliminar.gif",	
		                visible : function (NODE, TREE_OBJ) { return true; }, 	                
		                action  : function (NODE, TREE_OBJ) { showInfoMsg('Se cliqueó Eliminar.<br>'); }  
		            },
		            {
		                id      : "Consultar",
		                label   : "Consultar", 
		                icon    : "${appCtx}/images/iconos/lupaOn.gif",	
		                visible : function (NODE, TREE_OBJ) { return true; }, 	                
		                action  : function (NODE, TREE_OBJ) { showInfoMsg('Se cliqueó Consultar.<br>'); }
		            }
		        ]								
			},
			callback : { 
				onchange : function (NODE, TREE_OBJ) {
					if(TREE_OBJ.settings.ui.theme_name == "checkbox") {
						var $this = $(NODE).is("li") ? $(NODE) : $(NODE).parent();
						if($this.children("a.unchecked").size() == 0) {
							TREE_OBJ.container.find("a").addClass("unchecked");
						}
						$this.children("a").removeClass("clicked");
						if($this.children("a").hasClass("checked")) {
							$this.find("li").andSelf().children("a").removeClass("checked").removeClass("undetermined").addClass("unchecked");
							var state = 0;
						}
						else {
							$this.find("li").andSelf().children("a").removeClass("unchecked").removeClass("undetermined").addClass("checked");
							var state = 1;
						}
						$this.parents("li").each(function () { 
							if(state == 1) {
								if($(this).find("a.unchecked, a.undetermined").size() - 1 > 0) {
									$(this).parents("li").andSelf().children("a").removeClass("unchecked").removeClass("checked").addClass("undetermined");
									return false;
								}
								else $(this).children("a").removeClass("unchecked").removeClass("undetermined").addClass("checked");
							}
							else {
								if($(this).find("a.checked, a.undetermined").size() - 1 > 0) {
									$(this).parents("li").andSelf().children("a").removeClass("unchecked").removeClass("checked").addClass("undetermined");
									return false;
								}
								else $(this).children("a").removeClass("checked").removeClass("undetermined").addClass("unchecked");
							}
						});
					}
				}
			}
		});	
		
	});
	</script>
	
</head>
<body>

<div class="bloque">
	<h3><span>Arbol</span></h3>	
	<div class="cuerpo" id="bloqueOcultable">
		<table width="100%"><tr><td id=arbol>
		<ul>
			<li class="open"><a href="#"><ins> </ins>Ambitos&nbsp;&nbsp;</a>
				<ul>
					<li><a href="#"><ins> </ins>Ambulatorio - Vigencia: 01/05/2009 - Estado: Baja&nbsp;&nbsp;</a></li>
					<li><a href="#"><ins> </ins>Internación - Vigencia: 02/07/2009 - Estado: Alta&nbsp;&nbsp;</a>
						<ul>
							<li id="aaa"><a href="#"><ins> </ins>Aranceles&nbsp;&nbsp;</a>
								<ul>
									<li><a href="#"><ins> </ins>Honorarios Especialista -  2,3 Unidades - Vigencia: 01/01/2009 - Estado Activo - Centro Costo 77&nbsp;&nbsp;</a>
										<ul>										
											<li id="bbb"><a href="#"><ins> </ins>Adicionales de Valor&nbsp;&nbsp;</a>
												<ul>
													<li><a href="#"><ins> </ins>Adicional por Urgencia - Vigencia: 01/01/2009 - Estado Activo - Centro de Costo 125&nbsp;&nbsp;</a></li>											
												</ul>
											</li>
										</ul>
									</li>
									<li><a href="#"><ins> </ins>Honorarios Ayudante - 2,0 Unidades - Vigencia: 01/02/2009 - Estado Activo - Centro Costo 200 &nbsp;&nbsp;</a></li>
									<li><a href="#"><ins> </ins>Gastos Quirúrgico - 200 Unidades  - Vigencia: 01/02/2009 - Estado Activo - Centro Costo 150 &nbsp;&nbsp;</a>
										<ul>										
											<li><a href="#"><ins> </ins>Adicionales de Valor&nbsp;&nbsp;</a>
												<ul>
													<li><a href="#"><ins> </ins>Adicional por Urgencia - Vigencia: 01/01/2009 - Estado Activo - Centro de Costo 125&nbsp;&nbsp;</a></li>
													<li><a href="#"><ins> </ins>Adicional por Traslado - Vigencia: 01/03/2009 - Estado Activo - Centro de Costo 125&nbsp;&nbsp;</a></li>											
												</ul>
											</li>
										</ul>
									</li>
								</ul>
							</li>
							<li><a href="#"><ins> </ins>Diferenciales de servicio&nbsp;&nbsp;</a></li>
						</ul>
					</li>					
				</ul>
			</li>			
		</ul>
		</td></tr></table>
		
	<br><br>		
	</div>
	<div class="pie"><div></div></div>

	<!-- Arbol con checkboxes -->
	<h3><span>Arbol con checkboxs</span></h3>	
	<div class="cuerpo" id="bloqueOcultable">
		<table width="100%"><tr><td id=arbolConCheck>
		<ul>
			<li class="open"><a href="#"><ins> </ins>Ambitos&nbsp;&nbsp;</a>
				<ul>
					<li><a href="#"><ins> </ins>Ambulatorio - Vigencia: 01/05/2009 - Estado: Baja&nbsp;&nbsp;</a></li>
					<li><a href="#"><ins> </ins>Internación - Vigencia: 02/07/2009 - Estado: Alta&nbsp;&nbsp;</a>
						<ul>
							<li id="aaa"><a href="#"><ins> </ins>Aranceles&nbsp;&nbsp;</a>
								<ul>
									<li><a href="#"><ins> </ins>Honorarios Especialista -  2,3 Unidades - Vigencia: 01/01/2009 - Estado Activo - Centro Costo 77&nbsp;&nbsp;</a>
										<ul>										
											<li id="bbb"><a href="#"><ins> </ins>Adicionales de Valor&nbsp;&nbsp;</a>
												<ul>
													<li><a href="#"><ins> </ins>Adicional por Urgencia - Vigencia: 01/01/2009 - Estado Activo - Centro de Costo 125&nbsp;&nbsp;</a></li>											
												</ul>
											</li>
										</ul>
									</li>
									<li><a href="#"><ins> </ins>Honorarios Ayudante - 2,0 Unidades - Vigencia: 01/02/2009 - Estado Activo - Centro Costo 200 &nbsp;&nbsp;</a></li>
									<li><a href="#"><ins> </ins>Gastos Quirúrgico - 200 Unidades  - Vigencia: 01/02/2009 - Estado Activo - Centro Costo 150 &nbsp;&nbsp;</a>
										<ul>										
											<li><a href="#"><ins> </ins>Adicionales de Valor&nbsp;&nbsp;</a>
												<ul>
													<li><a href="#"><ins> </ins>Adicional por Urgencia - Vigencia: 01/01/2009 - Estado Activo - Centro de Costo 125&nbsp;&nbsp;</a></li>
													<li><a href="#"><ins> </ins>Adicional por Traslado - Vigencia: 01/03/2009 - Estado Activo - Centro de Costo 125&nbsp;&nbsp;</a></li>											
												</ul>
											</li>
										</ul>
									</li>
								</ul>
							</li>
							<li><a href="#"><ins> </ins>Diferenciales de servicio&nbsp;&nbsp;</a></li>
						</ul>
					</li>					
				</ul>
			</li>			
		</ul>
		</td></tr></table>
		
	<br><br>		
	</div>
	<!-- FIN Arbol con checkboxes -->
	<div class="pie"><div></div></div>
</div>

</body>
</html>

