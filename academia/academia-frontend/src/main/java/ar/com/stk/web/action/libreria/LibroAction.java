package ar.com.stk.web.action.libreria;

import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import ar.com.osde.framework.services.crud.PageDTO;
import ar.com.stk.dto.AutorDTO;
import ar.com.stk.dto.LibroDTO;
import ar.com.stk.services.libreria.AutorAdminService;
import ar.com.stk.services.libreria.CategoriaAdminService;
import ar.com.stk.services.libreria.LibroAdminService;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

/**
 * Action utilizado para las operaciones de un Libro.
 *
 */
public class LibroAction extends ActionSupport implements ModelDriven<LibroModel>, SessionAware {

	private static final long serialVersionUID = 1L;
	private static final String SUCCESSLIST = "list";

	private LibroAdminService libroService;
	private AutorAdminService autorService;
	private CategoriaAdminService categoriaService;

	private Map<String, Object> session;
	private LibroModel model;
	
	private PageDTO page = new PageDTO(1,5);

	/**
	 * Se ejecuta previo al detalle de un Libro.
	 * @return SUCCESS
	 */
	public String show() {
		model.setOperation("Detalle");
		model.setReadOnly(true);
		return SUCCESS;
	}

	/**
	 * Se ejecuta previo a Agregar un Libro.
	 * @return SUCCESS
	 */
	public String add() {	
		model.setCategoriaList(categoriaService.getAll());
		model.setAutorList(autorService.getAll());
		model.setOperation("Agregar");
		model.setAutorIdList(new LinkedList<String>());
		model.setLibro(new LibroDTO());
		model.setReadOnly(false);
		return SUCCESS;
	}
	
	/**
	 * Agrega un Libro.
	 * @return lista de libros.
	 */
	public String save() {
		LibroDTO l = getModel().getLibro();
		libroService.create(l);
		return list();
	}
	
	/**
	 * Se ejecuta previo a editar un Libro.
	 * @return SUCCESS
	 */
	public String edit() {
		model.setOperation("Editar");
		model.setReadOnly(false);
		LibroDTO libro = getLibroService().getById(model.getId());
		model.setLibro(libro);
		model.setCategoriaList(categoriaService.getAll());
		model.setAutorList(autorService.getAll());		
		List<String> autorIdList = new LinkedList<String>();
		for (AutorDTO autorDTO : libro.getAutores()) {
			autorIdList.add(Long.toString(autorDTO.getId()));
		}
		model.setAutorIdList(autorIdList);
		return SUCCESS;
	}
	
	/**
	 * Se actualiza un Libro.
	 * @return lista de libros.
	 */
	public String update() {
		LibroDTO l = model.getLibro();
		libroService.update(l);
		return list();
	}
	
	/**
	 * Se ejecuta previo a mostrar el detalle de un Libro.
	 * @return SUCCESS
	 */
	public String destroy() {
		model.setLibro(getLibroService().getById(model.getId()));
		model.setOperation("Eliminar");
		model.setReadOnly(true);
		return SUCCESS;
	}
	
	/**
	 * Elimina un Libro.
	 * @return lista de Libros.
	 */
	public String remove() {
		LibroDTO l = model.getLibro();
		libroService.delete(l);
		return list();
	}
	
	/**
	 * Lista los libros.
	 * @return LIST
	 */
	public String list() {
		session.put("results", libroService.getAllByPage(page));
		return SUCCESSLIST;
	}
	
	/**
	 * @return the session
	 */
	public Map<String, Object> getSession() {
		return session;
	}

	/**
	 * @param model the model to set
	 */
	public void setModel(LibroModel model) {
		this.model = model;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
		model = (LibroModel) session.get("LIBRO_MODEL");
		if (model == null) {
			model = new LibroModel();
			session.put("LIBRO_MODEL", model);
		}
	}

	public LibroModel getModel() {
		return model;
	}

	/**
	 * @return the libroService
	 */
	public LibroAdminService getLibroService() {
		return libroService;
	}

	/**
	 * @param libroService the libroService to set
	 */
	public void setLibroService(LibroAdminService libroService) {
		this.libroService = libroService;
	}

	/**
	 * @return the autorService
	 */
	public AutorAdminService getAutorService() {
		return autorService;
	}

	/**
	 * @param autorService the autorService to set
	 */
	public void setAutorService(AutorAdminService autorService) {
		this.autorService = autorService;
	}

	/**
	 * @return the categoriaService
	 */
	public CategoriaAdminService getCategoriaService() {
		return categoriaService;
	}

	/**
	 * @param categoriaService the categoriaService to set
	 */
	public void setCategoriaService(CategoriaAdminService categoriaService) {
		this.categoriaService = categoriaService;
	}

}