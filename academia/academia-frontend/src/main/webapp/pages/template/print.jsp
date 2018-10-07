<%@ include file="includes/taglibs.jsp" %>

<html>
<head>
	<meta name="pageCode" content="15"/>
	<title>Print</title>
 	
 	<script type="text/javascript">
 	$(document).ready(function () {

 	
		$('#btnPrint').click(function() { 
	
			
			$('#prinIfr').attr('src', '${staticPath}reportes/reporte.pdf');
			
	 		$("#dialog").show();
			$("#dialog").dialog({
				bgiframe: true,
				height: 500,
				width: 780,
				modal: true,
				draggable: true,
				resizable: false,
				stack: true,
				position: 'center',
				close: function(event, ui) {$(this).dialog('destroy'); },
				buttons: {
					CERRAR: function() {
						$(this).dialog('destroy');
					}
				}
				
			});
	
	
		});
	
	});
	</script>
</head>

<body>


<div class="bloque">
	<div class="top"><div>&nbsp;</div></div>
    	<div class="cuerpo">	
		<table width="100%">
			<tr>
				<td>
					<p>
					A continuación se muestra un ejemplo de impresión.<br/> El reporte es un PDF que se carga en un iframe y luego se presenta en un popup.
					
					</p>
										
				</td>
			</tr>
			<tr>
			<td colspan="6" width="100%" align="right"><br/>
				<table>
					<tr>
					<td></td>
					<td><s:submit id="btnPrint"  value="Imprimir Reporte"/></td>
					</tr>				   			   
				</table>
			</td>
			</tr>
		</table>
	</div>
	<div class="pie"><div></div></div>
</div>


<div id="dialog" title="Reporte" style="display:none" >
	<iframe id="prinIfr" width="100%" height="98%" style="border:1px solid;border-top:0" src="about:blank"></iframe>			
</div>

	
</body>            
</html>