<%@ include file="/pages/template/includes/taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">
<head>
	<meta name="pageCode" content="40"/>
	<meta name="menuCode" content="51"/>
	<link type="text/css" href="<s:url value="/lib/styles/global.css" includeParams="none"/>" rel="stylesheet"  />
	<link type="text/css" href="<s:url value="/lib/styles/usabilidad.css" includeParams="none"/>" rel="stylesheet"  />

	<title>Ubicación</title>

</head>
<body>

<div class="bloque">
		<h3><span>Ubicaci&oacute;n</span></h3>
      <div class="cuerpo">
	      <p>Es importante ser constantes con la ubicaci&oacute;n de los &iacute;conos dentro de las aplicaciones. Colocar la iconograf&iacute;a siempre en un mismo lugar respetando un orden establecido simplifica el uso de la aplicaci&oacute;n, esto permite al usuario saber de ante mano d&oacute;nde deber&iacute;a encontrar cualquier acci&oacute;n. Estas constantes reducen el tiempo de aprendizaje de un sistema, facilitan la memorizaci&oacute;n de los elementos en pantalla. </p>
	      <p class="subtitulo">En grillas:</p>
	      <p>Las grillas habitualmente ofrecen distintas funcionalidades. Dichas acciones se acceden por medio de la iconograf&iacute;a.
          <p>Los &iacute;conos deben ubicarse en la parte superior de la grilla, y aplican su funcionalidad sobre una o m&uacute;ltiples filas seleccionadas. La &uacute;nica excepci&oacute;n es el &iacute;cono &ldquo;Nuevo&rdquo;(crear nuevo), para utilizar la funcionalidad de este bot&oacute;n no se debe seleccionar ninguna fila en la grilla y su estado es siempre activo.
	         Por este motivo,  el &iacute;cono &ldquo;Nuevo&rdquo; (crear nuevo) aparecer&aacute;&nbsp;  primero y s&oacute;lo (separado del resto por una barra gris).
	         <br />
	         Se  genera una confusi&oacute;n frecuente entre las funciones de &ldquo;Nuevo&rdquo; <img src="${appCtx}/images/usabilidad/iconos_on/nuevo-on.gif" alt="Nuevo" width="16" height="16" />   y  &quot;Agregar&quot; <img src="${appCtx}/images/usabilidad/iconos_on/agregar-on.gif" alt="Agregar" width="16" height="16" />. La acci&oacute;n &quot;Agregar&quot; a diferencia del &quot;Nuevo&quot; siempre estar&aacute; supeditada a la selecci&oacute;n   previa de un &iacute;tem de la grilla, e incorporar&aacute; elementos dentro de la misma (no   sirve para generar una nueva fila, para esto se debe utilizar la funcionalidad de &quot;Nuevo&quot;).<br />
	        <br />
	        Seguido al Icono Nuevo, se agrupan los &iacute;conos de funcionalidad de uso habitual, nos referimos a tres acciones que est&aacute;n presentes en la mayor&iacute;a de las aplicaciones de Osde: &ldquo;Editar&rdquo;, &ldquo;Ver detalle&rdquo; y &ldquo;Eliminar&rdquo; (siempre que existan).  Detr&aacute;s de &eacute;stos &iacute;conos se deben colocar el resto de los &iacute;conos (&iacute;conos propios de cada aplicaci&oacute;n). A su vez este &uacute;ltimo grupo de &iacute;conos deber&iacute;a ordenarse de izquierda a derecha priorizando la frecuencia de uso de los mismos (cuanto m&aacute;s se usa un &iacute;cono m&aacute;s a la izquierda deber&iacute;a estar ubicado) <br />
		    <br />
            La ubicaci&oacute;n de los &iacute;conos se podr&iacute;a sintetizar en el siguiente orden:<strong> Icono Nuevo - Iconos habituales (Editar, Ver Detalle, Eliminar) - Otros &iacute;conos (propios de la aplicaci&oacute;n)</strong>
	<div class="contenedor">        
        <div class="contenido1">
		    <p class="incorrecto">Ejemplo de ubicaci&oacute;n incorrecta de &iacute;conos en grillas<br />
		       <img src="${appCtx}/images/usabilidad/ejemplos/orden-iconos1.jpg" alt="" width="768" height="216" /></p>
		</div>
        <div class="contenido1">
		  <p>
		     <br />
		     Ejemplo de ubicaci&oacute;n correcta de &iacute;conos en grillas
			 <br /> 
		     <img src="${appCtx}/images/usabilidad/ejemplos/orden-iconos2.jpg" alt="" width="793" height="223"/></p>
		</div>
		<div class="clear"></div>
	</div> 
        <p>Si un usuario no tiene permiso para realizar una acci&oacute;n el &iacute;cono no deber&iacute;a aparecer dentro de la grilla. Para m&aacute;s detalle <a href=" ConsideracionesGenerales.html#iconoDeshabilitado">ver consideraciones generales </a>
		   <br />
		   <br />
	    </p>
	  </div>
	    <div class="pie"><div></div></div>
  </div>

</body>
</html>