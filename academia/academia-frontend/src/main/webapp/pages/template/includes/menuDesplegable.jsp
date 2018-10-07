<ul class="sf-menu">
	<li class="first fIe"><a href="${appCtx}/context/index.do"><s:text name="menu.opt1"/></a></li>
	
	<li class="separator">&nbsp;</li>
	
	<li class="principal pIe"><a href="javascript:subMenu(1);void(0);"><s:text name="menu.opt2"/></a>
		<ul>        	
        	<li><a href="${appCtx}/pages/template/ayuda.jsp"><s:text name="menu.opt2.1"/></a></li>
            <li><a href="${appCtx}/pages/template/botones.jsp"><s:text name="menu.opt2.2"/></a></li>            
            <li><a href="${appCtx}/pages/template/bloque.jsp"><s:text name="menu.opt2.3"/></a></li>            
            <li><a href="${appCtx}/pages/template/calendar.jsp"><s:text name="menu.opt2.4"/></a></li>
            <li><a href="${appCtx}/pages/template/descarga.jsp"><s:text name="menu.opt2.5"/></a></li>
            <li><a href="${appCtx}/pages/template/error_samples.jsp"><s:text name="menu.opt2.6"/></a></li>            
            <li><a href="${appCtx}/pages/template/formulario.jsp"><s:text name="menu.opt2.7"/></a></li>            
            <li><a href="${appCtx}/pages/template/detalle.jsp?readonly=true"><s:text name="menu.opt2.8"/></a></li>
            <li><a href="${appCtx}/pages/template/tabs.jsp"><s:text name="menu.opt2.9"/></a></li>
            <li><a href="${appCtx}/pages/template/buscador.jsp"><s:text name="menu.opt2.10"/></a></li>
            <li><a href="${appCtx}/pages/template/tabla.jsp"><s:text name="menu.opt2.11"/></a></li>
            <li><a href="${appCtx}/pages/template/dialog_samples.jsp"><s:text name="menu.opt2.12"/></a></li>
            <li><a href="${appCtx}/pages/template/popup_sample.jsp"><s:text name="menu.opt2.13"/></a></li>
            <li><a href="${appCtx}/pages/template/cargando.jsp"><s:text name="menu.opt2.14"/></a></li>
            <li><a href="${appCtx}/pages/template/print.jsp"><s:text name="menu.opt2.15"/></a></li>
            <li><a href="${appCtx}/pages/template/eventoFormulario.jsp"><s:text name="menu.opt2.16"/></a></li>
			<li><a href="${appCtx}/pages/template/arbol.jsp"><s:text name="menu.opt2.17"/></a></li>
            <li><a href="${appCtx}/pages/random/list.jsp"/><s:text name="menu.opt2.18"/></a></a></li>
        </ul>
    </li>
   <li class="separator">&nbsp;</li>
   
   <li class="principal pIe"><a href="javascript:subMenu(2);void(0);"><s:text name="menu.opt3"/></a>
    	<ul>
        	<li><a href="<s:url action="changeLayout"/>?layout=layout1"><s:text name="menu.opt3.1"/></a></li>
            <li class="activo"><a href="javascript:void(0)"><s:text name="menu.opt3.2"/></a></li>
            <!-- <li><a href="<s:url action="changeLayout"/>?layout=layout3"><s:text name="menu.opt3.3"/></a></li>  -->
        </ul>
    </li>
    
	<li class="separator">&nbsp;</li>
	
	<li class="last lIe"><a href="javascript:subMenu(3);void(0);"><s:text name="menu.opt4"/></a>
    	<ul>
        	<li><a href="javascript:subMenu(31);void(0);"><s:text name="menu.opt4.1"/></a>
            	<ul>
                    <li><a href="${appCtx}/pages/template/abm.jsp"><s:text name="menu.opt4.1.1"/></a></li>
                </ul>
            </li>
        </ul>
    </li>
</ul>

