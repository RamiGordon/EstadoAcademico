package ar.com.stk.web.action.libreria;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import ar.com.osde.framework.services.crud.PageDTO;
import ar.com.stk.dto.CategoriaDTO;
import ar.com.stk.services.libreria.CategoriaAdminService;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

/**
 * Action para manipular la clase Categoria.
 *
 */
public class CategoriaAction extends ActionSupport implements ModelDriven<CategoriaDTO>, Preparable, SessionAware {

	private static final long serialVersionUID = 1L;
	private static final String LIST = "list";
	
	private CategoriaAdminService service;
	private Map<String, Object> session;
	private boolean readOnly = false;	
	private CategoriaDTO model;
	private String operation;
	private long id;
	private PageDTO page = new PageDTO(1,5);
	
	// metodos de navegacion
	
	public String show(){
		operation = "Detalle";
		setReadOnly(true);		
		return SUCCESS;
	}
	
	public String add(){
		operation = "Agregar";
		return SUCCESS;
	}
	
	public String save(){
		service.create(getModel());
		return list();
	}
	
	public String edit(){
		operation = "Editar";
		return SUCCESS;
	}
	
	public String update(){
		service.update(getModel());
		return list();
	}
	
	public String destroy(){
		operation = "Eliminar";
		setReadOnly(true);		
		return SUCCESS;
	}
	
	public String remove(){	
		service.delete(getModel());
		return list();
	}
	
	public String list(){
		session.put("results", service.getAllByPage(page));
		return LIST;
	}
	
	// metodos varios
	
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	
	public CategoriaDTO getModel() {
		return model;
	}

	public void prepare() throws Exception {
		if (getId()==0) {
			model = new CategoriaDTO();
		} else {
			model = getService().getById(getId());
		}
	}
	
	// getters y setters de propiedades de esta clase
	
	public CategoriaAdminService getService() {
		return service;
	}

	public void setService(CategoriaAdminService service) {
		this.service = service;
	}

	public boolean isReadOnly() {
		return readOnly;
	}

	public void setReadOnly(boolean readOnly) {
		this.readOnly = readOnly;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}
	
	public String getOperation() { 
		return operation;
	}
	
}