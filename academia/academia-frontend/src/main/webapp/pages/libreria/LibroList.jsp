<%@ include file="/pages/template/includes/taglibs.jsp" %>
<%@ page import="java.util.Collection"%>
<%@ page import="ar.com.osde.framework.entities.organization.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">
<head>
	<meta name="pageCode" content="33"/>
	<meta name="menuCode" content="31"/>
	<meta name="pageTitle" content="ABM Simple"/>
	<title>Administraci�n de Libros</title>
	<script>
		menuActivo = 31;
		
		$(document).ready(function(){	
			changeLinks();
		})
	</script>
</head>

<body>

<div id="fullPage">

<div class="bloque" id="bloque">    	
	<h3><span>Listado</span></h3>
   	<div class="cuerpo">
		<div id="ajxDspId">
		<script type="text/javascript">

		var selectedId = -1;
		
		$(function() {						
			$("#ajxDspId :radio").click ( function () {				
				$("#ajxDspId :radio").parent().parent().removeClass('selectedRow');
				$(this).parent().parent().addClass('selectedRow');
				selectedId = $('input[name=seleccion]:checked').val();
			} );
		});

		function add()	{
			$('#fullPage').load('/academia-frontend/libreria/LibroAction!add.do?decorator=none');
		}

		function edit()	{
			call('/academia-frontend/libreria/LibroAction!edit.do?decorator=none&id=' + selectedId);
		}
		
		function eliminar()	{
			call('/academia-frontend/libreria/LibroAction!destroy.do?decorator=none&id=' + selectedId);			
		}

		function show()	{
			call('/academia-frontend/libreria/LibroAction!show.do?decorator=none&id=' + selectedId);
		}

		function call(urlString) {
			if(selectedId != -1){ 
				$('#fullPage').load(urlString);					
			} else { 
				showInfoMsg('Debe seleccionar un Libro.<br>');
			}
			return false;
		}
		
		</script>
	     <table class="toolBar">
	     	<tr>
	     		<td width="20"><a href="javascript:add();void(0)"><img src="${staticPath}images/iconos/activar.gif"  border="0" title="Agregar" width="16" height="16"/></a></td>
	     		<td width="20"><a href="javascript:edit();void(0)"><img src="${staticPath}images/iconos/editar.gif"  border="0" title="Editar" width="16" height="16"/></a></td>
	     		<td width="20"><a href="javascript:eliminar();void(0)"><img src="${staticPath}images/iconos/eliminar.gif"  border="0" title="Eliminar"  width="16" height="16"/></a></td>
	     		<td width="20"><a href="javascript:show();void(0)"><img src="${staticPath}images/iconos/ver.gif"  border="0" title="Consultar"  width="16" height="16"/></a></td>
	     		<td></td>
	    	</tr>
		</table>
	  <div id="dialog"></div>
		<display:table name="session.results" id="result" pagesize="10" defaultsort="2" defaultorder="ascending" class="datos">

				<display:column headerClass="primero" style="width:5%">
					<input type="radio" id="seleccion" name="seleccion" value="${result.id}">
					
				</display:column>
				<display:column property="nombre" title="Nombre" style="width:20%" sortable="true"/>				
				<display:column property="descripcion" title="Descripci�n" style="width:30%" sortable="true"/>
				<display:column property="isbn" title="ISBN" style="width:20%" sortable="true"/>
				<display:column property="categoria.descripcion" title="Categoria" style="width:24%" sortable="true"/>				
				<display:column headerClass="ultimo" style="width:1%"/>
		</display:table>
		</div>
 	</div>
	<div class="pie"><div></div></div>
</div>

</div>

</body>
</html>