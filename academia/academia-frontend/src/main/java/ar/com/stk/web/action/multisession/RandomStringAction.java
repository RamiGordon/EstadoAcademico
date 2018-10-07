package ar.com.stk.web.action.multisession;

import java.util.Map;

import org.apache.commons.lang.RandomStringUtils;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

/**
 *
 */
public class RandomStringAction extends ActionSupport implements SessionAware {
	
	public static final long serialVersionUID = 1L;
	
	public static final String RANDOMKEY = "generatedRandom";
	
	private Map<String, Object> session;
	
	private String context = "";
	
	/**
	 * @return the session
	 */
	public Map<String, Object> getSession() {
		return session;
	}

	/**
	 * @see org.apache.struts2.interceptor.SessionAware#setSession(java.util.Map)
	 */
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	
	public String doInContext(){
		this.context = RandomStringUtils.randomAlphanumeric(20);
		return SUCCESS;
	}
	
	public String doInSession(){
		this.session.put(RANDOMKEY, RandomStringUtils.randomAlphanumeric(20));
		return SUCCESS;
	}

	public String getFromContext(){
		return this.context;
	}
	
	public String getFromSession(){
		return (String) this.session.get(RANDOMKEY);
	}
	
	public String refresh(){
		return SUCCESS;
	}

	/**
	 * @return the context
	 */
	public String getContext() {
		return context;
	}

	/**
	 * @param context the context to set
	 */
	public void setContext(String context) {
		this.context = context;
	}
}