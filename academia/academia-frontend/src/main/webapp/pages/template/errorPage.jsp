<%@ include file="includes/taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">
<head>
	<meta name="pageCode" content="6"/>
	<title>Página de Error</title>
	<script>
	$(document).ready(function () {

		if ($("#btnVolverSpan").is(":hidden"))
		{
			//$("#btnVolverSpan").show();
		}

		
	});	
	</script>
</head>

<body>

	<div id="error">
	    <div class="bloque">
	        <h3><span>Error Capturado por la Aplicación</span></h3>
			<%@ include file="/pages/template/includes/mensajes/error.jsp" %>
	 		<div class="pie"><div></div></div>
		</div>
	</div>
	
</body>            
</html>