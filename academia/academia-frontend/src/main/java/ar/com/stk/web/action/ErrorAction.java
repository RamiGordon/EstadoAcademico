package ar.com.stk.web.action;

import java.util.Collection;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import org.apache.log4j.Logger;

/**
 * Action para mostrar errores.
 */
public class ErrorAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	
	private static final Logger LOGGER = Logger.getLogger(ErrorAction.class);
	
	
	/**
	 * @see ActionSupport#execute()
	 */
	public String execute() {
		LOGGER.info("Paso por ErrorAction");
		return SUCCESS;
	}
}
