<%@ include file="includes/taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">
<head>
	<meta name="pageCode" content="20"/>
	<title>Select Two Sides</title>
	<script type="text/javascript">
	$(document).ready(function () {
		$().ready(function() {
			//createDualSelect('add','addAll','remove','removeAll','excluidas','incluidas');
			$("#excluidas").twosidedmultiselect();
			   
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
						Este componente permite que se elijan elementos del primer select múltiple y pasarlos al segundo. Los mismos son declarados en el código mediante tags de Struts, por ejemplo:<br/>
						</p>
						
						<div class="codeSample">
						&lt;tr&gt; <br/>
						&nbsp;&nbsp; &lt;td &gt; <br/>
						<b>
						&nbsp;&nbsp; &nbsp;&nbsp; &lt;s:select id="excluidas" name="select1" multiple="true" list="{'Elemento 1','Elemento 2','Elemento 3','Elemento 4,'Elemento 5,'Elemento 6'}" label="Opciones Seleccionables"  /&gt;<br/>
						
						</b>
						<p>
						Javascript: 
						</p><br/>
			
							&lt;script type="text/javascript">	<br/>
							
							&nbsp;&nbsp; $(document).ready(function() {	<br/>
							&nbsp;&nbsp;&nbsp;&nbsp; opciones = {matchContains:true};	<br/>
							&nbsp;&nbsp;&nbsp;&nbsp; $("#excluidas").<b>twosidedmultiselect</b>(); <span class="codeComment"> // ID del componente Select</span> <br/> 
							&nbsp;&nbsp; });<br/>
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
								<s:select style="width: 200px;" id="excluidas" cssClass="ancho200" list="{'AA-23-00 7394 / Lugones 485','CR-24-01 2599 / Araoz 386','TR-23-00 465 / Olleros 1324','AF-24-02 4659 / Av. Santa Fe 3685'}" multiple="true" size="10" name="planes[]" class="multiselect"/> 
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
	</div>

</body>            
</html>