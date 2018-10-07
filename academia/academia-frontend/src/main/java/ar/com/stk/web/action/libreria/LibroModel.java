package ar.com.stk.web.action.libreria;

import java.util.List;

import ar.com.stk.dto.AutorDTO;
import ar.com.stk.dto.CategoriaDTO;
import ar.com.stk.dto.LibroDTO;

/**
 * Se utiliza como modelo en el Action Libro.
 *
 */
public class LibroModel {

	/**
	 * Identificador del Libro.
	 */
	private Long id;
	/**
	 * Libro a manipular por el action.
	 */
	private LibroDTO libro;
	/**
	 * Indica si la operacion es de lectura o lectura/escritura.
	 */
	private boolean readOnly = false;
	/**
	 * Operacion que se va a realizar.
	 */
	private String operation;
	/**
	 * Categorias que pueden asociarse a un Libro.
	 */
	private List<CategoriaDTO> categoriaList;
	/**
	 * Autores que pueden asociarse a un Libro.
	 */
	private List<AutorDTO> autorList;
	/**
	 * Identificadores de los autores que pueden asociarse a un Libro.
	 */
	private List<String> autorIdList;
	
	/**
	 * @return the id
	 */
	public Long getId() {
		return id;
	}
	
	/**
	 * @param id the id to set
	 */
	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * @return the libro
	 */
	public LibroDTO getLibro() {
		return libro;
	}
	
	/**
	 * @param libro the libro to set
	 */
	public void setLibro(LibroDTO libro) {
		this.libro = libro;
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
	 * @return the categoriaList
	 */
	public List<CategoriaDTO> getCategoriaList() {
		return categoriaList;
	}
	
	/**
	 * @param categoriaList the categoriaList to set
	 */
	public void setCategoriaList(List<CategoriaDTO> categoriaList) {
		this.categoriaList = categoriaList;
	}
	
	/**
	 * @return the autorList
	 */
	public List<AutorDTO> getAutorList() {
		return autorList;
	}
	
	/**
	 * @param autorList the autorList to set
	 */
	public void setAutorList(List<AutorDTO> autorList) {
		this.autorList = autorList;
	}
	
	/**
	 * @return the autorIdList
	 */
	public List<String> getAutorIdList() {
		return autorIdList;
	}
	
	/**
	 * @param autorIdList the autorIdList to set
	 */
	public void setAutorIdList(List<String> autorIdList) {
		this.autorIdList = autorIdList;
	}
}