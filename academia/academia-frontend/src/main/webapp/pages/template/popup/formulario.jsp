<%@ include file="../includes/taglibs.jsp" %>
<script type="text/javascript">
$(document).ready(function() {

	$('#btnCerrarPopup').click(function() {
		$("#miPopup").dialog('destroy');
	});
	
	// Submit del form por AJAX ------------------------------------------------
	formOptions = { 
    	target:        '#miPopup', /* contenedor del popup*/
    	beforeSubmit: 	validaForm /* funcion de validacion previa al submit*/
   	}	        
	$('#newUserForm').ajaxForm(formOptions);


	// Validacion del formulario -----------------------------------------------
	campoNombre = $("#nombre");
	campoEmail = $("#email");
	campoPass = $("#pass");
	allFields = $([]).add(campoNombre).add(campoEmail).add(campoPass);
	
	function validaForm()
	{
		// elimino espacios en blanco incorrectos
		campoNombre.val( jQuery.trim(campoNombre.val()));
		campoEmail.val( jQuery.trim(campoEmail.val()));
		campoPass.val( jQuery.trim(campoPass.val()));

		
	
		var bValid = true;
		var mailExp = /^[a-z0-9_.-]+@[a-z0-9_]+\.[a-z0-9_.]+[a-z]$/i;
		allFields.removeClass('ui-state-error');

		if(campoNombre.val().length < 1)
		{
			$('.formErrorMsg').text('Ingrese un nombre');
			campoNombre.addClass('ui-state-error');
			campoNombre.focus();
			bValid = false;
		}
		else if( ! mailExp.test(campoEmail.val())	)
		{
			$('.formErrorMsg').text('Ingrese un mail válido');
			campoEmail.addClass('ui-state-error');
			campoEmail.focus();
			bValid = false;
		}
		else if(campoPass.val().length < 5)
		{
			$('.formErrorMsg').text('Ingrese un password de al menos 5 caracteres');
			campoPass.addClass('ui-state-error');
			campoPass.focus();
			bValid = false;
		}
		return bValid;
	}

	campoNombre.focus();

});
</script>
<form action="${appCtx}/pages/template/popup/alta_ok.jsp" id="newUserForm">

<table width="100%" height="178" cellpadding="0" cellspacing="0" border="0" align="center">
	<tr height="130">
		<td><br/>
		<!-- form -->
		<table class="formulario" width="90%" align="center" border="0">
			<tr>        	
		   		 <s:textfield name="nombre" id="nombre" label="Nombre" cssClass="text ancho200" readonly="#parameters['readonly']" value=""/>
			</tr>
			<tr>
				<s:textfield name="email" id="email" label="e-mail" cssClass="text ancho200" readonly="#parameters['readonly']" value=""/>
			</tr>
			<tr>
				<s:password name="pass" id="pass" label="password" cssClass="text ancho200" readonly="#parameters['readonly']" value=""/>
			</tr>
			<tr>
				<td colspan="2" class="formErrorMsg" align="center">&nbsp;</td>
			</tr>
		</table>
		<!-- /form  -->
		</td>
	</tr>
	<tr>
	<td colspan="6" width="100%" align="right"><br/>
		<table>
			<tr>
				<td><s:submit id="btnAceptar" value="Aceptar"/></td>
				<td><s:submit type="button" id="btnCerrarPopup" value="Cancelar"/></td>
			</tr>				   			   
		</table>
	</td>
	</tr>
	</form><!-- conviene cerrar el form en un sector no renderizable del html para evitar espaciados incorrectos -->
</table>
