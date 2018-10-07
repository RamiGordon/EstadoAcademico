<%@ include file="/pages/template/includes/taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">
<head>
	<meta name="pageCode" content="18"/>
	<title>Multiples Sesiones</title>
	<script type="text/javascript">

		$(document).ready(function() {
		
	   		$.ajax({
				url: '<s:url action="randomAction" method="refresh" namespace="/random/ajax"><s:param name="_noAdd_owid" value="true"/></s:url>',
            	success: function(response){
            		$('#formBlock_1').html(response);
            	}
            });
            
            $.ajax({
				url: '<s:url action="randomAction" method="refresh" namespace="/random/ajax"><s:param name="_noAdd_owid" value="true"/></s:url>',
            	success: function(response){
            		$('#formBlock_2').html(response);
            	}
            });
            
		});
		
		function applyAjaxHandler(form){
			// Submit del form por AJAX -
	   		formOptions = { 
	   	    	target:		"#" + form.parent().get(0).id
	   	   	}
	   		form.ajaxForm(formOptions); // "Ajaxifico" el form
		}
	</script>
</head>

<body>
	<table>
		<tr valign="top">
			<td colspan="2">
				<div class="bloque">
					<h3><span>Propósito</span></h3>
					<div class="cuerpo">
						<p>
						El propósito de este componente es proveer un contexto extra para los widgets (componentes).<br/>
						De esta manera podemos poseer varias instancias de widgets y que cada uno mantenga un estado diferente, dando la apariencia de tener una sesión de HTTP diferente para cada widget.
						</p>
						<p>
						 Su implementación es a través de URL rewriting, en el cual pasando un token en cada request, el servidor es capaz de asociar este contexto al widget correspondiente.
						</p>
					</div>
					<div class="pie"><div></div></div>
				</div>
			</td>
		</tr>
		<tr valign="top">
			<td>
				<div class="bloque">
					<h3><span>Widget 1</span></h3>
					<div class="cuerpo">
						<div id="formBlock_1"></div>
					</div>
					<div class="pie"><div></div></div>
				</div>
			</td>
			<td>
				<div class="bloque">
					<h3><span>Widget 2</span></h3>
					<div class="cuerpo">
						<div id="formBlock_2"></div>
					</div>
					<div class="pie"><div></div></div>
				</div>
			</td>
		</tr>
		<tr valign="top">
			<td colspan="2">
				<div class="bloque">
					<h3><span>Uso</span></h3>
					<div class="cuerpo">
						<p>
						Para comenzar a utilizar este componente primero debemos configurar un filtro que nos brinda la funcionalidad core en el web.xml.
						Se puede configurar un interceptor para agregar en el valueStack el id de contexto.
						<br/>
					</div>
					<div class="pie"><div></div></div>
				</div>
			</td>
		</tr>
	</table>
</body>            
</html>