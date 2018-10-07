<%@ include file="/pages/template/includes/taglibs.jsp" %>

<form action="<s:url action="randomAction" namespace="/random/ajax"/>" id="myForm_<s:property value="_owid"/>">

	<s:hidden id="uid_%{uid}" name="_owid"/>

    <table class="formulario">
    	<colgroup>
    		<col width="150px">
    		<col width="250px">
    	</colgroup>
    	<tr>        	
        	<s:textfield name="fromContext" label="Valor en context" cssClass="text ancho200" readonly="true"/>
		</tr>				
		<tr>
        	<s:textfield name="fromSession" label="Valor en sesion" cssClass="text ancho200" readonly="true"/>
		</tr>
		<tr>
		<td colspan="6" width="100%" align="right"><br/>
			<table>
				<tr>
				<td><s:submit value="Generar en Contexto" method="doInContext"/></td>
				<td><s:submit value="Generar en Sesion" method="doInSession"/></td>
				<td><s:submit value="Recargar" method="refresh"/></td>
				</tr>				   			   
			</table>
		</td>
		</tr>
	</table>
</form>

<script type="text/javascript">
	applyAjaxHandler($('#myForm_<s:property value="_owid"/>'));
</script>
