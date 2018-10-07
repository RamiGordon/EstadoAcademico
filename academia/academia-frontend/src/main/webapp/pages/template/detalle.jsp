<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">
<head>
	<meta name="pageCode" content="8"/>
	<title>Detalle</title>
</head>

<body>

	<div class="bloque">
		<h3><span>Caracter&iacute;sticas</span></h3>
	    <div class="cuerpo">
		    <p>
		    El siguiente detalle está construido reutilizando el mismo jsp del <a class="lnk"  href="formulario.jsp">formulario de ejemplo.</a><br>
		    Debido a la existencia del parámetro  "<b>readonly</b>" con valor "<b>true</b>" , dicho jsp presenta los elementos de formulario como textos.<br><br>
		    </p>
	    	<%@ include file="/pages/template/includes/form.jsp" %>
	    	<br />
	    </div>
		<div class="pie"><div></div></div>
	</div>
	
</body>            
</html>