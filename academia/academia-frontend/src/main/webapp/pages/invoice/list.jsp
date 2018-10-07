<%@ taglib prefix="s" uri="/struts-tags" %>

<html>
<head>

<script type="text/javascript">



$(function(){
	$('.jsonlink').click(
					function(){
						var url = '<s:url action="listJson.do"/>';
						$('#dialogAjax').dialog('open');
						$("#jsonResultPage").text("" );
						$("#jsonResultFull").text("" );
						$.getJSON(url, function(data){
							$("#jsonResultPage").append("PAGE="+data.page.pageNumber +" " );
							$("#jsonResultPage").append("SIZE="+data.page.pageSize +" " );
							$("#jsonResultPage").append("TOTAL="+data.totalResults +" " );
							 $.each(data.result, function(i,item){
						            $("#jsonResultFull").append("NAME["+item.name+"] ");
						          });
							});
					}
				);

	$('#dialogAjax').dialog({
		autoOpen: false
	});



	$('.jsonlinkPlano').click(
			function(){
				//alert("hola");
				var url = '<s:url action="listJson.do"/>';
				$.get(url, function(data){
					alert(data);
				})
			}
		);
});

</script>



<title>Listado de Invoices</title></head>

<body>
		
<h1>Invoices en el Sistema</h1>
<!-- Ejemplo con flexy grid -->


<!-- Ejemplo con json plano -->
<a href="#" class="jsonlink"> JSON Request</a>
<a href="#" class="jsonlinkPlano"> JSON Request Plano</a>

<div id="dialogAjax">
	<p id="jsonResultPage"></p>
	<div id="jsonResultFull"></div>
	<br><br>
	<a href="#" class="jsonlink"> Refresh</a>
</div>

<br><br>

<table>
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Description</th>
		<th>Actions</th>
    </tr>
    <s:iterator value="result.result">
        <tr>
            <td><a href="<s:url action="edit" >
					<s:param name="id" value="%{id}"></s:param>
						</s:url>
            		">
            <s:property value="id"/></a></td>
            <td><s:property value="name"/></td>
            <td><s:property value="description"/></td>
			<td>
				<a href="<s:url action="delete" >
					<s:param name="id" value="%{id}"></s:param>
						</s:url>
            		">
							Delete
					</a>
				</td>
        </tr>
    </s:iterator>
</table>
<a href="list.do?page.pageNumber=1">Pagina1</a> | 
<a href="list.do?page.pageNumber=2">Pagina2</a>
<br><br>
<p><a href="<s:url action="edit" includeParams="none"/>">Nueva</a></p>
</body>
</html>