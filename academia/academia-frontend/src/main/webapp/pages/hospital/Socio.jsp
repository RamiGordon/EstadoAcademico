<%@ taglib prefix="s" uri="/struts-tags"%>

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


	<form action="${appCtx}/SocioAction?decorator=none" id="myForm">
        	<table class="formulario">
        		<s:hidden id="id_hidden" name="readonly" value="true"/>
        		<tr>        	
            		 <s:textfield name="firstName" label="Nombre" cssClass="text ancho200" readonly="#parameters['readonly']" value="Javier"/>
            		 <s:textfield name="lastName" label="Apellido" cssClass="text ancho200" readonly="#parameters['readonly']" value="Iglesias"/>
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