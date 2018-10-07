<%@ include file="includes/taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">
<head>
	<meta name="pageCode" content="7"/>
	<title>Formulario</title>
	<script>
	
	$(document).ready(function() {
		
   		// Submit del form por AJAX -
   		formOptions = { 
   	    	target:        '#formBlock',
   	    	success:       	changeLinks
   	   	}	        
   		$('#myForm').ajaxForm(formOptions); // "Ajaxifico" el form
   		
	});
	
	</script>
</head>

<body>

	<div class="bloque">
		<h3><span>Caracter&iacute;sticas</span></h3>
	    <div class="cuerpo">
	    	<p>
	    	Los formularios y sus elementos son definidos en el código utilizando tags de Struts.<br/>Estos elementos han sido 
	    	customizados de forma tal de poder presentarse como texto dependiendo de la existencia de un parámetro "<b>readonly</b>" con valor "<b>true</b>" <br/>
	    	Ejemplo:
	    	</p>
	    	<div class="codeSample">
	    	
			&nbsp;&nbsp; &lt;table class="formulario"&gt;<br/>
        	&nbsp;&nbsp;&nbsp;&nbsp; &lt;tr&gt;<br/>        	
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;s:textfield name="firstName" label="Nombre" cssClass="text ancho200" readonly="<b>#parameters['readonly']</b>" value="Javier"/&gt;<br/>

	    	</div>
	    	<br/>
	    	<p>De esta manera un mismo formulario puede contar con 2 vistas (form y detalle), sin necesidad de crear un jsp adicional.</p>
	    	<br/>
	    </div>
		<div class="pie"><div></div></div>
	</div>

	<div class="bloque">
		<h3><span>Ejemplo de formulario </span></h3>
	    <div class="cuerpo" id="formBlock">
	    	<%@ include file="/pages/template/includes/form.jsp" %>
	    </div>
		<div class="pie"><div></div></div>
	</div>
	
</body>            
</html>