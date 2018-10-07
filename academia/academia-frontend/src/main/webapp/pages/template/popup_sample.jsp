<%@ include file="includes/taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">
<head>
	<meta name="pageCode" content="13"/>
	<title>Popup</title>
	<script>
	$(function() {

		// Configuro el popup extendiendo los settings x defaut.
		settings = dialogDefaults;
		settings.autoOpen = false;
		settings.height = 220;
		settings.width = 350;
		settings.position = 'center';
		settings.close = function(event, ui) {$(this).html(''); },
		settings.buttons = {};
		
		$("#miPopup").dialog(settings)	;

		// Abre popup ------------------------
		$('#btnPopup').click(function() {
			
			$("#miPopup").load('${appCtx}/pages/template/popup/formulario.jsp');
			$("#miPopup").dialog('open');

		});

		// Muestra / oculta codigo de ejemplo -----------------------------
		$('#lnkEjemploForm').click(function( event) {
			if ($("#ejemploForm").is(":hidden")) {

				$('#lnkEjemploLink').text('ver código de ejemplo');
				$("#ejemploLink").hide("fast");
				
				$('#lnkEjemploForm').text('ocultar código');
				$("#ejemploForm").show("fast");

			}
			else
			{
				$('#lnkEjemploForm').text('ver código de ejemplo');
				$("#ejemploForm").hide("fast");
			}
			event.preventDefault();
		});

		$('#lnkEjemploLink').click(function( event) {

			if ($("#ejemploLink").is(":hidden")) {
	
				$("#ejemploForm").hide("fast");
				$('#lnkEjemploForm').text('ver código de ejemplo');

				$("#ejemploLink").show("fast");
				$('#lnkEjemploLink').text('ocultar código');
			}
			else
			{
				$('#lnkEjemploLink').text('ver código de ejemplo');
				$("#ejemploLink").hide("fast");
			}
			event.preventDefault();
		});
		
	});
	</script>
</head>

<body>

	<div class="bloque">
		<h3><span>Ejemplo de ventanas Popup</span></h3>
		<div class="cuerpo">
			<table width="100%" cellpadding="0" cellspacing="0" border="0">
				<tr>
					<td>
						<p>
						Los popups de la aplicación estan basados en el widget <b>Dialog</b> de JQuery, 
						de manera similar a los demas mensages emergentes (&nbsp; <a href="dialog_samples.jsp" class="lnk">ver ejemplo</a> &nbsp;).<br/><br/>
						Es importante notar que al utilizar este tipo de componente no estamos creando un popup real ( lo cual es ventana 
						emergente del browser) sino una simulación mediante elementos flotantes en la pagina ( por ejemplo, un &lt;div&gt; )<br/>
						Por este motivo se deben tener en cuenta algunas consideraciones con respecto a la navegación dentro del contenido de los popups.<br/><br/>
						- Los formularios deben postearse via ajax para evitar abandonar la pagina actual. ( <a href="#" class="lnk" id="lnkEjemploForm">ver código de ejemplo</a> )<br/>
						</p>
						<div class="codeSample" id="ejemploForm" style="display:none">
						$(document).ready(function() { <br/><br/>
						&nbsp;&nbsp; <span class="codeComment">/* Se establece que el submit del form sea por ajax */</span><br/>
						&nbsp;&nbsp; formOptions = { <br/>
					    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;target:&nbsp;&nbsp;'#miPopup',   &nbsp;&nbsp;&nbsp;&nbsp;<span class="codeComment">/* <- div contenedor del popup (destino del submit)*/</span><br/>
					    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;beforeSubmit:&nbsp;	validaForm   &nbsp;&nbsp;&nbsp;&nbsp;<span class="codeComment">/* <- funcion de validacion previa al submit*/</span><br/>
					   	&nbsp;&nbsp; }	<br/><br/>        
						&nbsp;&nbsp; $('#newUserForm').<b>ajaxForm</b>(formOptions);<br/><br/>
						});<br/><br/>

						</div>
		
						<p>
						- Los botones o links hacia otras páginas a mostrar dentro del popup deberán cargar el contenido  ( por ajax ) dentro del 
						conenedor del popup. ( <a href="#" class="lnk" id="lnkEjemploLink">ver código de ejemplo</a> )<br/>
						</p>
						<div class="codeSample" id="ejemploLink" style="display:none">
						$(document).ready(function() { <br/><br/>
						&nbsp;&nbsp;&nbsp;&nbsp; <span class="codeComment">/* Link hacia pagina 2 */</span> <br/>
						&nbsp;&nbsp; $('#lnkPagina2').click(function() { <br/><br/>
						&nbsp;&nbsp;&nbsp;&nbsp; $('#miPopup').load('pagina2.jsp'); &nbsp;&nbsp;&nbsp;&nbsp; <span class="codeComment">/* cargo un jsp dentro del popup */</span> <br/>
						&nbsp;&nbsp; }); <br/><br/>
						});<br/><br/>
						
						</div>
						<br/>
					</td>
				</tr>
				<tr>
				    <td colspan="6" width="100%" align="right">
						<br/>
							<table>
								<tr>
								<td></td>
								<td><s:submit id="btnPopup"  value="Ver ejemplo Popup"/></td>
								</tr>				   			   
							</table>
					</td>
				</tr>
			</table>
		</div>
		<div class="pie"><div></div></div>
	</div>

	<div id="miPopup" title="Crear Nuevo Usuario" style="display:none"/>
</body>            
</html>