<%@ include file="/pages/template/includes/taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">
<head>
	<meta name="pageCode" content="39"/>
	<meta name="menuCode" content="51"/>
	<link type="text/css" href="<s:url value="/lib/styles/global.css" includeParams="none"/>" rel="stylesheet"  />
	<link type="text/css" href="<s:url value="/lib/styles/usabilidad.css" includeParams="none"/>" rel="stylesheet"  />

	<title>Lineamientos Constructivos</title>

</head>
<body>

<div class="bloque">
		<h3><span>Lineamientos Constructivos </span></h3>
	   <div class="cuerpo">
	      <p>Todo &iacute;cono nuevo que sea  necesario dise&ntilde;ar para las aplicaciones web   de OSDE deber&aacute;:</p>
		  <p>- Ser en formato .gif con fondo transparente.</p>
		  <p>- Tener  un alto m&aacute;ximo de 16px, el ancho es variable (depender&aacute;   de la necesidad propia de las proporciones de cada &iacute;cono) pero se recomienda,             de ser posible, no superar los 16px de ancho.</p>
		  <p>- Ante una necesidad puntual de un   &iacute;cono m&aacute;s alto que el recomendado, las medidas sugeridas para estos casos son: 32px x 32px, 64px x 64px, 128px             x128px seg&uacute;n el caso. <strong>Cabe destacar que estas medidas se utilizan s&oacute;lo en casos excepcionales. </strong></p>
		  <p><img src="${appCtx}/images/usabilidad/ejemplos/informes-para-word-iconos copy.jpg" alt="" width="410" height="190"></p>
		  <p>- Siempre respetar la alineaci&oacute;n horizontal con otros &iacute;conos ya   existentes, no hay que olvidar que todo &iacute;cono en un futuro podr&aacute;             convivir con otros &iacute;conos.</p>
	   <div class="contenedor">
		   <div id="ancho238" class="contenido1">
		    <span></span>
			<p>Alineación Correcta<br/> 
		      <img src="${appCtx}/images/usabilidad/ejemplos/alineacion.jpg" alt="alineación Correcta" width="138" height="31"/></p></div>		 
		   <div class="contenido2">
		    <p class="incorrecto">Alineación Incorrecta<br />
		      <img src="${appCtx}/images/usabilidad/ejemplos/alineacionMal.jpg" alt="Alineacion Incorrecta" width="138" height="31" /><br /></p>
           </div>		  
		   <div class="clear">
		   </div>
	   </div>
	   <p>- Evitar la descompesaci&oacute;n visual de las im&aacute;genes y diferencias de jerarqu&iacute;as. Ej: si tengo una botonera con &iacute;conos de 16px x 16px no          mezclarla con &iacute;conos de 32px x 32px.</p>
	   <p>- Tener su correspondiente tooltip. </p>
		<div class="contenedor">
          <div class="contenido1">
            <p>Compensaci&oacute;n Correcta <br/>
               <img src="${appCtx}/images/usabilidad/ejemplos/tamanosOk.jpg" alt="" width="213" height="55"/></p>
          </div>
		  <div class="contenido2">
            <p class="incorrecto">Compensaci&oacute;n Incorrecta <br />
               <img src="${appCtx}/images/usabilidad/ejemplos/tamanosMal.jpg" alt="" width="213" height="55" /><br />
            </p>
	      </div>
		  <div class="clear"> </div>
	    </div>
		<p>- Respetar la est&eacute;tica de los &iacute;conos ya existentes.</p>
		<p>&nbsp;</p>
	   </div>
	   <div class="pie"><div></div></div>
	</div>

</body>
</html>