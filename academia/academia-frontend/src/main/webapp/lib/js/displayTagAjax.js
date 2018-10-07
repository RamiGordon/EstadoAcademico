//
//cambia los links de displaytag asumiendo que está contenido 
//en un div con id = ajxDspId
//
function changeLinks() {
    selector = '.paginador  a';
    changeUsingSelector(selector, 'ajxDspId', 'spinner');

    selector = '#ajxDspId  table>thead>tr>th>a';
    changeUsingSelector(selector, 'ajxDspId', 'spinner');
}

//
// Actualiza los links de displaytag contenidos en un div específico.
//
function updateDisplayTagLinks( containerID, idToMessage) {
    changeUsingSelector('#' + containerID + ' .paginador  a', containerID, idToMessage);
    changeUsingSelector('#' + containerID + ' table>thead>tr>th>a', containerID, idToMessage);
}

//
// Modifica los links.
//
function changeUsingSelector(selector, containerID, idToMessage) {
    $(selector).each(
    	function() {
    	    var linkData, queryArr, action, qryStr;
    	        	
        	linkData = $(this).attr("href");
        	queryArr = linkData.split("?");
        	action =  queryArr[0];
        	qryStr = queryArr[1];
        	newStr = "JavaScript:doAjax('" + action + "','" + qryStr + "','" + containerID + "','" + idToMessage + "');";
        	$(this).attr("href", newStr);
    	}
    );    
}

//
// Llamado por Ajax
//
function doAjax(url, data, eleId, idToMessage) {
	var localBlockConfig = { 
		message: $('#' + idToMessage),      		 
        css: { 
			border: '1px solid #aaaaaa',
		    padding: '15px', 
		    backgroundColor: '#fafafa', 
		    '-webkit-border-radius': '10px', 
		    '-moz-border-radius': '10px', 
		    top:  ($(window).height() - 30) /2 + 'px', 
            left: ($(window).width() - 150) /2 + 'px', 
		    opacity: 1, 
		    color: '#fff',
		    height: '30px',
		    width: '150px',
		    zIndex: '5000'
		   },
		overlayCSS: {
			backgroundColor: '#AAAAAA',
			opacity: 0.3
		}
	};
	
	var localFunctions = {
		url: url,
        data:  data,
        async: true,
        success: 
        	function( resp) {
	            var d = $(resp); 
	            var htmlStr = d.find('#'+eleId).html();
            
	            if(null == htmlStr )  {
		           	for(i=0;i<d.length;i++) {
			        	var node = d[i];
			            if (node.id == eleId) {
			            	htmlStr = $(node).html(); 
			                break;
			            }
			        }
		        }
        	
        		if(null == htmlStr ) {
        			showErrorMsg($(resp).text());
        		} else {
			        $('#'+eleId).html(htmlStr);
			        updateDisplayTagLinks( eleId, idToMessage);
				}        	
       		},
		complete: 
			function(request, textStatus) { 
            	$('#' + eleId ).unblock(); 
            },
		error: 
			function( request, textStatus, errorThrown) {
				$('#' + eleId ).unblock(); 
            	showErrorMsg('Error no definido: ' + errorThrown.error); 
            }
    };		

    $('#' + eleId ).block(localBlockConfig); 
    $.ajax( localFunctions);
}
