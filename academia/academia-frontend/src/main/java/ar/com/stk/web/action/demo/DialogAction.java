/**
 * 
 */
package ar.com.stk.web.action.demo;

import com.opensymphony.xwork2.ActionSupport;

import org.apache.log4j.Logger;

/**
 * Action para simular errores capturados automaticamente por el framework 
 * o explicitamente por la aplicaci�n
 *
 */
public class DialogAction extends ActionSupport {
	
	private static final long serialVersionUID = 1L;
	
	private static final Logger LOGGER = Logger.getLogger(DialogAction.class);
	
	/**
	 * Se lanza un NullPointerException.
	 */
	public String execute() throws NullPointerException {

		LOGGER.info("Paso por metodo execute");
		try{
			throw new NullPointerException("-Mensaje Seteado a la "
					+  "NullPointerException lanzada-");
		}
		catch(NullPointerException e){
			addActionError("Se captur� un NullPointerException en en action. " 
					+ "Se sete� este mensaje de error y se lanz� la Exception " 
					+ "para que sea manejada por Struts");
			
			throw e;	
		}
	}
	
	/**
	 * Se lanza un NullPointerException y se captura para agregar como error
	 * a la lista de errores del Action.
	 * @return error_page
	 */
	public String page() {
		LOGGER.info("Paso por metodo page");
		try{
			throw new NullPointerException();
		} catch(Exception e) {
			addActionError( "Se produjo una Exception y fue capturada desde el " 
						+  	"action. Se hace un redirect a un jsp dentro de la " 
						+	"aplicaci�n, respetando el layout actual");
			
		}
		return "error_page";
	}
	
	/**
	 * Se agrega un error a la lista de errores del Action.
	 * @return error_dialog
	 */
	public String dialog() {
		LOGGER.info("Paso por metodo dialog");
		addActionError( "Se produjo una Exception y fue capturada desde el " 
					+	"action. Se hace un redirect a un jsp a mostrar dentro "
					+	" de un popup de dialogo");
		return "error_dialog";
	}
}