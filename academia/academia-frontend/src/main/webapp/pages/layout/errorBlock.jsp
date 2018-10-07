<%@ include file="/pages/template/includes/common_head.jsp" %>
<cw:set var="httpError" value="${param.code}" />

	<decorator:head />

	<style>
	body
	{
		color: #666;
		font-family: Arial, Helvetica, sans-serif;
		font-size: 12px;
		margin: 10px ;
		border: none;
		height: 90%;
		background-color: #fff;
	}
	
	</style>
	<script>
	$(document).ready(function () {
		
		$('#btnVolver').hide();
	});	 
</script>

</head>

<body>

<div id="error">
    <div class="bloque">
        <h3><span>Error ${httpError}</span></h3>
		<decorator:body/>
		<div class="pie"><div></div></div>
	</div>
</div>
</body>
</html>