	<table id="estructura">   	
	   	<tr>
	       	<td id="tituloSistema" rowspan="2">
	       		 <div id="tituloAplicacion">Título del Sistema</div>
	       	</td>
	       	<td id="tituloPosicion" rowspan="2">
	   			<table>
	  					<tr>
	 						<td>
	 							<div id="ruta"><a 
	 							href="${appCtx}">Titulo del sistema</a> &raquo;
	 							<a href="#">Registro</a> &raquo;
	 							<a href="#">Nuevos usuarios</a> &raquo;
	 							<span><decorator:title default="Template ASIS - Framework 2.0" /></span>
							</div>
						</td>
	  					</tr>						
					<tr>
						<td>
							<h2><decorator:title default="Template ASIS - Framework 2.0" /></h2>
						</td>
					</tr>
				</table>
	    	</td>
	       	<td class="appVersion">v. ${appVersion }</td>
	       </tr>
		<tr>
			<td class="ayudaHeader">
	       	<s:if test="%{ null != #session.helpInfo}">
	       		<s:submit type="button" id="btnAyuda" value="ayuda" />
			</s:if>
	       	</td>
	       </tr>
	</table>
	