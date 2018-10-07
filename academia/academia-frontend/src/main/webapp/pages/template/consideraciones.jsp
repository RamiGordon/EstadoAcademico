<%@ include file="/pages/template/includes/taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">
<head>
	<meta name="pageCode" content="38"/>
	<meta name="menuCode" content="51"/>
	<link type="text/css" href="<s:url value="/lib/styles/global.css" includeParams="none"/>" rel="stylesheet"  />
	<link type="text/css" href="<s:url value="/lib/styles/usabilidad.css" includeParams="none"/>" rel="stylesheet"  />


<script>
  onload=function(){
	var c1='izquierda';
	var c2='derecha';
	var c3='centro';
	var mayor=Math.max(document.getElementById(c1).offsetHeight,document.getElementById(c2).offsetHeight,document.getElementById(c3).offsetHeight);
	document.getElementById(c3).style.height=document.getElementById(c1).style.height=document.getElementById(c2).style.height=mayor+'px';
}
</script>


	<title>Consideraciones Generales </title>

</head>
<body>
<div class="bloque">
		<h3><span>Consideraciones generales</span></h3>
	  <div class="cuerpo">
		<p></p>
		<p>Un &iacute;cono es una peque&ntilde;a  imagen gr&aacute;fica cuyo objetivo es asociar  un comportamiento del sistema de un modo intuitivo y r&aacute;pido, por lo tanto           debe ser  muy representativa de la situaci&oacute;n a la que se hace referencia.
		   <br />
	       Son un elemento importante  de las interfaces gr&aacute;ficas de usuario, ya que facilitan el manejo de las  distintas acciones.
		   <br />
	       Su eficacia  consiste en encontrar el correcto referente para representar. 
		   <br />
	       La s&iacute;ntesis gr&aacute;fica es otro factor importante, los &iacute;conos deben ser interpretados  por el usuario en un golpe de vista.
		   <br />
	       El &iacute;cono es muy &uacute;til a la  hora de aprovechar el espacio en pantalla de una aplicaci&oacute;n ya que con una  peque&ntilde;a imagen se dicen muchas           palabras.        
		   <br />
	       La iconograf&iacute;a debe ser  usada s&oacute;lo para situaciones que el usuario pueda interpretar r&aacute;pida y  f&aacute;cilmente, hay necesidades demasiado 					           abstractas que son muy dif&iacute;ciles de  iconografiar, en estos casos se recomienda usar botones con texto. 
		</p>
		<p class="subtitulo">
		   <br />
	       <a name="iconoDeshabilitado" id="iconoDeshabilitado"></a>Funcionalidad
		</p>
        <p>Los &iacute;conos en base a la funci&oacute;n que cumplen pueden agruparse en dos categor&iacute;as:</p>
		<p>- <strong>Iconos de acci&oacute;n
		      <br /></strong>
		      Son &Iacute;conos que act&uacute;an como  botones (al accionarlo se ejecuta una acci&oacute;n Ej: &iacute;cono de copiar.). Se  recomienda que todo &iacute;cono que              act&uacute;e como bot&oacute;n tenga m&iacute;nimo 2 estados: un  estado activo (Mouse Out) y un estado para cuando el mouse se posiciona sobre  &eacute;l (Mouse              Over). La diferenciacia de estado permite resaltar el bot&oacute;n antes de accionarlo. Cabe destacar que el &iacute;cono es siempre el mismo, lo que cambia  es el              contraste entre los colores. El estado Mouse Out es un poco m&aacute;s apagado  que el estado Mouse Over. 
	    </p>
		<div class="contenedor">
            <div class="contenido1">
		      <img src="${appCtx}/images/usabilidad/iconos_on/copiar-on.gif"  title="Copiar" alt="Copiar" width="16" height="16"/>Icono copiar Estado Normal
            </div>
            <div class="contenido2">
		     <img src="${appCtx}/images/usabilidad/iconos_over/copiar-over.gif"  title="Copiar" alt="Copiar" width="16" height="16"/>Icono Copiar en Estado Over
		    </div>
		    <div class="clear"></div>
		</div>
		<p>Existe un tercer estado de iconograf&iacute;a que representa que una funcionalidad est&aacute; deshabilitada. La diferencia visual entre este estado y los mencionados           anteriormente es que este &iacute;cono es siempre de color gris.</p>
		<div class="contenedor">
		  <div class="contenido1">
		    <img src="${appCtx}/images/usabilidad/iconos_off/copiar-off.gif"  title="Copiar deshabilitado" alt="Copiar deshabilitado" width="16" height="16"/>Icono Copiar  Deshabilitado
		  </div>
		  <div class="clear"></div>
	    </div>
		<p>El estado deshabilitado no es de uso frecuente. S&oacute;lo debe ser utilizado cuando por alguna raz&oacute;n  referida a la validaci&oacute;n de  la aplicaci&oacute;n           no debe estar activo (en  ese momento) para ser accionado por el usuario.
		   <br />
           Si el usuario no tiene permiso para ajecutar alguna acci&oacute;n espec&iacute;fica, el &iacute;cono de esa ccci&oacute;n no debe aparecer visble. 
		   <strong>No se debe utilizar el estado grisado para mostrar la falta de permisos.</strong>
		</p>
		<div class="contenedor">
		   <div id="izquierda">
		    <p>Ejemplo de iconograf&iacute;a activa
	        <img src="${appCtx}/images/usabilidad/ejemplos/todos-activos.jpg" alt="Iconografia activa" width="213" height="149" />
			</p>
		    <p>En este caso el usuario puede realizar todas las acciones, todos los &iacute;conos est&aacute;n activos (Nuevo. Eliminar, Derivar y Agregar desde copia)</p>
		   </div>
		   <div id="centro">
		    <p>Ejemplo de iconograf&iacute;a deshabilittada
		       <img src="${appCtx}/images/usabilidad/ejemplos/uno-desactivo.jpg" alt="Iconografia deshabilitad" width="213" height="149" />
			</p>
		    <p>En este caso el usuario esta deshabilitado para derivar los registros, debido a que la validaci&oacute;n de la aplicaci&oacute;n s&oacute;lo permite derivar de un s               &oacute;lo registro por vez y como el usuario seleccion&oacute; dos, no se activa la funcionalidad de derivar. Seleccionando un s&oacute;lo regitro se habilitar               &aacute; esa funcionalidad.
			</p>
		  </div>
		  <div id="derecha">
		  <p>Ejemplo de falta de permiso
		     <img src="${appCtx}/images/usabilidad/ejemplos/sin-pernmisos.jpg" alt="Falta de servicios" width="213" height="149"/>
		  </p>
		  <p>El usuario por definici&oacute;n de roles no tiene permiso para derivar por eso no aparece la iconograf&iacute;a de derivaci&oacute;n. S&oacute;lo se encuentran visibles aquellos &iacute;conos para los que s&iacute; tiene permiso (Nuevo, Eliminar, Agregar desde Copia)</p>
		  </div>
		  <div class="clear"></div>
	   </div>
		<p><strong> - Indicador<br /></strong>
	        Son &Iacute;conos que act&uacute;an como  indicadores de alguna situaci&oacute;n. Por ejemplo: un &iacute;cono que cambia de color  seg&uacute;n la prioridad de un            registro(Prioridad alta: &iacute;cono rojo, Prioridad Media:  &iacute;cono amarillo; Prioridad baja: &iacute;cono verde). Este tipo de &iacute;conos no es  accionable,            s&oacute;lo le permite saber al usuario un estado de situaci&oacute;n. Por esta raz&oacute;n &nbsp;no requieren tener distintos estados.</p>
		<p class="subtitulo">
		    <br />
	        El Tooltip
		</p>
		<p>El tooltip es una breve  descripci&oacute;n que aparece al posicionar el mouse sobre el &iacute;cono. El objetivo del  tooltip es explicar el significado del &iacute;           cono. Todo &iacute;cono debe ir asociado con  su correspondienteTooltip<br />
           <br />
	       A pesar de que  para la realizaci&oacute;n de cada &iacute;cono se busca la elecci&oacute;n de un correcto referente,  su interpretaci&oacute;n queda sujeta a la           subjetividad del usuario. Es por ello que  siempre ser&aacute;n acompa&ntilde;ados de su correspondiente etiqueta o tooltip.<br />
	       El mismo se visualiza de la  siguiente forma.<br />
           <br />
	       <img src="${appCtx}/images/usabilidad/ejemplos/tooltip.gif" alt="Tolltip" width="256" height="36" />        
		</p>
		<br />
      </div>
		<div class="pie"><div></div></div>
	</div>
</body>
</html>