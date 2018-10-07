<%@ taglib prefix="sec" 		uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="decorator"	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="display"		uri="http://displaytag.sf.net"  %>
<%@ taglib prefix="s"			uri="/struts-tags" %>
<%@ taglib prefix="c"			uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript">
	$(function() {	
		

				
		$("#btnAgregar").click ( function () {
			$('#myForm').ajaxForm({target: '#fullPage',
				url: '<s:url action="LibroAction?decorator=none" method="save" namespace="/libreria"/>'});						
		} );

		$("#btnEditar").click ( function () {
			$('#myForm').ajaxForm({target: '#fullPage',
				url: '<s:url action="LibroAction?decorator=none" method="update" namespace="/libreria"/>'});						
		} );

		$("#btnEliminar").click ( function () {
			$('#myForm').ajaxForm({target: '#fullPage',
				url: '<s:url action="LibroAction?decorator=none" method="remove" namespace="/libreria"/>'});						
		} );

		$("#btnCancelar").click ( function () {				
			$('#myForm').ajaxForm({target: '#fullPage',
				url: '<s:url action="LibroAction?decorator=none" method="list" namespace="/libreria"/>'});
		} );

		$("#btnVolver").click ( function () {				
			$('#myForm').ajaxForm({target: '#fullPage',
				url: '<s:url action="LibroAction?decorator=none" method="list" namespace="/libreria"/>'});
		} );

		$("#fechaEdicion").datepicker(datepickerDefaults);
	    $("#fechaEdicion").mask("99/99/9999",{placeholder:" "});
	});
</script>

<div class="bloque" id="bloque">
	<h3><span><s:property value="operation"/></span></h3>
	<div class="cuerpo">
		<form action="" id="myForm">
			<s:hidden id="selectedId" key="id" />
		    <table class="formulario">
		    	<tr>
		    		<s:textfield name="libro.nombre" label="Nombre" cssClass="text ancho200" readonly="readOnly"/>
		    	</tr>
		    	<tr>
		    		<s:textfield name="libro.descripcion" label="Descripción" cssClass="text ancho200" readonly="readOnly"/>
		        </tr>
		    	<tr>
		    		<s:textfield name="libro.isbn" label="ISBN" cssClass="text ancho200" readonly="readOnly"/>
		    	</tr>
			    <tr>	
			    	<s:date name="libro.fechaEdicion" format="dd/MM/yyyy" id="fechaEdicionFormated" />		    		
		    		<s:textfield id="fechaEdicion" name="libro.fechaEdicion" label="Fecha de Edición" cssClass="text fecha" readonly="readOnly" 
		    					 value="%{fechaEdicionFormated}"/>
		    	</tr>
			    <tr>		    					    
		    		<s:textfield  name="libro.stockMinimo" label="Stock Minimo" cssClass="text ancho200" readonly="readOnly"/>
		    	</tr>
		    	<tr>
		    		<s:if test="operation !='Agregar'">
			    		<s:text name="libro.precio" id="formatedPrecio"></s:text>		 
			    	</s:if>	   				    		
		    		<s:textfield name="libro.precio" label="Precio" cssClass="text ancho200" readonly="readOnly" 
		    					 value="%{formatedPrecio}"/>
		    	</tr>		    			    			    			    	
		    	<tr>
			    	<s:if test="readOnly">
			    		<s:textfield name="libro.categoria.descripcion" label="Categoria" readonly="readOnly"/>
			    	</s:if>
			    	<s:else>
			    		<s:select list="categoriaList" name="libro.categoria.id" label="Categoria" listKey="id" listValue="descripcion" cssClass="ancho200" emptyOption="true"/>
			    	</s:else>
		    	</tr>		    	
		    	<tr>
		    		<td class="label">Autores:</td>
		    		<td>
			    	<s:if test="readOnly">
			    		<table cellspacing="0px">
		    				<s:iterator value="autores">
		    					<tr><td><s:property value="nombre"/></td></tr>							
							</s:iterator>
						</table>
			    	</s:if>
			    	<s:else>
			    		<s:select list="autorList" name="libro.autores.id" listKey="id" listValue="nombre" cssClass="ancho200" multiple="true" theme="simple"/>
			    	</s:else>
			    	</td>			    	
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