<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ include file="/pages/template/includes/taglibs.jsp"%>
<html>
<head>

<title>Listado de Invoices</title></head>

<body>
		
<div class="bloque">
			<h3>
				<span>Listado de Invoices</span>
			</h3>

			<div class="cuerpo">
				<p><a href="<s:url action="crudinvoice" method="preSave" includeParams="none"/>">Nueva</a></p>
				<s:form namespace="/crudAction" action="crudinvoice" theme="simple">
					<s:textfield key="Name" name="filter.name"  readonly="readOnly"/>
    				<s:submit value="Filtrar" method="listFilter"/>
				</s:form>
				<!-- Este DIV agrega el comportamiento AJAX a la grilla -->
				<div id="ajxDspId">
					<display:table name="paginatedModelList" id="result"
						sort="external" class="datos" requestURI="/crudAction/crudinvoice!list.do"
						excludedParams="method:save method:update method:show method:remove">
						<display:column sortable="true" sortProperty="name" title="Nombre" style="width:20%" maxLength="30">
							<a href="<s:url action="crudinvoice" method="preUpdate"/>?id=${result.id}">${result.name}</a>
						</display:column>
						<display:column property="description" sortable="true" sortProperty="description" title="Descripción" style="width:20%" maxLength="30" />
						<display:column title="Acciones" style="width:20%" maxLength="30">
							<a href="<s:url action="crudinvoice" method="preRemove"/>?id=${result.id}">Eliminar</a>
						</display:column>	
					</display:table>
				</div>
			</div>
			<div class="pie">
				<div></div>
			</div>
		</div>
</body>
</html>