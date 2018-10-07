package ar.com.stk.web.action.hospital;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import ar.com.osde.framework.services.crud.PageDTO;
import ar.com.stk.dto.AutorDTO;
import ar.com.stk.dto.SocioDTO;
import ar.com.stk.services.hospital.SocioAdminService;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class SocioAction extends ActionSupport implements ModelDriven<SocioDTO>, Preparable, SessionAware{

	private static final long serialVersionUID = 1L;
	private static final String SUCCESSLIST = "list";
	
	private SocioAdminService service;
	private Map<String, Object> session;
	private boolean readOnly = false;	
	private SocioDTO model;
	private String operation;
	private long id;
	private PageDTO page = new PageDTO(1, 5);
	
	/**
	 * Utilizado para ver el detalle de un Socio.
	 * @return SUCCES
	 */
	public String show(){
		this.setOperation("Detalle");
		setReadOnly(true);		
		return SUCCESS;
	}
	
	/**
	 * Se ejecuta previo a mostar la pantalla de Alta de Socio.
	 * @return SUCCESS
	 */
	public String add(){
		this.setOperation("Agregar");
		return SUCCESS;
	}
	
	/**
	 * Agrega un nuevo Socio.
	 * @return lista de Socios.
	 */
	public String save(){
		service.create(getModel());
		return list();
	}
	
	/**
	 * Se ejecuta previo a Editar a un Socio.
	 * @return SUCCESS
	 */
	public String edit(){
		this.setOperation("Editar");
		return SUCCESS;
	}
	
	/**
	 * Actualiza un Socio
	 * @return la lista de Socio
	 */
	public String update(){
		service.update(getModel());
		return list();
	}
	
	/**
	 * Se ejecuta previo a eliminar un Socio.
	 * @return SUCCESS.
	 */
	public String destroy(){
		this.setOperation("Eliminar");
		this.setReadOnly(true);		
		return SUCCESS;
	}
	
	/**
	 * Elimina un Socio.
	 * @return la lista de Socios.
	 */
	public String remove(){	
		service.delete(getModel());
		return list();
	}
	
	/**
	 * Lista los Socios.
	 * @return LIST
	 */
	public String list(){
		this.setOperation("Listar");
		this.getSession().put("results", service.getAllByPage(page));
		return SUCCESSLIST;
	}
	
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	
	/**
	 * @return the session
	 */
	public Map<String, Object> getSession() {
		return session;
	}

	public SocioDTO getModel() {
		return model;
	}
	
	/**
	 * @param model the model to set
	 */
	public void setModel(SocioDTO model) {
		this.model = model;
	}

	public void prepare() {
		if (getId()==0) {
			model = new SocioDTO();
		} else {
			model = getService().getById(getId());
		}
	}

	/**
	 * @return the service
	 */
	public SocioAdminService getService() {
		return service;
	}

	/**
	 * @param service the service to set
	 */
	public void setService(SocioAdminService service) {
		this.service = service;
	}

	/**
	 * @return the readOnly
	 */
	public boolean isReadOnly() {
		return readOnly;
	}

	/**
	 * @param readOnly the readOnly to set
	 */
	public void setReadOnly(boolean readOnly) {
		this.readOnly = readOnly;
	}

	/**
	 * @return the operation
	 */
	public String getOperation() {
		return operation;
	}

	/**
	 * @param operation the operation to set
	 */
	public void setOperation(String operation) {
		this.operation = operation;
	}

	/**
	 * @return the id
	 */
	public long getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(long id) {
		this.id = id;
	}
}
