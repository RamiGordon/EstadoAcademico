<%@ include file="../includes/taglibs.jsp" %>
<%@ page import="java.util.Collection"%>
<%@ page import="ar.com.osde.framework.entities.organization.*"%>
<%@ page import="ar.com.stk.common.entities.InvoiceEntity"%>
<% 
Collection l = new java.util.ArrayList();
Cap metro = new Cap();
metro.setDescription("Metropolitana");

ar.com.stk.common.entities.InvoiceEntity invoice1 = new ar.com.stk.common.entities.InvoiceEntity();
invoice1.setDescription("Description 1");
invoice1.setName("Anabela Alvarez");
invoice1.setBaja(new Boolean(true));

ar.com.stk.common.entities.InvoiceEntity invoice2 = new ar.com.stk.common.entities.InvoiceEntity();
invoice2.setDescription("Description 2");
invoice2.setName("Alejandra Quaglia");
invoice2.setBaja(new Boolean(true));

ar.com.stk.common.entities.InvoiceEntity invoice3 = new ar.com.stk.common.entities.InvoiceEntity();
invoice3.setDescription("Description 3");
invoice3.setName("Alberto Concovia");
invoice3.setBaja(new Boolean(false));

ar.com.stk.common.entities.InvoiceEntity invoice4 = new ar.com.stk.common.entities.InvoiceEntity();
invoice4.setDescription("Description  4");
invoice4.setName("Claudio Sanchez");
invoice4.setBaja(new Boolean(true));


ar.com.stk.common.entities.InvoiceEntity invoice5 = new ar.com.stk.common.entities.InvoiceEntity();
invoice5.setDescription("Description  5");
invoice5.setName("Paula Alvarez");
invoice5.setBaja(new Boolean(false));


l.add(invoice1);
l.add(invoice2);
l.add(invoice3);
l.add(invoice4);
l.add(invoice5);
l.add(invoice1);
l.add(invoice2);
l.add(invoice3);
l.add(invoice4);
l.add(invoice5);
l.add(invoice1);
l.add(invoice2);
l.add(invoice3);
l.add(invoice4);
l.add(invoice5);
l.add(invoice1);
l.add(invoice2);
l.add(invoice3);
l.add(invoice4);
l.add(invoice5);
l.add(invoice1);
l.add(invoice2);
l.add(invoice3);
l.add(invoice4);
l.add(invoice5);
l.add(invoice1);
l.add(invoice2);
l.add(invoice3);
l.add(invoice4);
l.add(invoice5);


request.setAttribute( "invoices", l );
%>	
<cw:set var="explain" scope="page" value="${param.exp}" />
<cw:set var="pgSize" scope="page" value="10" />

<div class="bloque">
    	<s:if test='%{ 1 == #attr.explain}'>
	<div class="top"><div>&nbsp;</div></div>
   	<div class="cuerpo"><p>Las grillas son presentadas mediante el uso de <b>DisplayTag</b>.
	 	Las mismas soportan ordenamientos por diferentes columnas y paginación via AJAX<br/>
		A diferencia de las grillas simples, en este ejemplo se agrega lógica visual del componente.<br/>
		Se utiliza un Decorator que une CheckboxTableDecorator con la la sobreescritura del método addRowClass<br/>
		En caso de que cumpla una condición, en este caso que el registro est&eacute; dado de baja, el estilo es diferente<br/>

		Ejemplo:
		</p>
		<cw:set var="pgSize" scope="page" value="5" />
    	
		<div class="codeSample">
		<span class="codeComment">&lt;!-- define sector actualizable por ajax --&gt;</span><br/>
		&lt;div id="ajxDspId"&gt; <br/><br/>
		&nbsp;&nbsp;&nbsp;&nbsp;<span class="codeComment">&lt;!-- declaracion de la grilla --&gt;</span><br/>
		&nbsp;&nbsp;&nbsp;&nbsp;&lt;name="invoices" id="invoices" pagesize="${pgSize}" defaultsort="7" defaultorder="ascending" class="datos" requestURI="${appCtx}/pages/template/ajax/resultsBajasLogicas.jsp" decorator="ar.com.stk.web.decorator.TablaBajaLogicaDecorator"  excludedParams="_chk"<br/>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; class="datos" requestURI="${appCtx}/pages/template/ajax/resultsBajasLogicas.jsp" &gt;	
		</div>
		
    	</s:if>
    	
    	<s:else>
	<h3><span>Resultados</span></h3>
   	<div class="cuerpo">
		</s:else>

		<div id="ajxDspId">
		<script type="text/javascript">

		// Asigno funciones a los eventos de seleccion
		$(function() {

			// Click en cada checkbox
			$("#ajxDspId .odd :checkbox, #ajxDspId .even :checkbox").click ( function () {
				paintTR (this);
				updateSelection(this);
			} );


			// Aplica seleccion/deseleccion gral sobre todo el conjunto de checkboxes
			$("#checkAllInvoices").click( function(){

				mainCheck = this;
				selectAll = mainCheck.checked;
				$("#ajxDspId .odd :checkbox, #ajxDspId .even :checkbox").each( function(i){

					$(this).attr('checked', mainCheck.checked);
					paintTR(this);
					updateSelection(this);
					
				} );
			});

			try
			{
				refreshChecks();
			}
			catch(e){}
			
		});

		function edit()
		{
			return false;
		}
		function eliminar()
		{
			return false;
		}

		var selectAll = false; //Indicador de seleccion masiva
		var arraySelected = new Array();

		// Actualiza el estado de los checkboxes entre paginas 
		function refreshChecks()
		{
			$("#checkAllInvoices").attr('checked', selectAll);
			
			$("#ajxDspId .odd :checkbox, #ajxDspId .even :checkbox").each( function(i)
			{
				// selecciono todos?
				if(selectAll)
				{
					$(this).attr('checked', true);
					paintTR(this);
					updateSelection(this);
				}
				else
				{
					if($.inArray( this.value, arraySelected ) != -1)
					{
						$(this).attr('checked', true);
						paintTR(this);
					}
				}
			} );
		}
		
		// Pinta el color de fondo de la TR correspondiente al checkbox seleccionado
		function paintTR (checkElement)
		{
			if(checkElement.checked)
			{
				$(checkElement).parent().parent().addClass('selectedRow');
			}
			else
			{
				$("#checkAllInvoices").attr('checked',false);
				selectAll = false;
				$(checkElement).parent().parent().removeClass('selectedRow');
			}
		}

		//Actualiza el array de items seleccionados
		function updateSelection(checkElement)
		{
			position = $.inArray( checkElement.value, arraySelected );
			
			if(checkElement.checked)
			{
				if(  position == -1)
				{
					arraySelected.push (checkElement.value);
				}
			}
			else
			{
				//arraySelected.pop (checkElement.value);
				arraySelected.splice( position, 1 );
			}
		}
		</script>
	    <table class="toolBar">
	     	<tr>
	     		<td width="20"><a href="javascript:edit();void(0)"><img src="${staticPath}images/iconos/editar-over.gif"  border="0" title="Editar" width="16" height="16"/></a></td>
	     		<td width="20"><a href="javascript:eliminar();void(0)"><img src="${staticPath}images/iconos/eliminar.gif"  border="0" title="Eliminar"  width="16" height="16"/></a></td>
	     		<td></td>
	    	</tr>
		</table>
	  
		<display:table name="invoices" id="invoices" pagesize="${pgSize}" defaultsort="7" defaultorder="ascending" class="datos" requestURI="${appCtx}/pages/template/ajax/resultsBajasLogicas.jsp" decorator="ar.com.stk.web.decorator.TablaBajaLogicaDecorator"  excludedParams="_chk">
				<display:column property="checkbox" title="<input type='checkbox' id='checkAllInvoices'>" style="width:1%"/>
				<display:column property="name" title="Nombre" style="width:10%"/>
				<display:column property="description" title="Description" titleKey="ajax.wait.txt" style="width:10%" sortable="true"/>
				<display:column property="baja" title="Baja" style="width:10%" sortable="true"/>
				<display:column headerClass="ultimo" style="width:1%"/>
		</display:table>
		</div>

	</div>
	<div class="pie"><div></div></div>
</div>
