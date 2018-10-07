<%@ include file="/pages/template/includes/taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">
<head>
<meta name="pageCode" content="36"/>
<meta name="menuCode" content="32"/>
	<link type="text/css" href="<s:url value="/lib/styles/global.css" includeParams="none"/>" rel="stylesheet"  />


	<title>Ejemplo de llamado al ABM Genérico - Continente</title>

	<script type="text/javascript">
		var contextPath = "<s:url value="/" />";

		// Este objeto debe existir y no debe ser nulo.
		var crudComponentResult = {};

		// Se establece la configuracion del dialogo.
		$(document).ready(function () {
			continenteDialogDefaults = {
					bgiframe: true,
					autoOpen: false,
					height: 400,
					width: 650,
					position: 'center',
					modal: true,
					draggable: true,
					resizable: false,				
					stack: true,
					zIndex: 500,
					close: function(event, ui) {$(this).html(''); },
					buttons: {}
			}; 
			$("#continenteDiv").dialog(continenteDialogDefaults);

			// Asociamos el 'crudComponentResult' al evento 'selected', 
			// haciendo que se dispare la funcion 'itemSeleccionado'.
			$(crudComponentResult).bind("selected", itemSeleccionado);
		});
		
		// Funcion que se invoca al hacer click en la lupa de busqueda.
		function abrirDialogo() {
			// Cargamos el contenido del generic-crud en el div de nuestra pagina.
			var url = "crud/listar.do?entidad=Continente&dialog=true&decorator=none";;
			$("#continenteDiv").load(contextPath + url);
			$("#continenteDiv").dialog('open');
		}

		// Listener que atiende el evento disparado por el generic-crud 
		// al seleccionar uno o mas items.
		function itemSeleccionado(e, data) {
			var cont = data.items[0].codigo;
			$("#continente").val(cont);
		}
	</script>


</head>
<body>
	<table class="formulario">
     <tr>

       	 <td align="right"><b>Continente:</b></td>
       	 <td>
       	 	<table style="border-style: none; border-collapse: collapse; border-spacing: 0px; border-width: 0px;">
       	 		<tr>
                    <td style="border-width: 0px; padding: 0px; border-style: none;"><span id="continenteLabel" locked="false"></span></td>
       	 			<td style="border-width: 0px; padding: 0px; border-style: none;"><s:textfield name="continente" cssStyle="width: 65px;" cssClass="text" id="continente" theme="simple"/></td>
       	 			<td style="border-width: 0px; padding: 0px; border-style: none;"><img id="continenteSearch" src="${appCtx}/images/iconos/lupaOn.gif" border="0" title="Buscar Continente" style="cursor:pointer;" onclick="abrirDialogo()"/></td>
       	 		</tr>
       	 	</table>
       	 </td>
     </tr>           	
   </table>
   
   <div id="continenteDiv" title="Busqueda de Continentes" style="display:none">
   </div>
</body>
</html>