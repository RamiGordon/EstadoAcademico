<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">
<head>
	<meta name="pageCode" content="31"/>
	<meta name="pageTitle" content="ABM Simple"/>
	<script>
	menuActivo = 31;

	
	$(document).ready(function () {

		$('#btnAceptar').click( function(ev){

			showInfoMsg('El Registro se generó correctamente.<br>', function(){

				changeLinks();
				$('#resultados').show();
				})
			
			ev.preventDefault();

		});
	});

	
	</script>
</head>
<body>
	<div class="bloque">
		<h3><span>Caracter&iacute;sticas</span></h3>
	    <div class="cuerpo">
	    	<%@ include file="/pages/template/includes/form.jsp" %>
	    </div>
		<div class="pie"><div></div></div>
	</div>
	<div id="resultados" style="display:none">
	<%@ include file="/pages/template/ajax/results.jsp" %>
	</div>
</body>
</html>