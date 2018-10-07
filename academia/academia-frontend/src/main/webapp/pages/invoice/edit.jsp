<%@ taglib prefix="s" uri="/struts-tags" %>

<s:if test="currentInvoice!=null">
    <s:text var="title" name="Edici�n de Invoice"><s:param><s:text name="id"/></s:param></s:text>
</s:if>
<s:else>
    <s:text var="title" name="Creaci�n de Invoice"><s:param><s:text name="id"/></s:param></s:text>
</s:else>
<html>
<head>
    <title><s:property value="#title"/></title>
    <s:head/>
    <sx:head/>
</head>

<body>
<h1><s:property value="#title"/></h1>
<%--
<s:action var="skillAction" namespace="/skill" name="list"/>
 --%>
<s:actionmessage/>
<s:actionerror/>
<s:form name="editForm" action="%{nextMethod}">
    <s:textfield label="Id" name="currentInvoice.id"/>
    <s:textfield label="Name" name="currentInvoice.name"/>
    <%--
    <s:checkbox fieldValue="true" label="Pagar" name="currentEmployee.married"/>
    <s:combobox list="availablePositions" label="Position" name="currentEmployee.position"/>
    
    <s:select list="#skillAction.availableItems" listKey="name" label="Main Skill"
               name="currentEmployee.mainSkill.name"/>
    <s:select list="#skillAction.availableItems" listKey="name" listValue="description" label="Other Skills"
               name="selectedSkills" multiple="true"/>
               --%>
               <%--
    <s:password label="Password" name="currentEmployee.password"/>
    <s:radio list="availableLevels" name="currentEmployee.level"/>
     --%>
    <s:textarea label="Description" name="currentInvoice.description" cols="50" rows="3"/>
    <s:submit value="Save" />
    
</s:form>
<p><a href="<s:url action="list"/>">Volver</a></p>
</body>
</html>
