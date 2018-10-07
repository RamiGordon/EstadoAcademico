<%@ include file="includes/taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">
<head>
	<meta name="pageCode" content="3"/>
	<meta name="helpInfo" content="about:blank"/>
	<title>Widget Layout</title>
	<script type="text/javascript">
	$(function(){	
		$("#bloque").load('${appCtx}/pages/template/bloque.jsp?decorator=none');
		$("#botones").load('${appCtx}/pages/template/botones.jsp?decorator=none');
		$("#buscador").load('${appCtx}/pages/template/descarga.jsp?decorator=none');
		$("#detalle").load('${appCtx}/pages/template/detalle.jsp?readonly=true&decorator=none');
		
		
		$("#grilla").load('${appCtx}/pages/template/ajax/results.jsp', changeLinks );
	});


	</script>
	
</head>

<body>
	<table>
		<tr valign="top">
			<td width="30%"><div id="bloque"></div><div id="botones"></div><div id="buscador"></div></td>
			<td><div id="grilla"></div><div id="detalle"></div></td>			
		</tr>		
	</table>
	
</body>            
</html>