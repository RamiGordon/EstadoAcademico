<%@ include file="includes/taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">
<head>
	<meta name="pageCode" content="3"/>
	<meta name="helpInfo" content="about:blank"/>
	<title>Bloque</title>
	<script type="text/javascript">
	$(function(){	
		// Toggle
		$("#buttonHide").click(function () {
			if ($("#bloqueOcultable").is(":hidden")) {
	    		$("#bloqueOcultable").slideDown();
	    		$("#buttonHide").attr("src","${staticPath}images/bot_minimizar.gif");	    		
		    } else {
		    	$("#bloqueOcultable").slideUp();
		    	$("#buttonHide").attr("src","${staticPath}images/bot_maximizar.gif");		    	
		    }	      
	    });
	});
	</script>
	
</head>

<body>

	<div class="bloque">
		<h3><span>Caracter&iacute;sticas</span></h3>
		<img src="${staticPath}images/bot_minimizar.gif" title="Minimizar / Restaurar" id="buttonHide" class="iconos"/>
		<div class="cuerpo" id="bloqueOcultable">
			<p>
			Los contenidos de la aplicación se presentan dentro de sectores denominados bloques. 
			Estos bloques pueden presentar un titulo o sin él. Adicionalmente también cuentan con la posibilidad de minimizarse.( como por ejemplo, el presente bloque )<br/>
			A continuación se muestran distintos ejemplos de código de bloques:<br/><br/>
	

			Bloque no minimizable , sin título.<br/> </p>
			<div class="codeSample">
			
				&lt;div class="<b>bloque</b>"&gt; <br/>
				&nbsp;&nbsp; &lt;div class="<b>top</b>"&gt;&lt;div&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt; <br/>
	   			&nbsp;&nbsp; &lt;div class="<b>cuerpo</b>"&gt;<br/>
	   			&nbsp;&nbsp;&nbsp;&nbsp; &lt;p&gt;<br/>
	   			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="codeComment">Contenido del bloque....</span><br/>
	   			&nbsp;&nbsp;&nbsp;&nbsp; &lt;/p&gt;<br/>
	   			&nbsp;&nbsp; &lt;/div&gt; <br/>
				&nbsp;&nbsp; &lt;div class="<b>pie</b>"&gt;&lt;div&gt;&lt;/div&gt;&lt;/div&gt; <br/>
				&lt;/div&gt; <br/>
		
			</div>
			<br/>
			
			<p>Bloque no minimizable , inluyendo título.<br/></p> 
			<div class="codeSample">
			
				&lt;div class="<b>bloque</b>"&gt; <br/>
				&nbsp;&nbsp; <b>&lt;h3&gt;&lt;span&gt;</b>Este es el título del bloque<b>&lt;/span&gt;&lt;/h3&gt;</b><br/>
	   			&nbsp;&nbsp; &lt;div class="<b>cuerpo</b>"&gt;<br/>
	   			&nbsp;&nbsp;&nbsp;&nbsp; &lt;p&gt;<br/>
	   			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="codeComment">Contenido del bloque....</span><br/>
	   			&nbsp;&nbsp;&nbsp;&nbsp; &lt;/p&gt;<br/>
	   			&nbsp;&nbsp; &lt;/div&gt; <br/>
				&nbsp;&nbsp; &lt;div class="<b>pie</b>"&gt;&lt;div&gt;&lt;/div&gt;&lt;/div&gt; <br/>
				&lt;/div&gt; <br/>
	   			
			</div>
			<br/>
			
			<p>Bloque  minimizable , inluyendo título.<br/></p>
			<div class="codeSample">
			
				&lt;div class="<b>bloque</b>"&gt; <br/>
				&nbsp;&nbsp; <b>&lt;h3&gt;&lt;span&gt;</b>Este es el título del bloque<b>&lt;/span&gt;&lt;/h3&gt;</b><br/>
				&nbsp;&nbsp; <b>&lt;img src="${staticPath}images/bot_minimizar.gif" title="Minimizar / Restaurar" id="buttonHide" class="iconos"/&gt;</b> <br/>
	   			&nbsp;&nbsp; &lt;div class="<b>cuerpo</b>" id="<b>bloqueOcultable</b>" &gt;<br/>
	   			&nbsp;&nbsp;&nbsp;&nbsp; &lt;p&gt;<br/>
	   			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="codeComment">Contenido del bloque....</span><br/>
	   			&nbsp;&nbsp;&nbsp;&nbsp; &lt;/p&gt;<br/>
	   			&nbsp;&nbsp; &lt;/div&gt; <br/>
				&nbsp;&nbsp; &lt;div class="<b>pie</b>"&gt;&lt;div&gt;&lt;/div&gt;&lt;/div&gt; <br/>
				&lt;/div&gt; <br/>
	   			
			</div> 
			

			<br/><br/>
		</div>
		<div class="pie"><div></div></div>
	</div>

</body>            
</html>