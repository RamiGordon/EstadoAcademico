<%@ include file="includes/taglibs.jsp" %>
<%@ page import="java.util.Collection"%>
<%@ page import="ar.com.osde.framework.entities.organization.*"%>

<%

Collection l = new java.util.ArrayList();

for (int i = 1; i<30;i++) {
	ar.com.osde.framework.entities.user.impl.UserIntranet user = new ar.com.osde.framework.entities.user.impl.UserIntranet();
	user.setUserName("A00" + i);
	user.setFirstName("Diagnostico " + i);
	l.add(user);
}

request.setAttribute( "usuarios", l );
%>	
<cw:set var="explain" scope="page" value="${param.exp}" />
<cw:set var="pgSize" scope="page" value="10" />

<div class="bloque">
    	<h3><span>Resultado</span></h3>
		<div class="cuerpo">
	     <div id="ajxDspId">
	     	<script type="text/javascript">
				$(document).ready(function(){
					$('input[name=diagnosticoSeleccionado]').change(function() {						
						var sel = $('input[name=diagnosticoSeleccionado]:checked').val();
						$('body').trigger('diagnosticoSeleccionado',sel);			
					});	
				});
			</script>
	     
			<display:table name="usuarios" id="users" pagesize="5" defaultorder="ascending" class="datos" requestURI="${appCtx}/pages/template/eventoDiagnosticos.jsp" >

				<display:column headerClass="primero" style="width:1%"><!-- <s:checkbox id="users" property="firstName" name="seleccionados"/> -->
					<input type="radio" name="diagnosticoSeleccionado" value="${users.userName}" id="diagnosticoSeleccionado">
				</display:column>						
				<display:column property="userName" title="Código" style="width:30%"/>
				<display:column property="firstName" title="Descripción" style="width:70%"/>				
				<display:column headerClass="ultimo" style="width:1%"/>
			</display:table>
		</div>
	</div>
	<div class="pie"><div></div></div>
</div>
