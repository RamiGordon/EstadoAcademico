<%@ include file="includes/taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">
<head>
	<meta name="pageCode" content="9"/>
	<title>Tabs</title>
		
<script type="text/javascript">
$(document).ready(function () {

	// Los tabs se mantienen ocultos hasta que termine de cargar la pagina, y en
	// ese momento se visualizan. Esto evita un "parpadeo " en IE cuando 
	// aplica el plugin de tabs
	$('#tabs').show();
		
	// Tabs
	$('#tabs').tabs();
	// SubTabs
	$("#subtabs").tabs();
	//$("#subtabs ul").removeClass();
	//$("#subtabs ul").addClass('ui-subtabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all');
	
	$("#subtab_subtabs").tabs();
	//$("#subtab_subtabs ul").removeClass();
	//$("#subtab_subtabs ul").addClass('ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all');

		
	
	// Al cargar por AJAX contenido en algun tab, llamo a la funcion 
	// changeLinks() para proveer de paginacion ajax a los listados de displayTag
	$('#tabs').bind('tabsload', changeLinks);


	// Submit del form por AJAX -
	formOptions = { 
    	target:        '#tabs-2-1',
    	success:       	function(){ $('#subtabs').tabs('select', 1);
    	} /* activo solapa 2*/
   	}	        
	$('#myForm').ajaxForm(formOptions); // "Ajaxifico" el form



	// Muestra / oculta codigo de ejemplo -----------------------------
	$('#lnkCodigoHtml').click(function( event) {
		if ($("#htmlCode").is(":hidden")) {

			$('#lnkCodigoJS').text('ver código javascript');
			$("#jsCode").hide("fast");
			
			$('#lnkCodigoHtml').text('ocultar código html');
			$("#htmlCode").show("fast");

		}
		else
		{
			$('#lnkCodigoHtml').text('ver código html');
			$("#htmlCode").hide("fast");
		}
		event.preventDefault();
	});

	$('#lnkCodigoJS').click(function( event) {

		if ($("#jsCode").is(":hidden")) {

			$("#htmlCode").hide("fast");
			$('#lnkCodigoHtml').text('ver código html');

			$("#jsCode").show("fast");
			$('#lnkCodigoJS').text('ocultar código javascript');
		}
		else
		{
			$('#lnkCodigoJS').text('ver código javascript');
			$("#jsCode").hide("fast");
		}
		event.preventDefault();
	});


});
</script>
		
</head>
<body>

<div class="bloque">
 	<h3><span>Caracter&iacute;sticas</span></h3>
    <div class="cuerpo">	
    <p>
    Los menúes de solapas ( o Tabs ) están basados en el widget <b>Tab</b> de JQuery.    A continuación se presenta un ejemplo de cómo se implementa:<br/>
	- <a href="#" class="lnk" id="lnkCodigoHtml">Código html</a>
	</p>
	<div class="codeSample" id="htmlCode">
		&lt;div id="<b>tabs</b>" style="<b>display:none</b>"&gt; <br/>
		&nbsp;&nbsp; &lt;ul&gt; <br/>
		&nbsp;&nbsp;&nbsp;&nbsp; &lt;li&gt;&lt;div class="<b>tab</b>"&gt;&lt;a href="#tabs-1">Formulario&lt;/a&gt;&lt;/div&gt;&lt;/li&gt; <br/>
		&nbsp;&nbsp;&nbsp;&nbsp; &lt;li&gt;&lt;div class="<b>tab</b>"&gt;&lt;a href="#tabs-2">Detalle&lt;/a&gt;&lt;/div&gt;&lt;/li&gt; <br/>
		&nbsp;&nbsp;&nbsp;&nbsp; &lt;li&gt;&lt;div class="<b>tab</b>"&gt;&lt;a href="${appCtx}/pages/template/ajax/results.jsp"&gt;Listado&lt;/a&gt;&lt;/div&gt;&lt;/li&gt; <br/>
		&nbsp;&nbsp; &lt;/ul&gt; <br/>
		&lt;/div&gt; <br/>
	 </div>
	 <p>
	 - <a href="#" class="lnk" id="lnkCodigoJS">ver código javascript</a></p>
	 <div class="codeSample"  id="jsCode" style="display:none">
		
		
		&lt;script type="text/javascript"> <br/>
		&nbsp;&nbsp; $(document).ready(function () { <br/>
	
		&nbsp;&nbsp;&nbsp;&nbsp;<span class="codeComment">// Los tabs se mantienen ocultos hasta que termine de cargar la pagina, y en ese momento se visualizan.<br/>
		&nbsp;&nbsp;&nbsp;&nbsp;// Esto evita un "parpadeo" en IE cuando se aplica la funcionalidad de tabs </span><br/>

		&nbsp;&nbsp;&nbsp;&nbsp;$('<b>#tabs</b>').show(); <br/>
			
		&nbsp;&nbsp;&nbsp;&nbsp;$('<b>#tabs</b>').tabs(); <span class="codeComment"> /* arma el menu de tabs */ </span> <br/>
		&nbsp;&nbsp; });<br/>
		&lt;/script> <br/>		

	 </div>
	 <br/>
		<div id="tabs">
			<ul>
				<li><div class="tab"><a href="#tabs-1">Formulario</a></div></li>
				<li><div class="tab"><a href="#tabs-2">Detalle</a></div></li>
				<li><div class="tab"><a href="${appCtx}/pages/template/ajax/results.jsp">Listado</a></div></li>
			</ul>
			<div id="tabs-1">
				<%@ include file="/pages/template/includes/form.jsp" %>
			</div>
			<div id="tabs-2">
             	<div id="subtabs">
					<ul>
						<li><div class="tab"><a href="#tabs-2-1">Datos</a></div></li> 
						<li><div class="tab"><a href="#tabs-2-2">SubSección 2</a></div></li>
						<li><div class="tab"><a href="#tabs-2-3">SubSección 3</a></div></li>
					</ul>
					<div id="tabs-2-1">Para ver los detalles debe aceptar el formulario de la solapa 1...<br/><br/>	</div>
					<div id="tabs-2-2">
						<div id="subtab_subtabs">
							<ul>
								<li><div class="tab"><a href="#tabs-2-2-1">Subseccion 2.1</a></div></li> 
								<li><div class="tab"><a href="#tabs-2-2-2">SubSección 2.2</a></div></li>
								<li><div class="tab"><a href="#tabs-2-2-3">SubSección 2.3</a></div></li>
							</ul>
							<div id="tabs-2-2-1">Datos Subseccion 2.1<br/><br/>	</div>
							<div id="tabs-2-2-2">Datos Subseccion 2.2<br/><br/>	</div>
							<div id="tabs-2-2-3">Datos Subseccion 2.3<br/><br/>	</div>
						</div>
					</div>
					<div id="tabs-2-3">Contenido de la sub-sección 3... Contenido de la sub-sección 3...Contenido de la sub-sección 3...Contenido de la sub-sección 3...Contenido de la sub-sección 3...Contenido de la sub-sección 3...Contenido de la sub-sección 3...Contenido de la sub-sección 3...</div>
				</div>
            </div>

		</div>
		
	</div>
	<div class="pie"><div></div></div>
</div>


</body>
</html>

