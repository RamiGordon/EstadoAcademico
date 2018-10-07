<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN">
<html>
<head>
	<meta name="pageCode" content="11"/>
	<title>Grilla</title>
	<script>
	$(document).ready(function(){

		changeLinks();
	})
	
	</script>
</head>

<body>

	<jsp:include page="/pages/template/ajax/results.jsp" >
		<jsp:param value="1" name="exp"/>
	</jsp:include>
</body>            
</html>

