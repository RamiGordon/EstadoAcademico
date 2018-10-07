<%@ include file="/pages/template/includes/taglibs.jsp" %>
<%@ page import="java.util.Collection"%>
<%@ page import="ar.com.osde.framework.entities.organization.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">
<head>
	<meta name="pageCode" content="32"/>
	<meta name="menuCode" content="31"/>
	<meta name="pageTitle" content="ABM Simple"/>
	<title>Administración de Categorias</title>
	<script>
		menuActivo = 31;
		
		$(document).ready(function(){	
			changeLinks();
			$("#imgHistory").click ( function () {
				 var id = document.getElementsByName('id')[0].value;
				 var contextPath = '/academia-frontend/';
				 var entityName = 'ar.com.stk.common.entities.libreria.Categoria';
				 var dialog = new OsdeFrameworkHistorialDialogBox(contextPath,
	
				                  {entity:entityName, entityId: id, decorator:'ajax'});
				 dialog.showDialog();
				 return false;
			} );
							
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
			$('#fullPage').load('/academia-frontend/libreria/CategoriaAction!add.do?decorator=none');
		}

		function edit()	{
			call('/academia-frontend/libreria/CategoriaAction!edit.do?decorator=none&id=' + selectedId);
		}
		
		function eliminar()	{
			call('/academia-frontend/libreria/CategoriaAction!destroy.do?decorator=none&id=' + selectedId);			
		}

		function show()	{
			call('/academia-frontend/libreria/CategoriaAction!show.do?decorator=none&id=' + selectedId);
		}
	
		function call(urlString) {
			if(selectedId != -1){ 
				$('#fullPage').load(urlString);				
			} else { 
				showInfoMsg('Debe seleccionar una Categoria.<br>');
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
	  
		<display:table name="session.results" id="result" pagesize="10" defaultsort="2" defaultorder="ascending" class="datos">

				<display:column headerClass="primero" style="width:5%">
					<input type="radio" id="seleccion" name="seleccion" value="${result.id}">
					
				</display:column>
				<display:column property="descripcion" title="Descripción" style="width:94%" sortable="true"/>				
				<display:column headerClass="ultimo" style="width:1%"/>
		</display:table>
		</div>
 	</div>
	<div class="pie"><div></div></div>
</div>

</div>

</body>
</html>