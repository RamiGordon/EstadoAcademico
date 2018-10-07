<%@ taglib prefix="s" uri="/struts-tags"%>

<script type="text/javascript">
	$(function() {			
		$("#btnAgregar").click ( function () {
			$('#myForm').ajaxForm({target: '#fullPage',
				url: '<s:url action="CategoriaAction?decorator=none" method="save" namespace="/libreria"/>'});						
		} );

		$("#btnEditar").click ( function () {
			$('#myForm').ajaxForm({target: '#fullPage',
				url: '<s:url action="CategoriaAction?decorator=none" method="update" namespace="/libreria"/>'});						
		} );

		$("#btnEliminar").click ( function () {
			$('#myForm').ajaxForm({target: '#fullPage',
				url: '<s:url action="CategoriaAction?decorator=none" method="remove" namespace="/libreria"/>'});						
		} );

		$("#btnCancelar").click ( function () {				
			$('#myForm').ajaxForm({target: '#fullPage',
				url: '<s:url action="CategoriaAction?decorator=none" method="list" namespace="/libreria"/>'});
		} );

		$("#btnVolver").click ( function () {				
			$('#myForm').ajaxForm({target: '#fullPage',
				url: '<s:url action="CategoriaAction?decorator=none" method="list" namespace="/libreria"/>'});
		} );
		
	});
</script>

<div class="bloque" id="bloque">
	<h3><span><s:property value="operation"/></span></h3>
	<div class="cuerpo">
	
		<form action="" id="myForm">
			<s:hidden key="id" />
		    <table class="formulario">
		    	<tr>
		    		<s:textfield name="descripcion" label="Descripción" cssClass="text ancho200" readonly="readOnly"/>
		    	</tr>
		    	<tr>	
			    	<td colspan="6" width="100%" align="right">
			    	<br/>
						<table>
							<tr>
								<s:if test="%{operation=='Detalle'}">
									<td></td>
									<td><s:submit id="btnVolver" value="Volver"/></td>
								</s:if>
								<s:if test="%{operation=='Agregar'}">
									<td><s:submit id="btnAgregar" value="Aceptar"/></td>
				  					<td><s:submit id="btnCancelar" value="Cancelar"/></td>
								</s:if>
								<s:if test="%{operation=='Editar'}">
									<td><s:submit id="btnEditar" value="Aceptar"/></td>
									<td><s:submit id="btnCancelar" value="Cancelar"/></td>
								</s:if>
								<s:if test="%{operation=='Eliminar'}">
									<td><s:submit id="btnEliminar" value="Aceptar"/></td>
									<td><s:submit id="btnCancelar" value="Cancelar"/></td>					
								</s:if>				
							</tr>
						</table>		
					</td>
		    	</tr>
		    	
			</table>
		</form>
	
	</div>
	<div class="pie"><div></div></div>
</div>
	
