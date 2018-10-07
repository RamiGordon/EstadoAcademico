<%@ include file="../includes/taglibs.jsp" %>
<script type="text/javascript">
$(document).ready(function() {

	$('#btnCerrarPopup').click(function() {
		$("#miPopup").dialog('close');
	});
	
	$('#btnCerrarPopup').focus();

});
</script>
<table width="100%" height="178" cellpadding="0" cellspacing="0" border="0" align="center">
	<tr>
		<td width="80" align="center"><img src="${staticPath}images/mensajes/icono-info-popup.gif"/></td>
		<td id="infoTxt">El nuevo usuario se dió de alta satisfactoriamente</td>
	</tr>
	<tr>
	<td colspan="6" width="100%" align="right"><br/>
		<table>
			<tr>
				<td><s:submit type="button" id="btnCerrarPopup" value="Cerrar"/></td>
			</tr>				   			   
		</table>
	</td>
	</tr>
</table>
