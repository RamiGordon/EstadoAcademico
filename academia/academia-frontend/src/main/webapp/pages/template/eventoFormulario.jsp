<%@ include file="includes/taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">
<head>
	<meta name="pageCode" content="16"/>
	<title>Eventos</title>
	<script type="text/javascript">
		$(document).ready(function(){
			dialogResult = {
				bgiframe: true,
				autoOpen: true,
				height: 300,
				width: 500,
				modal: true,
				draggable: true,
				resizable: false,				
				stack: true,
				close: function(event, ui) {$(this).dialog('destroy'); }, 
				buttons: {
					CANCELAR: function() {
						$(this).dialog('close');
					},
					ACEPTAR: function() {							
						$('#diagnostico').val(selDiag);						
						$(this).dialog('close');
					}
				}
				
			}

			var selDiag;					
			$('body').bind('diagnosticoSeleccionado', function(e, sel) { selDiag = sel; });
				
			$("#diagnosticoSearch").click(function() {					
				$("#diagnosticoDiv").load('${appCtx}/pages/template/eventoDiagnosticos.jsp?decorator=none', changeLinks ).dialog(dialogResult);			
			});
			
			$("#formDatepicker").datepicker(datepickerDefaults);

			// over boton diagnostico
			$("#diagnosticoSearch")
			.mouseover( function(){$("#diagnosticoSearch").attr("src","${appCtx}/images/iconos/lupaOver.gif")})
			.mouseout( function(){$("#diagnosticoSearch").attr("src","${appCtx}/images/iconos/lupaOn.gif")});
			
			
		});
	</script>
</head>

<body>
	
	<div class="bloque">
		<h3><span>Descripción</span></h3>
	    <div class="cuerpo">
	    	<p>
	    	La utilización de eventos custom permite enviar y recibir información entre pantallas manteniendo un bajo acoplamiento entre ellas. 
	    	Esto se puede utilizar como una forma de independizar las pantallas de su contexto.
	    	<br><br>
	    	En el siguiente ejemplo se muestra la utilización de eventos para pasar información desde una pantalla de búsqueda de Diagnosticos a un formulario. 
	    	<br>
	    	<br>
	    	Los metodos utilizados para disparar y escuchar eventos son los siguientes:
	    	</p>
	    	<div class="codeSample">	    	
	    	$('body').trigger('diagnosticoSeleccionado',sel);		
	    	<br><br>
	    	$('body').bind('diagnosticoSeleccionado', function(e, sel) { selDiag = sel; });	
			</div>
			<br>				    	
	    </div>
		<div class="pie"><div></div></div>
	</div>
	<div class="bloque">
		<h3><span>Alta de Afiliado</span></h3>
	    <div class="cuerpo" id="formBlock">
	    	<form action="" id="myForm">
	
        	<table class="formulario">
        		<tr>        	
            		 <s:textfield name="firstName" label="Nombre" cssClass="text ancho200" readonly="#parameters['readonly']" value="Javier"/>
            		 <s:textfield name="lastName" label="Apellido" cssClass="text ancho200" readonly="#parameters['readonly']" value="Iglesias"/>
				</tr>				
                <tr>
                	 <s:textfield name="numeroSocio" label="Número de socio" cssClass="text ancho200" readonly="#parameters['readonly']" value="60-392832001-01"/>
                	 <td align="right"><b>Diagnostico:</b></td>
                	 <td>
                	 	<table style="border-style: none; border-collapse: collapse; border-spacing: 0px; border-width: 0px;">
                	 		<tr>
                	 			<td style="border-width: 0px; padding: 0px; border-style: none;"><s:textfield name="diagnostico" label="Diagnostico" cssStyle="width: 65px;" cssClass="text" id="diagnostico" theme="simple"/></td>
                	 			<td style="border-width: 0px; padding: 0px; border-style: none;"><img id="diagnosticoSearch" src="${appCtx}/images/iconos/lupaOn.gif" border="0" title="Buscar Diagnostico" style="cursor:pointer;"/></td>
                	 		</tr>
                	 	</table>
                	 </td>               	
                </tr>
                <tr>                	
                	<s:radio list="{'Masculino','Femenino'}" label="Sexo" cssClass="radio" name="sexo" value="'Masculino'">                		
                		<s:param name="readonly" value="#parameters['readonly']"/>                  		
                	</s:radio>
                	<s:textfield name="fechaNacimiento" label="Fecha de nacimiento" cssClass="text fecha" readonly="#parameters['readonly']" value="20/06/1980" id="formDatepicker"/>
                </tr>
                <tr>
                	<s:select list="{'2 210','2 310','2 410','2 450'}" label="Plan Vigente" cssClass="ancho200" value="'2 310'">
                		<s:param name="readonly" value="#parameters['readonly']"/>
                	</s:select>                	
                	<s:textfield name="tipoSocio" label="Tipo de socio" cssClass="text ancho200" readonly="#parameters['readonly']" value="Directo"/>                	
                </tr>
                <tr>
                	<s:textarea name="comentarios" rows="2" label="Comentarios" cssClass="ancho200" readonly="#parameters['readonly']" value="fasdfdasfas fs fsad fsafsadfd"/>
					<s:if test="#parameters['readonly']">                	           
                		<td class="label">Archivo Adjunto:</td>
                		<td><div class="descarga deseps"><s:a href="#">Folleto informativo</s:a><span>EPS 1.4 Mb</span></div></td>
                	</s:if>
                	<s:else>
                		<s:file name="foto" label="Adjuntar Archivo" cssClass="file ancho200"/>                		
                	</s:else>       	
                </tr>
				<tr>
					<s:checkbox label="Es Titular" value="'false'"  name="titular">
						<s:param name="readonly" value="#parameters['readonly']"/>
					</s:checkbox>
					<s:select list="{'2 210','2 310','2 410','2 450'}" label="Opciones múltiples" cssClass="ancho200" value="{'2 210','2 310'}"  multiple="true">
                		<s:param name="readonly" value="#parameters['readonly']"/>
                	</s:select> 
				</tr> 
                <s:if test="!#parameters['readonly']">
                <tr>
                <td colspan="6" width="100%" align="right">
						<br/>
							<table>
								<tr>
								<td></td>
								<td><s:submit id="btnAceptar"  value="Aceptar"/></td>
								</tr>				   			   
							</table>
				</td>
<!--                	<td colspan="4" class="botones"><br/>-->
<!--					   <s:submit id="btnAceptar" value="Aceptar"/> -->
<!--                    </td>-->
                </tr>
                </s:if>
                
        	</table>
        </form>
	    </div>
		<div class="pie"><div></div></div>
	</div>
	
	<div id="diagnosticoDiv" title="Busqueda de Diagnosticos" style="display:none"/></div>
</body>            
</html>