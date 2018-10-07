<%@ include file="/pages/template/includes/common_head.jsp" %>
	<decorator:head />
	<link type="text/css" href="${staticPath}lib/styles/superfish/superfish.css" rel="stylesheet"/>
	<script type="text/javascript" src="${staticPath}lib/js/supersubs.js"></script> 
	<script type="text/javascript" src="${staticPath}lib/js/superfish.js"></script>
	
	<script type="text/javascript">
	$(document).ready(function () {
		    // Menu desplegable
		$("ul.sf-menu").supersubs({minWidth: 12,maxWidth: 27,extraWidth: 1, minHeight:40})
		.superfish().find('ul').bgIframe({opacity:false});        
	});

	
	</script>
	
</head>

<body>
	<!-- Header -->   
	<%@ include file="/pages/template/includes/header.jsp" %>

	<table id="estructura">
		<tr>
			<td colspan="2"><%@ include file="/pages/template/includes/menuDesplegable.jsp" %></td>
		</tr>
	</table>
	
	<table id="estructura">
		<tr>
			<td style="width: 5px"></td>
			<td id="contenido"><decorator:body/></td>
		</tr>
	</table>        
<%@ include file="/pages/template/includes/procesando.jsp" %>
<%@ include file="/pages/template/includes/dialogs.jsp" %>
</body>
</html>
