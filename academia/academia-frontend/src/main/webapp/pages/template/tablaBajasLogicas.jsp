<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN">
<html>
<head>
	<meta name="pageCode" content="19"/>
	<title>Grilla con bajas l&oacute;gicas</title>
	<script>
	$(document).ready(function(){

		changeLinks();
	})
	
	</script>
</head>

<body>

	<jsp:include page="/pages/template/ajax/resultsBajasLogicas.jsp" >
		<jsp:param value="1" name="exp"/>
	</jsp:include>
</body>            
</html>

