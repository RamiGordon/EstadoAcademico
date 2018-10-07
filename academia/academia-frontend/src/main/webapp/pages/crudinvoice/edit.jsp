<%@ include file="/pages/template/includes/taglibs.jsp"%>

<cw:if test="${nextMethod=='save'}">
	<cw:set var="title">Crear Invoice</cw:set>					
</cw:if>
<cw:if test="${nextMethod=='remove'}">
	<cw:set var="title">Eliminar Invoice</cw:set>					
</cw:if>
<cw:if test="${nextMethod=='update'}">
	<cw:set var="title">Modificar Invoice</cw:set>					
</cw:if>
<cw:if test="${nextMethod=='show'}">
	<cw:set var="title">Invoice</cw:set>					
</cw:if>
<html>
<head>
    <title>${title}</title>
    <s:head/>
    <sx:head/>
</head>

<body>
<h1>${title}</h1>
<s:actionmessage/>
<s:actionerror/>
<s:form namespace="/crudAction" action="crudinvoice">
	<s:token />
	<s:hidden name="id" value="%{id}" />
	
	<s:hidden name="nextMethod" value="%{nextMethod}" />
	
	
				
	<s:textfield key="crudInvoice.label.id" name="idInvoice" readonly="readOnly"/>
    <s:textfield key="crudInvoice.label.name" name="name"  readonly="readOnly"/>
    <s:textarea key="crudInvoice.label.description" name="description" cols="50" rows="3" readonly="readOnly"/>
    <s:submit value="%{nextMethod}" method="%{nextMethod}"/>
</s:form>
<p><a href="<s:url action="list"/>">Volver</a></p>
</body>
</html>
