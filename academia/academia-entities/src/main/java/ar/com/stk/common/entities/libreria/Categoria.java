package ar.com.stk.common.entities.libreria;

import org.hibernate.envers.Audited;

import ar.com.osde.framework.entities.FrameworkEntity;

/**
 * Representa una Categoria.
 * @author Francisco Andrade
 *
 */
@Audited
public class Categoria implements FrameworkEntity  {

	private static final long serialVersionUID = -4571266968814268457L;
	/**
	 * Identificador de la Categoria.
	 */
	private long id;
	/**
	 * Descripcion de la Categoria.
	 */
	private String descripcion;
	
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
	
	/**
	 * @return the descripcion
	 */
	public String getDescripcion() {
		return descripcion;
	}
	
	/**
	 * @param descripcion the descripcion to set
	 */
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
}