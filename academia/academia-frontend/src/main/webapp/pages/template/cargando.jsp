<%@ include file="includes/taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">
<head>
	<meta name="pageCode" content="14"/>
	<title>Cargando</title>
	
	<script type="text/javascript">
	$(function(){
		$('#btnBlock').click(function() { 
			
         	$.blockUI(blockDefaults);
         		  
         	$('.blockOverlay').attr('title','Cliquear para desbloquear').click($.unblockUI);        	 
    	}); 		 		 
			 
	});
	</script>
		
</head>

<body>

	<div class="bloque">
		<div class="top"><div>&nbsp;</div></div>
	    	<div class="cuerpo">	
			<table>
				<tr>
					<td>
						<p>
						En determinadas ocasiones suele ser conveniente bloquear los controles existentes en la página actual para evitar, por ejemplo, que un
						usuario ejecute un doble-click sobre un botón o incluso para informarle que se está ejecutando actualmente un determinado proceso.<br/>
						Un uso típico de esta característica puede darse durante una invocación por ajax o un submit de un formulario.<br/><br/>
						A continuación se presenta un ejemplo de su uso.<br/>
						HTML:<br/>
						</p>
						
						<div class="codeSample">
						&lt;td align="right" class="botones"><br/>
						&nbsp;&nbsp; &lt;s:submit type="button" id="<b>btnBlock</b>" value="Bloquear Página"/><br/>   
						&lt;/td><br/>
						</div>
						<br/>
						<p>Javascript:</p>
						<div class="codeSample">
						
						&lt;script type="text/javascript"> <br/>
						&nbsp;&nbsp; $(function(){<br/>
						&nbsp;&nbsp;&nbsp;&nbsp; $('<b>#btnBlock</b>').click(function() { <br/> 
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="codeComment">// Bloquea la pagina .. </span> <br/>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $.blockUI(blockDefaults); <br/>
						<br/>
						
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="codeComment">// Desbloquea la pagina al clickear el grisado de fondo .. </span> <br />
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $('.blockOverlay').attr('title','Clickear para desbloquear').click($.unblockUI); <br/>
						&nbsp;&nbsp;&nbsp;&nbsp; }); <br/>
						&nbsp;&nbsp; }); <br/>
						&lt;/script> <br/>
						

						</div>

						
					</td>
				</tr>
				<tr>
				<td colspan="6" width="100%" align="right">
						<br/>
							<table>
								<tr>
								<td></td>
								<td><s:submit id="btnBlock"  value="Bloquear Página"/></td>
								</tr>				   			   
							</table>
					</td>
				</tr>
			</table>
		</div>
		<div class="pie"><div></div></div>
	</div>

	

</body>
</html>