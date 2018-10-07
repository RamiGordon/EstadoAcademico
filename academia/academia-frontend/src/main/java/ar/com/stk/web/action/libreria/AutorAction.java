package ar.com.stk.web.action.libreria;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import ar.com.osde.framework.services.crud.PageDTO;
import ar.com.stk.dto.AutorDTO;
import ar.com.stk.services.libreria.AutorAdminService;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

/**
 * Representa al Action de Autor. Agrupa las operaciones de mostrar, modificar, eliminar, agregar y
 * listar Autor.
 *
 */
public class AutorAction extends ActionSupport implements ModelDriven<AutorDTO>, Preparable, SessionAware {

	private static final long serialVersionUID = 1L;
	private static final String SUCCESSLIST = "list";
	
	private AutorAdminService service;
	private Map<String, Object> session;
	private boolean readOnly = false;	
	private AutorDTO model;
	private String operation;
	private long id;
	private PageDTO page = new PageDTO(1, 5);
	
	/**
	 * Utilizado para ver el detalle de un Autor.
	 * @return SUCCES
	 */
	public String show(){
		this.setOperation("Detalle");
		setReadOnly(true);		
		return SUCCESS;
	}
	
	/**
	 * Se ejecuta previo a mostar la pantalla de Alta de Usuario.
	 * @return SUCCESS
	 */
	public String add(){
		this.setOperation("Agregar");
		return SUCCESS;
	}
	
	/**
	 * Agrega un nuevo Autor.
	 * @return lista de Autores.
	 */
	public String save(){
		service.create(getModel());
		return list();
	}
	
	/**
	 * Se ejecuta previo a Editar a un Autor.
	 * @return SUCCESS
	 */
	public String edit(){
		this.setOperation("Editar");
		return SUCCESS;
	}
	
	/**
	 * Actualiza un Autor
	 * @return la lista de Autores
	 */
	public String update(){
		service.update(getModel());
		return list();
	}
	
	/**
	 * Se ejecuta previo a eliminar un Autor.
	 * @return SUCCESS.
	 */
	public String destroy(){
		this.setOperation("Eliminar");
		this.setReadOnly(true);		
		return SUCCESS;
	}
	
	/**
	 * Elimina un Autor.
	 * @return la lista de Autores.
	 */
	public String remove(){	
		service.delete(getModel());
		return list();
	}
	
	/**
	 * Lista los Autores.
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

	public AutorDTO getModel() {
		return model;
	}
	
	/**
	 * @param model the model to set
	 */
	public void setModel(AutorDTO model) {
		this.model = model;
	}

	public void prepare() {
		if (getId()==0) {
			model = new AutorDTO();
		} else {
			model = getService().getById(getId());
		}
	}

	/**
	 * @return the service
	 */
	public AutorAdminService getService() {
		return service;
	}

	/**
	 * @param service the service to set
	 */
	public void setService(AutorAdminService service) {
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