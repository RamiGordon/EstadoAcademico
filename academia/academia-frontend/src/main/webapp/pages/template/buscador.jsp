<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN">
<html>
<head>
	<meta name="pageCode" content="10"/>
	<title>Buscador</title>

	<script type="text/javascript">
	var personas = ['Cristian', 'Javier', 'Oscar', 'Débora'];

	$(document).ready(function() {
	
   		// Autocomplete -
   		opciones = {matchContains:true};
   		$("#apellido").autocomplete('${appCtx}/pages/template/ajax/apellidos.jsp');
   		$("#nombre").focus().autocomplete(personas, opciones);

   		// Submit del form por AJAX -
   		formOptions = { 
   	    	target:        '#displaytagResultContainer',
   	    	beforeSubmit: 	validaForm,
   	    	success:       	function(){changeLinks(); $("#buttonHide").click()}
   	   	}	        
   		$('#usuariosForm').ajaxForm(formOptions);
   		
	});

	
	function validaForm()
	{
		
		campoNombre = $("#nombre");
   		campoApellido = $("#apellido");
   	
		var bValid = true;
		// elimino espacios en blanco incorrectos
		campoNombre.val( jQuery.trim(campoNombre.val()));
		campoApellido.val( jQuery.trim(campoApellido.val()));

		if( (campoNombre.val().length < 1) && (campoApellido.val().length < 1) )
		{
			bValid = false;
			showAlertMsg('Por favor, ingrese al menos un campo para búsqueda', function(){campoNombre.focus()}) ;
		}
		return bValid;
	}


	
	$(function(){	
		// Toggle
		$("#buttonHide").click(function () {
			if ($("#hide").is(":hidden")) {
	    		$("#hide").slideDown();
	    		$("#buttonHide").attr("src","${staticPath}images/bot_minimizar.gif");	    		
		    } else {
		    	$("#hide").slideUp();
		    	$("#buttonHide").attr("src","${staticPath}images/bot_maximizar.gif");		    	
		    }	      
	    });

		
		$('#lnkEjemplo').click(function( event) {

			if ($("#codigoEjemplo").is(":hidden")) {
	
				$("#codigoEjemplo").show("fast");
				$('#lnkEjemplo').text('ocultar código');
			}
			else
			{
				$('#lnkEjemplo').text('ver código');
				$("#codigoEjemplo").hide("fast");
			}
			$('#lnkEjemplo').blur();
			event.preventDefault();
		});

	});
	
	</script>
</head>

<body>

	<div class="bloque">
		<div class="top"><div>&nbsp;</div></div>
	    	<div class="cuerpo">	
			<p>
			Un campo de formulario puede contar con la funcionalidad de "autocompletar". Esto se logra mediante el plugin de JQuery, <b>Autocomplete</b>.<br/>
			A medida que se ingresa texto en el campo, se muestran en un panel desplegable aquellas opciones que incluyan total o parcialmente el texto tipeado.<br/>
			Las distintas opciones pueden obtenerse desde un conjunto de datos pre-existentes en la página o bien recuperarse desde el server mediante ajax.<br/>
			A continuación se presentan ejemplos de ambos casos.<br/><br/>
			<a href="#" class="lnk" id="lnkEjemplo">ver código</a>
			</p>
			<div class="codeSample" id="codigoEjemplo" style="display:none">
			
				&lt;script type="text/javascript">	<br/>
				&nbsp;&nbsp; var <b>personas</b> = ['Cristian', 'Javier', 'Oscar', 'Débora']; <span class="codeComment"> // Array con nombres </span> <br/>
				&nbsp;&nbsp; $(document).ready(function() {	<br/>
				&nbsp;&nbsp;&nbsp;&nbsp; opciones = {matchContains:true};	<br/>
				&nbsp;&nbsp;&nbsp;&nbsp; $("#apellido").<b>autocomplete</b>('${appCtx}/pages/template/ajax/apellidos.jsp'); 
				<span class="codeComment"> // Completa con datos recuperados por ajax </span>	<br/>
				&nbsp;&nbsp;&nbsp;&nbsp; $("#nombre").focus().<b>autocomplete</b>( <b>personas</b>, opciones ); 
				<span class="codeComment"> // Completa con datos pre-cargados </span>	<br/>
				&nbsp;&nbsp; });<br/>
				&lt;/script>

			</div>
			<br/>
			
			
		</div>
		<div class="pie"><div></div></div>
	</div>


	<div class="bloque">
		<h3><span>Búsqueda de socios</span></h3>
		<img src="${staticPath}images/bot_minimizar.gif" title="Minimizar / Restaurar" id="buttonHide" class="iconos"/>
	    <div class="cuerpo" id="hide">

	    	<form action="${appCtx}/pages/template/ajax/results.jsp" id="usuariosForm">
	    		<table class="formulario" border="0">
	    			<tr>
	    				<s:textfield id="nombre" name="firstName" label="Nombre" cssClass="text ancho200" readonly="#parameters['readonly']" />
	            		<s:textfield id="apellido" name="lastName" label="Apellido" cssClass="text ancho200" readonly="#parameters['readonly']"/>
	    			</tr>
	    			<tr>
	    				<td align="right">Datos (pre-cargados):&nbsp;</td>
	    				<td>&nbsp;&nbsp;[ 'Cristian', 'Javier', 'Oscar', 'Débora' ]</td>
	    				<td align="right">Datos (por ajax ):&nbsp;</td>
	    				<td>&nbsp;&nbsp;[ 'Rodriguez', 'Iglesias', 'De la Vega', 'Bamballi' ]</td>
	    			</tr>
	    			<tr>
	                	 <td colspan="6" width="100%" align="right">
						<br/>
							<table>
								<tr>
								<td>
															
								</td>
								<td>
								<s:submit type="button" id="btnAceptar"  value="Aceptar"/>    
								</td>
								</tr>				   			   
							</table>
					</td>
	                </tr>
	    		</table>
	    	</form>
	    </div>
		<div class="pie"><div></div></div>
	</div>
	<div id="displaytagResultContainer"></div>
	
</body>
</html>