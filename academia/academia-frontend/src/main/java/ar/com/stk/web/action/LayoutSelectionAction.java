/**
 * 
 */
package ar.com.stk.web.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.interceptor.ParameterNameAware;

/**
 * Action para seleccion de Layout mediante el 
 * SessionDecoratorMapper de sitemesh 
 * 
 *
 */
public class LayoutSelectionAction extends ActionSupport implements SessionAware, ParameterNameAware{

	private static final long serialVersionUID = 1L;

	private String layout = null;
	private Map<String, Object> session;
	
	/**
	 * @see ActionSupport#execute()
	 */
	public String execute() {

		if (null != layout)
		{	
			session.put("decorator", layout);
		}
		return SUCCESS;
	}

	/**
	 * @return the layout
	 */
	public String getLayout() {
		return layout;
	}

	/**
	 * @param layout the layout to set
	 */
	public void setLayout(String layout) {
		this.layout = layout;
	}

	/**
	 * @see org.apache.struts2.interceptor.SessionAware#setSession(java.util.Map)
	 */
	public void setSession(Map<String, Object> session) {
	 
	   this.session = session ;
	 
	}
	
	public boolean acceptableParameterName(String parameterName) {
	     
	    boolean allowedParameterName = true ;
	     
	    if ( parameterName.contains("session")  || parameterName.contains("request") ) {	   
	        allowedParameterName = false ;         
	    } 	     
	    return allowedParameterName;
	}

}