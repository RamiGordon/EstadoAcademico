<%--
Fragmento <head> comun a todos los JSPs
 --%>
<%@ page 	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ include file="taglibs.jsp" %>
<%@ page	import="ar.com.osde.framework.context.Context" %>
<%@ page	import="ar.com.osde.framework.context.ContextHolder"%>
<decorator:usePage id="thePage" />

<cw:set var="help" />
<fmt:setBundle basename="osde-framework"/>
<fmt:message var="applicationVersion" key="application.version"/>
<fmt:message var="resourcesPath" key="resources.path"/>
<%
String helpInfo 		= thePage.getProperty("meta.helpInfo");
String pageCodeString	= thePage.getProperty("meta.pageCode");
String exp 				= thePage.getProperty("meta.explain");
int pageCode 			= pageCodeString == null ? 0 : Integer.parseInt(pageCodeString);
String menuCodeString        = (thePage.getProperty("meta.menuCode") != null) ? thePage.getProperty("meta.menuCode") : (request.getParameter("menuCode") != null) ? request.getParameter("menuCode") : null;
int menuCode                         = menuCodeString == null ? 1 : Integer.parseInt(menuCodeString);
%>
<cw:set var="appCtx"		value="${pageContext.request.contextPath}" scope="application" /><%-- Application Context --%>
<cw:set var="staticPath"	value="${resourcesPath}" scope="application" /><%-- Static resources Path --%>
<cw:set var="appVersion"	value="${applicationVersion}" scope="application" /><%-- POM Version --%>
<cw:set var="pageCode"		value='<%="" + pageCode%>' scope="session" /><%-- Pagina selecciconada --%>
<cw:set var="menuCode"      value="<%=menuCode%>" scope="session" /><%-- Menu selecciconado --%>
<cw:set var="helpInfo"		value="<%=helpInfo%>" scope="session" /><%-- ayuda contextual --%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">
<head>	
	<title><decorator:title default="Template ASIS - Framework 2.0" /></title>
	<meta http-equiv="Pragma" content="no-cache"/>
	<!-- JQuery Core -->
	<script type="text/javascript" src="${staticPath}lib/js/jquery-1.3.2.js"></script>
	<!-- UI -->
	<script type="text/javascript" src="${staticPath}lib/js/ui/jquery-ui-1.7.2.custom.min.js"></script>
	<script type="text/javascript" src="${staticPath}lib/js/ui/jquery.blockUI.js" ></script>			
	<script type="text/javascript" src="${staticPath}lib/js/ui/ui.draggable.js"></script>
	<script type="text/javascript" src="${staticPath}lib/js/ui/ui.droppable.js"></script>
	<script type="text/javascript" src="${staticPath}lib/js/jquery.bgiframe.min.js"></script>
	
	<!-- Arbol -->	
	<link rel="stylesheet" type="text/css" href="${staticPath}lib/js/ui/jstree098/tree_component.css" />
	<script type="text/javascript" src="${staticPath}lib/js/ui/jstree098/_lib/css.js"></script>
	<script type="text/javascript" src="${staticPath}lib/js/ui/jstree098/tree_component.js"></script>
	
	<!-- autocomplete -->
	<script type="text/javascript" src="${staticPath}lib/js/jquery.autocomplete.js"></script>
 	<!-- displayTag  -->
	<script type="text/javascript" src="${staticPath}lib/js/displayTagAjax.js"></script>
	<!-- forms  -->
	<script type="text/javascript" src="${staticPath}lib/js/jquery.form.js"></script>
	<!-- input masks  -->
	<script type="text/javascript" src="${staticPath}lib/js/jquery.maskedinput-1.2.2.js"></script>
	
	<script type="text/javascript" src="${staticPath}lib/js/global.js"></script>
	<script type="text/javascript" src="${staticPath}lib/js/jquery.twosidedmultiselect.js"></script>
	<script type="text/javascript" src="${staticPath}lib/js/toolbar.dropdown.js"></script>
	
    <link type="text/css" href="${staticPath}lib/styles/jquery/ui.core.css" rel="Stylesheet" />    
    <link type="text/css" href="${staticPath}lib/styles/jquery/ui.tabs.css" rel="Stylesheet" />
    <link type="text/css" href="${staticPath}lib/styles/jquery/ui.dialog.css" rel="Stylesheet" />
    <link type="text/css" href="${staticPath}lib/styles/jquery/ui.theme.css" rel="Stylesheet" />
    <link type="text/css" href="${staticPath}lib/styles/jquery/ui.datepicker.css" rel="Stylesheet" />
    <link type="text/css" href="${staticPath}lib/styles/toolbar.dropDown.css" rel="Stylesheet" />
	<!-- autocomplete -->
	<link type="text/css" href="${staticPath}lib/styles/jquery/jquery.autocomplete.css" rel="Stylesheet" />
	
	<link type="text/css" href="${staticPath}lib/styles/global.css" rel="stylesheet"  />
	
	<script type="text/javascript">
	var datepickerDefaults ;
	var dialogDefaults ;
	var blockDefaultsl

	var menuActivo = ${menuCode} ? ${menuCode}:1;

	$(document).ready(function () {

		// Activa la opcion actual en el menu
		subMenu(menuActivo);
		
		// Configuracion de Datepicker
		datepickerDefaults = {
				showOn: 'button', 
				buttonImage: '${staticPath}lib/styles/img/calendario/calendario.gif', 
				buttonImageOnly: true,
				changeMonth: true,
				changeYear: true,
				dateFormat: 'dd/mm/yy',
				buttonText: 'Seleccione una fecha',
				dayNamesMin: ['Do', 'Lu', 'Ma', 'Mi', 'Ju', 'Vi', 'Sa'],
				dayNames: ['Domingo', 'Lunes', 'Martes', 'Miercoles', 'Jueves', 'Viernes', 'Sabado'],
				duration: 0,
				monthNames: ['Enero','Febrero','Marzo','Abril','Mayo','Junio','Julio','Agosto','Septiembre','Octubre','Noviembre','Diciembre'],
				monthNamesShort: ['Ene','Feb','Mar','Abr','May','Jun','Jul','Ago','Sep','Oct','Nov','Dic'],
				nextText: 'Siguiente',
				prevText: 'Anterior'
		};

		// Configuracion default de Dialogs
		dialogDefaults = {
			bgiframe: true,
			autoOpen: true,
			height: 150,
			width: 300,
			modal: true,
			draggable: true,
			resizable: false,
			stack: true,
			close: function(event, ui) {$(this).dialog('destroy'); }, 
			buttons: {
				CERRAR: function() {
					$(this).dialog('close');
				}
			}
		}

		
		// Configuracion  del comportamiento de bloqueo
		blockDefaults = { 
			message: $('#spinner'),      		 
	        css: { 
				border: '1px solid #aaaaaa',
			    padding: '15px', 
			    backgroundColor: '#fafafa', 
			    '-webkit-border-radius': '10px', 
			    '-moz-border-radius': '10px', 
			    top:  ($(window).height() - 30) /2 + 'px', 
	            left: ($(window).width() - 150) /2 + 'px', 
			    opacity: 1, 
			    color: '#fff',
			    height: '30px',
			    width: '150px',
			    zIndex: '5000'
			   },
			overlayCSS: {
				backgroundColor: '#AAAAAA',
				opacity: 0.3
			}
		}

		
		// Caching de imagenes ---
		$.preloadImages("${staticPath}images/menu/abrirOver.gif", 
						"${staticPath}images/menu/abrirOut.gif",
						"${staticPath}images/menu/cerrarOver.gif",
						"${staticPath}lib/styles/img/menu/menu_fondo.png",
						"${staticPath}lib/styles/img/menu/menu_primero.png",
						"${staticPath}lib/styles/img/menu/menu_top.png",
						"${staticPath}lib/styles/img/menu/menu_ultimo.png",
						"${staticPath}images/paginador/pag_anterior_over.gif",
						"${staticPath}images/paginador/pag_primero_over.gif",
						"${staticPath}images/paginador/pag_proximo_over.gif",
						"${staticPath}images/paginador/pag_ultimo_over.gif"
						);

		
		// Asignación de funcionalidad al botón de ayuda
		$("#btnAyuda").click(function(event) {
			showAyudaMsg( 'La url de ayuda es "<b><%=helpInfo%></b>"<br/>')
			event.preventDefault();
			
		});

		
	});
	// EFECTO ROLL-OVER SOBRE BOTONES -
		$(".btn_out").live("mouseover", function(evnt) {
		    $(this).removeClass("btn_out");
		    $(this).addClass("btn_over"); 
		    evnt.stopPropagation();
		});
		$(".btn_over").live("mouseout", function(evnt) {
		    $(this).removeClass("btn_over");
		    $(this).addClass("btn_out"); 
		    evnt.stopPropagation();
		});
	</script>