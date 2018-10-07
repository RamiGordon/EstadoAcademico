<%@ include file="includes/taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">
<head>
	<meta name="pageCode" content="12"/>
	<title>Dialog</title>

	<script type="text/javascript">

	$(document).ready(function () {

		/**
		* ERROR MSG -
		* Muestra un error producido en un action dentro del popup de error
		* [ ver tambien funcion: showErrorMsg() en globals.js , para mostrar mensajes predefinidos]
		*/
		$('#btnErrorDialog').click(function() {

			$("#errorDialog").load('<s:url action="dialogAction!dialog"/>')
							.dialog(dialogDefaults)
							/* Sobreescribo el boton x default */
							.dialog('option', 'buttons', {
												ACEPTAR: function() 
												{
													$("#errorDialog").dialog('destroy');
												}
											}
									); 
			/* sobrescribo color del titulo*/
			$("#ui-dialog-title-errorDialog").css("color", "#F00A10") ; 
			
		});

		
		/**
		* ALERT MSG -
		* Muestra un alert
		* [ ver funcion:  showAlertMsg() en globals.js ]
		*/
		$('#btnWarningDialog').click(function() {

			showAlertMsg('Para completar la registración es necesario ingresar una dirección de mail válida.<br>Por favor, vuelva a intentarlo.<br>');
			
		});

		/**
		* INFO MSG-
		* Muestra un mensaje informativo al usuario
		* [ ver funcion:  showInfoMsg() en globals.js ]
		*/
		$('#btnInfoDialog').click(function() {
			
			showInfoMsg('El Registro se generó correctamente.<br>');
		});

		/**
		* CONFIRM MSG-
		* Muestra un mensaje de confirmacion al usuario
		* [ ver funcion:  showConfirmMsg() en globals.js ]
		*/
		$('#btnConfirmDialog').click(function() {
			
			showConfirmMsg('Desea continuar con el proceso ?<br>', confirmOK);
		});


		/**
		* Ejemplo de funcion a ejecutar luego de aceptar el confirm
		*/
		function confirmOK()
		{
			showInfoMsg('El usuario aceptó el pedido de confirmación...<br>');
		}


		// Muestra / oculta codigo de ejemplo -----------------------------
		$('#lnkCodigoEjemplo').click(function( event) {
			if ($("#codigoEjemplo").is(":hidden")) {

				$('#lnkCodigoEjemplo').text('ocultar código');
				$("#codigoEjemplo").show("fast");
			}
			else
			{
				$('#lnkCodigoEjemplo').text('ver código de ejemplo');
				$("#codigoEjemplo").hide("fast");
			}
			event.preventDefault();
			$('#lnkCodigoEjemplo').blur();
		});
		
		
	});
</script>

</head>

<body>

	<div class="bloque">
		<h3><span>Ejemplos de Dialog</span></h3>
		<div class="cuerpo">
			<p>
			A continuación se presentan los 4 diferentes tipos de Dialog visualizables por la aplicación.<br>
			El primer caso, es del tipo <b>error</b>. Este se utilizará para presentar errores severos producidos en la aplicación, por ejemplo errores producidos en las capas business o DAO.
			<br>
			<br>
			El segundo caso, es de tipo <b>warning</b>, el cual es utilizado para prevenir al usuario de una posible condición de error o para indicar la ocurrencia de errores no severos.<br>
			Por ejemplo, la validación de un formulario donde el usuario olvidó ingresar un dato obligatorio.
			<br>
			<br>
			El tercer caso, es de tipo <b>info</b>, el cual es utilizado para presentar al usuario un mensaje informativo que no esté relacionado con ningún problema<br>
			Por ejemplo, cuando una operación se realiza exitosamente.
			<br>
			<br>
			Finalmente se muestra un ejemplo de un diálogo tipo <b>confirm</b> cuya finalidad es la de pedir la confirmación por parte del usuario para continuar o no con la ejecución de un determinada acción.
			<br>
			<br>
			Ejemplos:<br>
			</p>
			<table>
				<tr>
					<td>&nbsp;&nbsp;</td>
			    	<td>
			    		<s:submit type="button" id="btnErrorDialog" value=" Error "/>
			    	</td>
			    	<td>
			    		<s:submit type="button" id="btnWarningDialog" value=" Warning "/>
			    	</td>
			    	<td>
			    		<s:submit type="button" id="btnInfoDialog" value=" Info "/>
					</td>
					<td>
			    		<s:submit type="button" id="btnConfirmDialog" value="Confirm"/>
					</td>
			  	</tr>
			</table>
			<p>

			La visualización de estos diálogos se efectúa mediante las funciones <b>showErrorMsg</b>, <b>showAlertMsg</b>, <b>showInfoMsg</b> y <b>showConfirmMsg</b> 
			respectivamente. las cuales reciben como parámetros el texto a visualizar y opcionalmente una funcion a ejecutar una vez cerrado el diálogo ( lo que se conoce como callback )
			<br>
			<br/><a href="#" class="lnk" id="lnkCodigoEjemplo">ver código de ejemplo</a><br/>
			</p>
			
			<div class="codeSample" id="codigoEjemplo" style="display:none">
			<span class="codeComment">// Ejemplo de mensaje tipo "info"</span><br/>
			$('#btnInfoDialog').click(function() { <br/>
			&nbsp;&nbsp;&nbsp;&nbsp; <b>showInfoMsg</b>('El Registro se gener&oacute; correctamente.&lt;br&gt;'); <br/>
			});<br/><br/>
			
			<span class="codeComment">// Ejemplo de mensaje tipo "confirm"</span><br/>
			$('#btnConfirmDialog').click(function() {<br/>
			&nbsp;&nbsp;&nbsp;&nbsp; <b>showConfirmMsg</b>('Desea continuar con el proceso ?&lt;br&gt;', confirmOK); 
			<span class="codeComment">// en caso de aceptar, se ejecutará la función 'confirmOK'</span><br/>
			});<br/><br/>
		
			</div>
			<br/>
		</div>
		<div class="pie"><div></div></div>
	</div>

</body>            
</html>