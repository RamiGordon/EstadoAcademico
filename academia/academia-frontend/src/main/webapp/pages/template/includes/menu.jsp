<%@ include file="/pages/template/includes/taglibs.jsp" %>
<ul class="base" >
	<li class="primero"><a href="${appCtx}/context/index.do"><s:text name="menu.opt1"/></a></li>
	<li class="top"><a href="javascript:subMenu(1);void(0);"><s:text name="menu.opt2"/></a>
    	<ul id="sub_1">

 		<s:if test="%{#session.pageCode == 1}">
    		<li class="activo"><a href="${appCtx}/pages/template/ayuda.jsp"><s:text name="menu.opt2.1"/></a></li>
    	</s:if>
    	<s:else>
    		<li><a href="${appCtx}/pages/template/ayuda.jsp"><s:text name="menu.opt2.1"/></a></li>
    	</s:else>
    	<%--  --%>
    	<s:if test="%{#session.pageCode == 2}">
    		<li class="activo"><a href="${appCtx}/pages/template/botones.jsp"><s:text name="menu.opt2.2"/></a></li>
    	</s:if>
    	<s:else>
    		<li><a href="${appCtx}/pages/template/botones.jsp"><s:text name="menu.opt2.2"/></a></li>
    	</s:else>
    	<%--  --%>
    	<s:if test="%{#session.pageCode == 3}">
    		<li class="activo"><a href="${appCtx}/pages/template/bloque.jsp"><s:text name="menu.opt2.3"/></a></li>
    	</s:if>
    	<s:else>
    		<li><a href="${appCtx}/pages/template/bloque.jsp"><s:text name="menu.opt2.3"/></a></li>
    	</s:else>
    	<%--  --%>
    	<s:if test="%{#session.pageCode == 4}">
    		<li class="activo"><a href="${appCtx}/pages/template/calendar.jsp"><s:text name="menu.opt2.4"/></a></li>
    	</s:if>
    	<s:else>
    		<li><a href="${appCtx}/pages/template/calendar.jsp"><s:text name="menu.opt2.4"/></a></li>
    	</s:else>
    	<%--  --%>
    	<s:if test="%{#session.pageCode == 5}">
    		<li class="activo"><a href="${appCtx}/pages/template/descarga.jsp"><s:text name="menu.opt2.5"/></a></li>
    	</s:if>
    	<s:else>
    		<li><a href="${appCtx}/pages/template/descarga.jsp"><s:text name="menu.opt2.5"/></a></li>
    	</s:else>
    	<%--  --%>
    	<s:if test="%{#session.pageCode == 6}">
    		<li class="activo"><a href="${appCtx}/pages/template/error_samples.jsp"><s:text name="menu.opt2.6"/></a></li>
    	</s:if>
    	<s:else>
    		<li><a href="${appCtx}/pages/template/error_samples.jsp"><s:text name="menu.opt2.6"/></a></li>
    	</s:else>
    	<%--  --%>
    	<s:if test="%{#session.pageCode == 7}">
    		<li class="activo"><a href="${appCtx}/pages/template/formulario.jsp"><s:text name="menu.opt2.7"/></a></li>
    	</s:if>
    	<s:else>
    		<li><a href="${appCtx}/pages/template/formulario.jsp"><s:text name="menu.opt2.7"/></a></li>
    	</s:else>
    	<%--  --%>
    	<s:if test="%{#session.pageCode == 8}">
    		<li class="activo"><a href="${appCtx}/pages/template/detalle.jsp?readonly=true"><s:text name="menu.opt2.8"/></a></li>
    	</s:if>
    	<s:else>
    		<li><a href="${appCtx}/pages/template/detalle.jsp?readonly=true"><s:text name="menu.opt2.8"/></a></li>
    	</s:else>
    	<%--  --%>
    	<s:if test="%{#session.pageCode == 9}">
    		<li class="activo"><a href="${appCtx}/pages/template/tabs.jsp"><s:text name="menu.opt2.9"/></a></li>
    	</s:if>
    	<s:else>
    		<li><a href="${appCtx}/pages/template/tabs.jsp"><s:text name="menu.opt2.9"/></a></li>
    	</s:else>
    	<%--  --%>
    	<s:if test="%{#session.pageCode == 10}">
    		<li class="activo"><a href="${appCtx}/pages/template/buscador.jsp"><s:text name="menu.opt2.10"/></a></li>
    	</s:if>
    	<s:else>
    		<li><a href="${appCtx}/pages/template/buscador.jsp"><s:text name="menu.opt2.10"/></a></li>
    	</s:else>
    	<%--  --%>
    	<s:if test="%{#session.pageCode == 11}">
    		<li class="activo"><a href="${appCtx}/pages/template/tabla.jsp"><s:text name="menu.opt2.11"/></a></li>
    	</s:if>
    	<s:else>
    		<li><a href="${appCtx}/pages/template/tabla.jsp"><s:text name="menu.opt2.11"/></a></li>
    	</s:else>
    	<%--  --%>
    	<s:if test="%{#session.pageCode == 12}">
    		<li class="activo"><a href="${appCtx}/pages/template/dialog_samples.jsp"><s:text name="menu.opt2.12"/></a></li>
    	</s:if>
    	<s:else>
    		<li><a href="${appCtx}/pages/template/dialog_samples.jsp"><s:text name="menu.opt2.12"/></a></li>
    	</s:else>
    	<%--  --%>
    	<s:if test="%{#session.pageCode == 13}">
    		<li class="activo"><a href="${appCtx}/pages/template/popup_sample.jsp"><s:text name="menu.opt2.13"/></a></li>
    	</s:if>
    	<s:else>
    		<li><a href="${appCtx}/pages/template/popup_sample.jsp"><s:text name="menu.opt2.13"/></a></li>
    	</s:else>
    	<%--  --%>
    	<s:if test="%{#session.pageCode == 14}">
    		<li class="activo"><a href="${appCtx}/pages/template/cargando.jsp"><s:text name="menu.opt2.14"/></a></li>
    	</s:if>
    	<s:else>
    		<li><a href="${appCtx}/pages/template/cargando.jsp"><s:text name="menu.opt2.14"/></a></li>
    	</s:else>
    	<%--  --%>
    	<s:if test="%{#session.pageCode == 15}">
    		<li class="activo"><a href="${appCtx}/pages/template/print.jsp"><s:text name="menu.opt2.15"/></a></li>
    	</s:if>
    	<s:else>
    		<li><a href="${appCtx}/pages/template/print.jsp"><s:text name="menu.opt2.15"/></a></li>
    	</s:else>
    	<s:if test="%{#session.pageCode == 16}">
    		<li class="activo"><a href="${appCtx}/pages/template/eventoFormulario.jsp"><s:text name="menu.opt2.16"/></a></li>
    	</s:if>
    	<s:else>
    		<li><a href="${appCtx}/pages/template/eventoFormulario.jsp"><s:text name="menu.opt2.16"/></a></li>
    	</s:else>
    	<s:if test="%{#session.pageCode == 17}">
    		<li class="activo"><a href="${appCtx}/pages/template/arbol.jsp"><s:text name="menu.opt2.17"/></a></li>
    	</s:if>
    	<s:else>
    		<li><a href="${appCtx}/pages/template/arbol.jsp"><s:text name="menu.opt2.17"/></a></li>
    	</s:else>
		<s:if test="%{#session.pageCode == 18}">
    		<li class="activo"><a href="${appCtx}/pages/random/list.jsp"/><s:text name="menu.opt2.18"/></a></a></li>
    	</s:if>
    	<s:else>
    		<li><a href="${appCtx}/pages/random/list.jsp"/><s:text name="menu.opt2.18"/></a></a></li>
    	</s:else>
 		<%--  --%>
    	<s:if test="%{#session.pageCode == 19}">
    		<li class="activo"><a href="${appCtx}/pages/template/tablaBajasLogicas.jsp"><s:text name="menu.opt2.19"/></a></li>
    	</s:if>
    	<s:else>
    		<li><a href="${appCtx}/pages/template/tablaBajasLogicas.jsp"><s:text name="menu.opt2.19"/></a></li>
    	</s:else>   
    	
    	<s:if test="%{#session.pageCode == 20}">
    		<li class="activo"><a href="${appCtx}/pages/template/select2sides.jsp"><s:text name="menu.opt2.20"/></a></li>
    	</s:if>
    	<s:else>
    		<li><a href="${appCtx}/pages/template/select2sides.jsp"><s:text name="menu.opt2.20"/></a></li>
    	</s:else>   
    	<s:if test="%{#session.pageCode == 41}">
    		<li class="activo"><a href="${appCtx}/pages/template/dragAndDrop.jsp"><s:text name="menu.opt2.21"/></a></li>
    	</s:if>
    	<s:else>
    		<li><a href="${appCtx}/pages/template/dragAndDrop.jsp"><s:text name="menu.opt2.21"/></a></li>
    	</s:else>   
    	
    	<s:if test="%{#session.pageCode == 42}">
    		<li class="activo"><a href="${appCtx}/pages/template/dropDown.jsp"><s:text name="menu.opt2.22"/></a></li>
    	</s:if>
    	<s:else>
    		<li><a href="${appCtx}/pages/template/dropDown.jsp"><s:text name="menu.opt2.22"/></a></li>
    	</s:else>   
    	
    	
    	
   		<%--  --%>              
        </ul>
    </li>
    <li class="top"><a href="javascript:subMenu(2);void(0);"><s:text name="menu.opt3"/></a>
    	<ul id="sub_2">
        	<li class="activo"><a href="javascript:void(0)"><s:text name="menu.opt3.1"/></a></li>
            <li><a href="<s:url action="changeLayout"/>?layout=layout2"><s:text name="menu.opt3.2"/></a></li>
            <!-- <li><a href="<s:url action="changeLayout"/>?layout=layout3"><s:text name="menu.opt3.3"/></a></li> -->
        </ul>
    </li>
    <li class="top"><a href="javascript:subMenu(3);void(0);"><s:text name="menu.opt4"/></a>
    	<ul id="sub_3">
        	<li><a href="javascript:subMenu(31);void(0);"><s:text name="menu.opt4.1"/></a>
            	<ul id="sub_31">
            	  <s:if test="%{#session.pageCode == 31}">
                    <li class="activo"><a href="${appCtx}/libreria/AutorAction!list.do"><s:text name="menu.opt4.1.1"/></a></li>
                  </s:if>
    			  <s:else>
    			  	<li><a href="${appCtx}/libreria/AutorAction!list.do"><s:text name="menu.opt4.1.1"/></a></li>
    			  </s:else>
                  <s:if test="%{#session.pageCode == 32}">
                    <li class="activo"><a href="${appCtx}/libreria/CategoriaAction!list.do"><s:text name="menu.opt4.1.2"/></a></li>
                  </s:if>
    			  <s:else>
    			    <li><a href="${appCtx}/libreria/CategoriaAction!list.do"><s:text name="menu.opt4.1.2"/></a></li>
    			  </s:else>
                  <s:if test="%{#session.pageCode == 33}">
                    <li class="activo"><a href="${appCtx}/libreria/LibroAction!list.do"><s:text name="menu.opt4.1.3"/></a></li>
                  </s:if>
    			  <s:else>
                    <li><a href="${appCtx}/libreria/LibroAction!list.do"><s:text name="menu.opt4.1.3"/></a></li>
    			  </s:else>
                </ul>
            </li>

			<!-- Opcion de ABM Generico -->
			<li><a href="javascript:subMenu(32);void(0);"><s:text name="menu.opt4.2"/></a>
            	<ul id="sub_32">
            	  <s:if test="%{#session.pageCode == 34}">
                    <li class="activo"><a href="${appCtx}/pages/template/abmGenerico.jsp"><s:text name="menu.opt4.2.1"/></a></li>
                  </s:if>
    			  <s:else>
    			  	<li><a href="${appCtx}/pages/template/abmGenerico.jsp"><s:text name="menu.opt4.2.1"/></a></li>
    			  </s:else>
    			  
    			  <s:if test="%{#session.pageCode == 35}">
                    <li class="activo"><a href="${appCtx}/pages/template/abmGenericoPais.jsp"><s:text name="menu.opt4.2.2"/></a></li>
                  </s:if>
    			  <s:else>
    			  	<li><a href="${appCtx}/pages/template/abmGenericoPais.jsp"><s:text name="menu.opt4.2.2"/></a></li>
    			  </s:else>
                   <s:if test="%{#session.pageCode == 36}">
                    <li class="activo"><a href="${appCtx}/pages/template/abmGenericoContinente.jsp"><s:text name="menu.opt4.2.3"/></a></li>
                  </s:if>
    			  <s:else>
    			  	<li><a href="${appCtx}/pages/template/abmGenericoContinente.jsp"><s:text name="menu.opt4.2.3"/></a></li>
    			  </s:else>
                </ul>
            </li>
			<!-- FIN Opcion de ABM Generico -->
        </ul>
    </li>
	
	<!-- Diseño -->
	<li class="top"><a href="javascript:subMenu(5);void(0);"><s:text name="menu.opt6"/></a>
    	<ul id="sub_5">
    		<li><a href="javascript:subMenu(51);void(0);"><s:text name="menu.opt6.1"/></a>
    			<ul id="sub_51">
    			 	<s:if test="%{#session.pageCode == 37}">
            			 <li class="activo"><a href="${appCtx}/pages/template/catalogoIconos.jsp"><s:text name="menu.opt6.1.1"/></a></li>
            		</s:if>
            		<s:else>
            		<li><a href="${appCtx}/pages/template/catalogoIconos.jsp"><s:text name="menu.opt6.1.1"/></a></li>
            		</s:else>
            		
            		<s:if test="%{#session.pageCode == 38}">
            			<li class="activo"><a href="${appCtx}/pages/template/consideraciones.jsp"><s:text name="menu.opt6.1.2"/></a></li>
            		</s:if>
            		<s:else>
            			<li><a href="${appCtx}/pages/template/consideraciones.jsp"><s:text name="menu.opt6.1.2"/></a></li>
            		</s:else>
            		
            		<s:if test="%{#session.pageCode == 39}">
            			<li class="activo"><a href="${appCtx}/pages/template/lineamientos.jsp"><s:text name="menu.opt6.1.3"/></a></li>
            		</s:if>
            		<s:else>
            			<li><a href="${appCtx}/pages/template/lineamientos.jsp"><s:text name="menu.opt6.1.3"/></a></li>
            		</s:else>
            		
            		<s:if test="%{#session.pageCode == 40}">
            			<li class="activo"><a href="${appCtx}/pages/template/ubicacion.jsp"><s:text name="menu.opt6.1.4"/></a></li>
            		</s:if>
            		<s:else>
            			<li><a href="${appCtx}/pages/template/ubicacion.jsp"><s:text name="menu.opt6.1.4"/></a></li>
            		</s:else>
            		
               	</ul>
        </ul>
    </li>
    		<!-- FIN Diseño -->
    		
    		
    <li class="ultimo"></li>
</ul>

