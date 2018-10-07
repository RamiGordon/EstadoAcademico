<%@ include file="taglibs.jsp" %>
	<script type="text/javascript">


		$(document).ready(function () {
			
			// Datepicker
			$("#formDatepicker").datepicker(datepickerDefaults);
			
			
			$("#btnModificar").click(function(event) {	 
					void(0);
					event.preventDefault();
			});

		});
	</script>


	<form action="${appCtx}/pages/template/includes/form.jsp?decorator=none" id="myForm">
        	<table class="formulario">
        		<s:hidden id="id_hidden" name="readonly" value="true"/>
        		<tr>        	
            		 <s:textfield name="firstName" label="Nombre" cssClass="text ancho200" readonly="#parameters['readonly']" value="Javier"/>
            		 <s:textfield name="lastName" label="Apellido" cssClass="text ancho200" readonly="#parameters['readonly']" value="Iglesias"/>
				</tr>				
                <tr>
                	 <s:textfield name="numeroSocio" label="Número de socio" cssClass="text ancho200" readonly="#parameters['readonly']" value="60-392832001-01"/>
                	 <s:textfield name="numeroCuit" label="Número de CUIT/CUIL/DNI/CI/LC" cssClass="text ancho200" readonly="#parameters['readonly']" value="20-28030232-7"/>                	
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
					<s:checkboxlist cssStyle="scrolling" list="{'2 210','2 310','2 410','2 450'}" label="Opciones múltiples"  value="{'2 210','2 310'}" name="planes">
			        	<s:param name="readonly" value="#parameters['readonly']"/>      
		            </s:checkboxlist> 
				</tr> 
				<tr><td>&nbsp;</td>
				</tr>
                <s:if test="!#parameters['readonly']">
                <tr>
                <td colspan="6" width="100%" align="right">
						<br/>
							<table>
								<tr>
								<td>
								</td>
								<td>
								<s:submit id="btnAceptar"  value="Aceptar"/>    
								</td>
								</tr>				   			   
							</table>
					</td>
                </tr>
                </s:if>
                
        	</table>
        </form>