// Preload de imagenes
jQuery.preloadImages = function()
{
  for(var i = 0; i<arguments.length; i++)
  {
    jQuery("<img>").attr("src", arguments[i]);
  }
};

// Aplica bloqueo a todo requerimiento AJAX usando config. default de blockUI
$().ajaxStart($.blockUI).ajaxStop($.unblockUI);


/**
 * Presenta un popup de dialogo con un mensaje informativo
 * @param txt Texto a mostrar
 * @param callback [opcional] Funcion a ejecutar luego de cerrar el dialogo
 */
function showInfoMsg( txt , callback)
{
	$("#infoDialog #infoTxt").html( txt );
	$("#infoDialog").dialog(dialogDefaults);
	// sobrescribo color del titulo
	$("#ui-dialog-title-infoDialog").css("color", "#0097D0") ;
	if( callback )
	{
		$('#infoDialog').bind('dialogclose',  callback);
	}
}

/**
 * Presenta un popup de dialogo con un mensaje de ayuda
 * @param txt Texto a mostrar
 * @param callback [opcional] Funcion a ejecutar luego de cerrar el dialogo
 */
function showAyudaMsg( txt , callback)
{
	$("#ayudaDialog #ayudaTxt").html( txt );
	$("#ayudaDialog").dialog(dialogDefaults);
	// sobrescribo color del titulo
	$("#ui-dialog-title-ayudaDialog").css("color", "#0097D0") ;
	if( callback )
	{
		$('#ayudaDialog').bind('dialogclose',  callback);
	}
}

/**
 * Presenta un popup de dialogo con un mensaje de confirmación
 * @param txt Texto a mostrar
 * @param callback [opcional] Funcion a ejecutar luego de aceptar el dialogo
 */
function showConfirmMsg( txt , callback)
{
	$("#confirmDialog #confirmTxt").html( txt );
	$("#confirmDialog").dialog(dialogDefaults).dialog("open");
	// sobrescribo color del titulo
	$("#ui-dialog-title-confirmDialog").css("color", "#D0AC22") ;
	
	buttons = {
		CANCELAR: function() {$("#confirmDialog").dialog('destroy');},
		ACEPTAR: function() {$("#confirmDialog").dialog('destroy');}
	}

	if( callback ) // Ejecuta algo al confirmar?
	{
		buttons = {
			CANCELAR: function() {$("#confirmDialog").dialog('destroy');},
			ACEPTAR: function() {$("#confirmDialog").dialog('destroy');callback.call()}
		}
	}

	$("#confirmDialog").dialog('option', 'buttons', buttons)		
}


/**
 * Presenta un popup de dialogo con un mensaje de alerta
 * @param txt Texto a mostrar
 * @param callback [opcional] Funcion a ejecutar luego de cerrar el dialogo
 */
function showAlertMsg( txt, callback )
{
	$("#warningDialog #warningTxt").html( txt );
	$("#warningDialog").dialog(dialogDefaults).dialog("open");
	// sobrescribo color del titulo
	$("#ui-dialog-title-warningDialog").css("color", "#D0AC22") ;
	
	if( callback )
	{
		$('#warningDialog').bind('dialogclose',  callback);
	}
}

/**
 * Presenta un popup de dialogo con un mensaje de error
 * @param txt Texto a mostrar
 * @param callback [opcional] Funcion a ejecutar luego de cerrar el dialogo
 */
function showErrorMsg( txt, callback )
{
	$.unblockUI();
	$("#errorDialog #errorTxt").html( txt );
	$("#errorDialog").dialog(dialogDefaults).dialog("open");
	// sobrescribo color del titulo
	$("#ui-dialog-title-errorDialog").css("color", "#F00A10") ; 

	if( callback )
	{
		$('#errorDialog').bind('dialogclose',  callback);
	}
}

/**
 * Loggeo javascript
 */
jQuery.log = {
	error : function( msg ) {
		if(window.console) {
			console.error(msg);
		} 
		else {
			top.status = "error: " + msg;
		}
	},
	warn : function( msg ) {
		if(window.console) {
			console.warn(msg);
		} 
		else {
			top.status = "warn: " + msg;
		}
	},
	info : function( msg ) {
		if(window.console) {
			console.info(msg);
		} 
		else {
			top.status = "info: " + msg;
		}
	}
};


function testValidDate(strDate) {
	var dPart = strDate.substring(0, 2);
	var mPart = strDate.substring(3, 5);
	var yPart = strDate.substring(6, 10);
	date = new Date(yPart, mPart - 1, dPart);
	var mes1 = date.getMonth();
	var mes2 = ((mPart) - 1);
	return (mes1 == mes2);
}



function subMenu(elm){
	
	try
	{
		if(elm == this.menuActivo && document.getElementById('sub_'+elm).style.display == 'block') {
			document.getElementById('sub_'+elm).style.display = 'none';
		} else {
			if(String(this.menuActivo).length > 1 && this.menuActivo != null){ 
				elmPadreAnterior = String(menuActivo).substring( 0,1 );
				document.getElementById('sub_'+menuActivo).style.display = 'none';
			} 
			else {
				elmPadreAnterior = menuActivo;
			}
			if(this.menuActivo != null) document.getElementById('sub_'+elmPadreAnterior).style.display = 'none';
			
			if(String(elm).length > 1 && elm != null){
				elmPadreActivo = String(elm).substring( 0,1 );
				document.getElementById('sub_'+elmPadreActivo).style.display = 'block';
			}
			if(elm != null) document.getElementById('sub_'+elm).style.display = 'block';
		}
		this.menuActivo = elm;
	}
	catch(e)
	{
		//top.status = e.message;
	}
}

/**
 * Función para crear un <b>Select Múltiple de dos lados</b> a partir de 2 <code>s:select</code> de Struts
 * @param boton1 
 * @param boton2
 * @param boton3
 * @param boton4
 * @param select1
 * @param select2
 * @return
 */
function createDualSelect(boton1, boton2, boton3, boton4, select1, select2) {
		//add -> boton1
		$("#" + boton1).click(function() {		
			$("#" + select1 + " option:selected").remove().appendTo("#" + select2).attr("selected","");
		});
		//addAll -> boton2 
		 $("#" + boton2).click(function() {
			 $("#" + select1 + " option:all").remove().appendTo("#" + select2).attr("selected","");
		});
		 //remove -> boton3
		 $("#" + boton3).click(function() {
			 $("#" + select2 + " option:selected").remove().appendTo("#" + select1).attr("selected","");
		  
		 });
		 //removeAll -> boton4
		 $("#" + boton4).click(function() {
			 $("#" + select2 + " option:all").remove().appendTo("#" + select1).attr("selected","");
		 });
};
	
