//Drop down Menu

         function maqDropDown(){
                 var dpmenu=$(this);
                 var lis=dpmenu.children("li");
                 if (lis.size()>1){
                 	dropDownBot(dpmenu);
                 	dropDownTop(dpmenu);
                    dropDownInsert(dpmenu,"");
                 }
         }

        function dropDownWrapLabel(dpmenu,element){
		   var lis=dpmenu.children("a");
                if (lis.size()>0){
                    lis.each(function(){
                       var lisitem=$(this);
                       var aChils=lisitem.children();
                       label="<span class='label'>"+lisitem.text()+"</span>";
                       lisitem.text('');
                       if (aChils.size()>0){
                          img=aChils.get(0);
			  lisitem.append(img);
                       }
                       lisitem.append(label); } )
                }
         }

         function dropDownTop(dpmenu){
                var top = '<li class="item first">	        </li>';
                dpmenu.prepend(top);
         }


         function dropDownBot(dpmenu){
                var bot = '<li class="item last">   </li>';
                dpmenu.append(bot);
         }


        function dropDownInsert(dpmenu,element){
		var lis=dpmenu.children("li");
                if (lis.size()>0){
                    lis.each(function(){
					     var lisitem=$(this);
						 dropDownWrapLabel(lisitem,'<span class="label"><span>'); 
						 lisitem.prepend(element) 
					}
					)
                }
         }

         function mostrarMenu(){
             var menu=$(this).children("UL");
             menu.css("display","block");
             
 
         }
         function ocultarMenu(){
             var menu=$(this).children("UL");
             menu.css("display","none");
             
 
         }
         function setearMouse(){

             var celda=$(this);
             var menu=celda.children("UL");
             var estado=celda.attr("class");
             if (estado.indexOf("head_off",0)==-1){
                 celda.mouseenter(mostrarMenu);
                 celda.mouseleave(ocultarMenu);
             }

         }

         function agregarBoton(){
            var boton_enc = '<table cellspacing="0" cellpadding="0" border="0" class="btn_table"> <tbody><tr> <td class="btn_table_left"/>		<td><button class="btn_out" value="" id="btnAceptar" type="BUTTON">';
            var boton_pie = '</button><!-- --></td>		<td class="btn_table_right"/>	</tr></tbody></table>';
            var boton="";
            var estado;
            var celda = $(this);
            var html_pre = celda.html();
            var ul = celda.children("UL");
            var liHabilitados = ul.children("LI.head_on");
            var liDeshabilitados = ul.children("LI.head_off");

            liHabilitados.each(function(){boton=boton_enc+$(this).text()+boton_pie;});
            liHabilitados.each(function(){estado=$(this).attr('class');});

            liDeshabilitados.each(function(){boton=boton_enc+$(this).text()+boton_pie;});
            liDeshabilitados.each(function(){estado=$(this).attr('class');}); 
            if (estado=='head_off'){
               celda.addClass("head_off");
            }

            celda.html(boton + html_pre);
         }

         $(function()
         {  
            var menues = $(".menu",".dropDown");
            var celdas_toolBar = $(".dropDown");

                     

            if (menues.length >0){
                
	        menues.each(maqDropDown);
            }
            

            celdas_toolBar.each(agregarBoton);
            celdas_toolBar.each(setearMouse); 
           



	})




