<%@ include file="includes/taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">
<head>
	<meta name="pageCode" content="4"/>
	<title>Calendario</title>

	<script type="text/javascript">
		$(document).ready(function(){
			$("#fechaDesde").datepicker(datepickerDefaults);
			$("#fechaHasta").datepicker(datepickerDefaults);


			 $("#fechaDesde").mask("99/99/9999",{placeholder:" "});
			 $("#fechaHasta").mask("99/99/9999",{placeholder:" "});

			 
			// anula el submit..
			 $("button[type='submit']").click(function(event) {
					void(0);
					event.preventDefault();
			});
			
		});
	</script>
</head>

<body>
	<div class="bloque">
		<h3><span>Datepicker</span></h3>
		<div class="cuerpo">
		<p>Los calendarios están basados en el widget <b>Datepicker</b> de JQuery y el plugin <b>Masked Input</b> para validacion del formato de fecha en caso de ingreso manual.</p><br/>
		
		
		<form action="#" method="get">
			<table>
				<tr>
					<td>&nbsp;</td>
					<s:textfield name="fechaNacimiento" label="Fecha desde" cssClass="text fecha" readonly="#parameters['readonly']" value="20/06/1980" id="fechaDesde"/>
					<s:textfield name="fechaNacimiento" label="Fecha hasta" cssClass="text fecha" readonly="#parameters['readonly']" value="20/06/1980" id="fechaHasta"/>
					<td>
						 <s:submit type="button" value="Aceptar"/>
					</td>
				</tr>
			</table>
		</form>
		<br/>
		<p>
		A continuación se muestra un ejemplo de cómo incorporar un calendario a un campo de un formulario.:<br/><br/>
		Definicion del HTML del form. ( el campo se define con tag de struts )<br/>
		</p>
		<div class="codeSample">
			&lt;form action="#" method="get"&gt; <br/>
			&lt;table&gt; <br/>
			&nbsp;&nbsp;	&lt;tr&gt; <br/>
			&nbsp;&nbsp;&nbsp;&nbsp;	&lt;s:textfield name="fechaNac" label="Fecha desde" cssClass="text fecha" readonly="#parameters['readonly']" id="<b>fechaDesde</b>"/&gt; <br/> <br/>
		</div>
		<br>
		<p>Javascript</p>
		<div class="codeSample">
			&lt;script type="text/javascript"&gt; <br/>
			&nbsp;&nbsp;	$(document).ready(function(){ <br/>
			&nbsp;&nbsp;&nbsp;&nbsp;		<b>$("#fechaDesde").datepicker(datepickerDefaults); </b><br/>
			&nbsp;&nbsp;&nbsp;&nbsp;		<b>$("#fechaDesde").mask("99/99/9999",{placeholder:" "});</b><br/>
			&nbsp;&nbsp;	});<br/>
			&lt;/script&gt;<br/>
					
		</div>
		<br>
		
		<br/><br/><br/>
		</div>         
     	<div class="pie"><div></div></div>
     </div>
     <br><br>     
</body>
</html>
