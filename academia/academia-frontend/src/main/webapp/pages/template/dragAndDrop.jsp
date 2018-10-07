<%@ include file="/pages/template/includes/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">
<head>
<meta name="pageCode" content="41" />
<link type="text/css" 	href="<s:url value="/lib/styles/global.css" includeParams="none"/>" rel="stylesheet" />





<title>Drag & Drop</title>

<script>
	$(function() {
		$( "#it1, #it2, #it3" ).draggable({ }); //evito que se puedan volver a sacar del droppable
		$( "#droppable" ).droppable({
			drop: function( event, ui ) {
					//$("#content").append("&nbsp;" + ui.draggable.text()); //obtengo el texto del elemento draggable y se lo agrego a un div content
					$( this )
					.addClass( "ui-state-highlight" )  //agrego una clase para resaltarlo
					.find( "p" ).html("Se agregaron los siguientes items: ");
			}
		});
	});
	</script>
</head>
<body>

 

 
 
 	<div class="bloque">
		<h3><span>Caracter&iacute;sticas</span></h3>
		<div class="cuerpo">
			<table width="100%" cellpadding="0" cellspacing="0" border="0">
				<tr>
					<td>
						<p>Este es un componente gen&eacute;rico que tiene la funcionalidad de drag & drop de ciertos elementos <br> </p>

						<p>El comportamiento que se muestra a continuaci&oacute;n es el	que viene por default.<br />
						<p>En el ejemplo se muestan una lista de Items que pueden ser arrastrados y soltados dentro de la Orden de Compra que se comporta como el contenedor de los elementos.<br></br>
						</p></p>
						
						<div class="codeSample">
						
						<p>
						Javascript: 
						</p><br/>
					
						&lt;script type="text/javascript">	<br/>
						
						$(function() { <br/> 
							&nbsp;&nbsp;$( "#it1, #it2, #it3" ).draggable({ <span style="color:red;font-weight: bold"> revert: "invalid" </span>  }); <span class="codeComment"> //evito que se puedan volver a sacar del droppable</span> <br/> 
							&nbsp;&nbsp;$( "#droppable" ).droppable({  <br/> 
							&nbsp;&nbsp;&nbsp;&nbsp;		drop: function( event, ui ) { <br/> 
							&nbsp;&nbsp;&nbsp;&nbsp;				$( this ) <br/> 
							&nbsp;&nbsp;&nbsp;&nbsp;				.addClass( "ui-state-highlight" )  <span class="codeComment">  //agrego una clase para resaltarlo</span> <br/> 
							&nbsp;&nbsp;&nbsp;&nbsp;				.find( "p" ).html("Se agregaron los siguientes items: ");<br/> 
							&nbsp;&nbsp;&nbsp;&nbsp;		}<br/> 
							&nbsp;&nbsp;	});<br/> 
						});<br/> 
					&lt;/script>

						</div>
						
						<br></br>
					</td>
				</tr>
				<tr>
					<td colspan="6" width="100%" align="center">
						<br/>
							<table ><form>
								<tr><td align="center" >
								<div style="width: 100%;">
								
								
<table>								
<div class="demo">

<tr>
<td style="align:left">
<div id="it1" class="ui-widget-content">
	<p>Item 1</p>
</div>
<div id="it2" class="ui-widget-content">
	<p>Item 2</p>
</div>
<div id="it3" class="ui-widget-content">
	<p>Item 3</p>
</div>
</td>
<td>

<div id="droppable" class="droppable">
<h1>&nbsp;&nbsp;Orden de Compra</h1>
	<p>Arrastre los Items hasta aqu&iacute;</p>
	<div id="content"></div>
</div>

</td>
</tr>
</div><!-- End demo -->
</table>	
								</div>
								</td>
							</tr>
							<tr>
							</tr>			   			   
								</form>
							</table>
					</td>
				</tr>
			</table>
		</div>
		<div class="pie"><div></div></div>
	</div> <!-- fin select2 -->
 
</body>
</html>