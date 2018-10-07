<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ include file="../taglibs.jsp" %>
<meta name="decorator" content="<%= request.getParameter("decorator") %>"/>
<% String now = new SimpleDateFormat("dd/MM/yyyy - HH:mm:ss").format(new Date()).replace("-", "a las") ; %>
<script type="text/javascript">

   	$(document).ready(function () {

   		<s:if  test="%{ null != exceptionStack}" >
   			$("#btnMasInfoSpan").show();
   		</s:if>

	     $("#btnMasInfo").click( function(){
	
	     	if ($("#masInfo").is(":hidden"))
			{
				$("#masInfo").show();
			}
			else
			{
				$("#masInfo").hide();
			}	
	     });
	
	     $("#btnVolver").click( function(){ history.back(); });
    });    
</script>
 <!-- ERROR MSG -->
<div class="cuerpo">  
    <table width="100%" cellpadding="0" cellspacing="0" border="0">
    	<tr>
    		<td width="60" rowspan="2"><img src="${staticPath}images/mensajes/icono-error-popup.gif"/></td>
 			<td id="errorTxt">
 				<%-- ERRORES HTTP --%>
 				<cw:set var="err"  scope="page" value="${param.code}" />
 				<s:if test='%{ 404 == #attr.err}'>
					<s:text name="http.error.404.description"/><br/><br/>
					<s:text name="error.helpDesk"/>
					<script>
					$(document).ready(function () {
					
						if ($("#btnVolverSpan").is(":hidden"))
						{
							$("#btnVolverSpan").show();
							$('#btnVolver').show();
						}
					
						
					});	
					</script>
				</s:if>
				<s:elseif test='%{ 500 == #attr.err}'>
					<s:text name="http.error.500.description"/><br/><br/>
					<s:text name="error.helpDesk"/>
				</s:elseif>

				<%-- ERRORES DE LA APLICACION ( STRUTS ) --%>	
				<s:else>
					<s:actionerror />
 				</s:else>
			</td>
   		</tr>
   		<tr>
   			<td align="right" valign="bottom">
   				<span id="btnVolverSpan"  style="display:none">
   					<s:submit type="button" id="btnVolver" value="Volver"/>
 				</span>
 				<span id="btnMasInfoSpan"  style="display:none">
 					<s:submit type="button" id="btnMasInfo" value="Mas Información"/>
   				</span>
			</td>
   		</tr>
   	</table>
   	<table width="100%" cellpadding="0" cellspacing="0" border="0" id="masInfo" style="display:none">
   		<tr>
   			<td height="15"></td>
   		</tr>
   		<tr>
   			<td height="1" bgcolor="#999999"></td>
   		</tr>
   		<tr>
   			<td height="15"></td>
   		</tr>
   		<tr>
   			<td>
   				<div id="stackTrace">
   					<b>Producido el <%= now %> Hs.</b><br/>
 					<s:property  value="%{exception.message}"/><br/>
  				<s:property value="%{exceptionStack}"/>
	  			</div>
 				<br>
 			</td>
 		</tr>
 	</table>
</div>
<!-- / ERROR MSG -->