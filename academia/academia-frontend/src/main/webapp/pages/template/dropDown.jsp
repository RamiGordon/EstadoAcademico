<%@ include file="./includes/taglibs.jsp" %>
<%@ page import="java.util.Collection"%>
<%@ page import="ar.com.osde.framework.entities.organization.*"%>
<% 
Collection l = new java.util.ArrayList();
Cap metro = new Cap();
metro.setDescription("Metropolitana");

ar.com.osde.framework.entities.user.impl.UserIntranet user1 = new ar.com.osde.framework.entities.user.impl.UserIntranet();
user1.setUserName("MT00000001");
user1.setFirstName("Javier");
user1.setLastName("Iglesias");
user1.setEmail("ar/com/stk.iglesias@osde.com.ar");
user1.setFloor("Av. Leandro N. Alem 1067 - Piso 17 [C1001AAF] Buenos Aires - Argentina");
user1.setPhone("[54] 011 - 4318XXXX");
user1.setPhoneExtension("0001");
user1.setLoginCap(metro);

ar.com.osde.framework.entities.user.impl.UserIntranet user2 = new ar.com.osde.framework.entities.user.impl.UserIntranet();
user2.setUserName("MT00000002");
user2.setFirstName("Debora");
user2.setLastName("Bamballi");
user2.setEmail("debora.bamballi@osde.com.ar");
user2.setFloor("Av. Leandro N. Alem 1067 - Piso 17 [C1001AAF] Buenos Aires - Argentina");
user2.setPhone("[54] 011 - 4318XXXX");
user2.setPhoneExtension("0002");
user2.setLoginCap(metro);

ar.com.osde.framework.entities.user.impl.UserIntranet user3 = new ar.com.osde.framework.entities.user.impl.UserIntranet();
user3.setUserName("MT00000003");
user3.setFirstName("Oscar");
user3.setLastName("De La Vega");
user3.setEmail("oscar.delavega@osde.com.ar");
user3.setFloor("Av. Leandro N. Alem 1067 - Piso 17 [C1001AAF] Buenos Aires - Argentina");
user3.setPhone("[54] 011 - 4318XXXX");
user3.setPhoneExtension("0003");
user3.setLoginCap(metro);

ar.com.osde.framework.entities.user.impl.UserIntranet user4 = new ar.com.osde.framework.entities.user.impl.UserIntranet();
user4.setUserName("NS00000001");
user4.setFirstName("Cristian");
user4.setLastName("Rodriguez");
user4.setEmail("cristian.rodriguez@osde.com.ar");
user4.setFloor("Dorrego 1042 - Piso 2 [S2000DHV] Rosario - Argentina");
user4.setPhone("[54] 0341 - 512XXXX");
user4.setPhoneExtension("0001");
Cap ros = new Cap();
ros.setDescription("Rosario");
user4.setLoginCap(ros);


ar.com.osde.framework.entities.user.impl.UserIntranet user5 = new ar.com.osde.framework.entities.user.impl.UserIntranet();
user5.setUserName("NS00000002");
user5.setFirstName("Juan Domingo");
user5.setLastName("Ramirez Sarlanga");
user5.setEmail("asarlanga@osde.com.ar");
user5.setFloor("Dorrego 1042 - Piso 2 [S2000DHV] Rosario - Argentina");
user5.setPhone("[54] 0341 - 512XXXX");
user5.setPhoneExtension("0001");
user5.setLoginCap(ros);


l.add(user1);
l.add(user2);
l.add(user3);
l.add(user4);
l.add(user5);

l.add(user1);
l.add(user2);
l.add(user3);
l.add(user4);
l.add(user5);
l.add(user1);
l.add(user2);
l.add(user3);
l.add(user4);
l.add(user5);
l.add(user1);
l.add(user2);
l.add(user3);
l.add(user4);
l.add(user5);
l.add(user1);
l.add(user2);
l.add(user3);
l.add(user4);
l.add(user5);
l.add(user1);
l.add(user2);
l.add(user3);
l.add(user4);
l.add(user5);


request.setAttribute( "usuarios", l );
%>	
<cw:set var="explain" scope="page" value="${param.exp}" />
<cw:set var="pgSize" scope="page" value="10" />

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN">
<html>
<head>
	<meta name="pageCode" content="42"/>
	<title>Menú DropDown </title>
	<script>
	$(document).ready(function(){

		changeLinks();
	})
	
	</script>
	
</head>

<body>
<br></br>

<div class="bloque">
		<h3><span>Menú DropDown</span></h3>
		<div class="cuerpo">
		
		<table width="100%" cellpadding="0" cellspacing="0" border="0">
			<tr>
				<td>
					<p>Este es un componente que extiende la funcionalidad del Toolbar b&aacute;sico <br> </p>
					</p>El objetivo de este componente es agrupar funcionalidades dentro de un mismo menú. Las funcionalidades a agrupar deben tener algún criterio en común para que los usuarios las puedan identificar dentro del menú. <br>
					</br>Es muy importante que el label del botón sea representativo de lo que se encuentra dentro del menú .</p>
					<div class="codeSample">
						
						<p>
						<b>Html:</b> 
						</p><br/>
&lt;table class="toolBar"&gt;<br>
	&nbsp;&lt;tr&gt;<br>
		<!--Segundo menu desplegable -->
		&nbsp;&nbsp;&lt;td class="dropDown" &gt;<br>
		   &nbsp;&nbsp;&nbsp;&lt;ul class="menu" &gt;<br>
			 &nbsp;&nbsp;&nbsp;&nbsp;&lt;li class="head_on"&gt;Transferir&lt;/li&gt;<br>
			 &nbsp;&nbsp;&nbsp;&nbsp;&lt;li class="item"&gt;&lt;a href="#"&gt;Desactivar&lt;/a&gt;&lt;/li&gt;<br>
			 &nbsp;&nbsp;&nbsp;&nbsp;&lt;li class="item"&gt;&lt;a href="#"&gt;&lt;img src="$templateApp/images/usabilidad/iconos_on/entrega_rojo.gif" /&gt;Reactivar&lt;/a&gt;&lt;/li&gt;<br>
			 &nbsp;&nbsp;&nbsp;&nbsp;&lt;li class="item"&gt;&lt;a href="#" class="off"&gt;Desactivar&lt;/a&gt;&lt;/li&gt;<br>
			 &nbsp;&nbsp;&nbsp;&nbsp;&lt;li class="item"&gt;&lt;a href="#"&gt;&lt;img src="${appCtx}/images/usabilidad/iconos_on/entrega_ok.gif" /&gt;Activar&lt;/a&gt;&lt;/li&gt;      <br>
			 &nbsp;&nbsp;&nbsp;&nbsp;&lt;li class="item"&gt;&lt;a href="#"&gt;&lt;img src="${appCtx}/images/usabilidad/iconos_on/entrega_rojo.gif" /&gt;Reactivar&lt;/a&gt;&lt;/li&gt;<br>
		   &nbsp;&nbsp;&nbsp&lt;/ul&gt;<br>
		&nbsp;&nbsp;&lt;/td&gt;<br>		
	&nbsp;&lt;/tr&gt;<br>
&lt;/table&gt;<br>
<br>

						</div>
				</td>
			</tr>
		</table>
		<br>
		
		
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
			$("#checkAllUsuarios").click( function(){

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
			$("#checkAllUsuarios").attr('checked', selectAll);
			
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
					if(  $.inArray( this.value, arraySelected ) != -1)
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
				$("#checkAllUsuarios").attr('checked',false);
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
		
		
	    <!-- Inicio menu dropDown -->
	     <table class="toolBar">
	     	<tr>
	     		<td width="20"><a href="javascript:edit();void(0)"><img src="${appCtx}/images/iconos/editar-over.gif"  border="0" title="Editar" width="16" height="16"/></a></td>
	     		<td width="20"><a href="javascript:eliminar();void(0)"><img src="${appCtx}/images/iconos/eliminar.gif"  border="0" title="Eliminar"  width="16" height="16"/></a></td>

				<!--primer menu desplegable -->
				<td class="dropDown" >
                   <ul class="menu" >
                     <li class="head_off">Editar</li>
                   </ul>

				</td>

				<!--Segundo menu desplegable -->
				<td class="dropDown" >
                   <ul class="menu" >
                     <li class="head_on">Transferir</li>
                     <li class="item"><a href="#">Desactivar</a></li>
                     <li class="item"><a href="#"><img src="${appCtx}/images/usabilidad/iconos_on/entrega_rojo.gif" />Reactivar</a></li>
                     <li class="item"><a href="#" class="off">Desactivar</a></li>
                     <li class="item"><a href="#"><img src="${appCtx}/images/usabilidad/iconos_on/entrega_ok.gif" />Activar</a></li>                                                        
                     <li class="item"><a href="#"><img src="${appCtx}/images/usabilidad/iconos_on/entrega_rojo.gif" />Reactivar</a></li>
                   </ul>

				</td>
				
				<!--Tercer menu desplegable -->
				<td>
					<table>
						<tr>
							<td class="dropDown">
			                   <ul class="menu" >
			                   		<li class="head_on">Transporte</li>
									<li class="item"><a href="#">Desactivar</a></li>
			                     	<li class="item"><a href="#"><img src="${appCtx}/images/usabilidad/iconos_on/entrega_rojo.gif" />Reactivar</a></li>
			                     	<li class="item"><a href="#">Desactivar</a></li>
			                     	<li class="item"><a href="#"><img src="${appCtx}/images/usabilidad/iconos_on/entrega_ok.gif" />Activar</a></li>
				                    <li class="item"><a href="#"><img src="${appCtx}/images/usabilidad/iconos_on/entrega_rojo.gif" />Reactivar</a></li>	                                                        			 
			                   </ul>
							</td>
						</tr>
					</table>
				</td>
			<td></td>

	    	</tr>
		</table>
		<!-- fin menu dropDown -->
		
		<display:table name="usuarios" id="users" pagesize="${pgSize}" defaultsort="7" defaultorder="ascending" class="datos" requestURI="${appCtx}/pages/template/ajax/results.jsp" >

				<display:column headerClass="primero" style="width:1%" title="<input type='checkbox' id='checkAllUsuarios'>"> <!-- <s:checkbox id="users" property="firstName" name="seleccionados"/> -->
					<input type="checkbox" id="seleccion" name="seleccion" value="${users.userName}">
					
				</display:column>
				<display:column title="Nombre" style="width:10%;" sortable="true">
					<table class="displayTagColumn"  title="${users.firstName }">
						<tr>
							<td>${users.firstName }</td>
						</tr>
					</table>
				</display:column>
				<display:column property="lastName" title="Apellido" titleKey="ajax.wait.txt" style="width:10%" sortable="true"/>
				<display:column property="userName" title="Usuario" style="width:10%"/>
				<display:column property="loginCap.description" title="CAP" style="width:10%" sortable="true"/>
				<display:column property="phone" title="Telefono" style="width:15%"/>
				<display:column property="phoneExtension" title="Interno" style="width:5%"/>
				<display:column property="email" title="Email" style="width:20%;"/>
				<display:column title="Ubicación" style="width:20%;">
					<table class="displayTagColumn"  title="${users.floor }">
						<tr>
							<td>${users.floor}</td>
						</tr>
					</table>
				</display:column>
				<display:column headerClass="ultimo" style="width:1%"/>
			</display:table>	
			
			
				
		</div>
	</div>
	  	<div class="pie"><div></div></div>
</div>
</body>            
</html>

