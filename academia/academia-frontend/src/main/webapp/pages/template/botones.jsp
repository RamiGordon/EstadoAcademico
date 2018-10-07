<%@ include file="includes/taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">
<head>
	<meta name="pageCode" content="2"/>
	<title>Botones</title>
	<script type="text/javascript">
	$(document).ready(function () {

		$('#btnAceptar').click(function() {
			
			showInfoMsg('Se cliqueó "Aceptar".<br>');
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
						<p>
						Los botones se visualizan en el sector inferior derecho de un bloque. Los mismos son declarados en el código mediante tags de Struts, por ejemplo:<br/>
						</p>
						
						<div class="codeSample">
						&lt;tr&gt; <br/>
						&nbsp;&nbsp; &lt;td class="botones"&gt; <br/>
						<b>
						&nbsp;&nbsp; &nbsp;&nbsp; &lt;s:submit type="submit" id="btnModificar"  value="Modificar" disabled="true" /&gt;<br/>
						&nbsp;&nbsp; &nbsp;&nbsp; &lt;s:submit type="button" id="btnAceptar"  value="btnAceptar" /&gt;<br/>
						</b>
						</div>
						<br></br>
					</td>
				</tr>
				<tr>
					<td colspan="6" width="100%" align="right">
						<br/>
							<table>
								<tr>
								<td>
									<s:submit type="submit" id="btnModificar"  value="Modificar" disabled="true"/>
									
								</td>
								<td>
								<s:submit type="button" id="btnAceptar"  value="Aceptar"/>    
								</td>
								</tr>				   			   
							</table>
					</td>
				</tr>
			</table>
		</div>
		<div class="pie"><div></div></div>
	</div>

</body>            
</html>