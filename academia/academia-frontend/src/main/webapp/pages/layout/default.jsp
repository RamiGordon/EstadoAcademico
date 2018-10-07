<%@ include file="/pages/template/includes/common_head.jsp" %>

<decorator:head />
	
	<script type="text/javascript">

	// Toggle Menu 
	$(function(){	
			
		$("#leftBarHide").click(function () {
			if ($("#menu").css('display')!='none'){
				$("#menu").hide();
			}
			else
			{
				$("#menu").show();
			}	      
		})
	});


	// Roll-Over icono de menu vertical izq.
	$(function()
	{
		$("#leftBarHide").mouseover
		( function(){
			if ($("#menu").is(":hidden")) {
				$("#leftBarHide").attr("src","${staticPath}images/menu/abrirOver.gif")
			}
			else{
				$("#leftBarHide").attr("src","${staticPath}images/menu/cerrarOver.gif")
			}		
		  }
		).mouseout
		( function(){
			if ($("#menu").is(":hidden")) {
				$("#leftBarHide").attr("src","${staticPath}images/menu/abrirOut.gif")
			}
			else{
				$("#leftBarHide").attr("src","${staticPath}images/menu/cerrarOut.gif")
			}	
		  }
		);
	  }
	);

	</script>
</head>

<body>

	<!-- Header -->   
	<%@ include file="/pages/template/includes/header.jsp" %>
	
	<!-- Contenido -->
	<table id="estructura" style="height:89%">
		<tr>
			<td valign="top" id="menu">
			<%@ include file="/pages/template/includes/menu.jsp" %>
			</td>
			<td class="separador_v_middle">			
				<img src="${staticPath}images/menu/cerrarOut.gif" title="Ocultar / Mostrar Menu" id="leftBarHide" style="cursor:pointer" />
			</td>
			<td valign="top" id="contenido"><decorator:body/></td>
		</tr>
	</table>

 	<%@ include file="/pages/template/includes/procesando.jsp" %>
 	<%@ include file="/pages/template/includes/dialogs.jsp" %>
</body>
</html>