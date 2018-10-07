package ar.com.stk.common.entities.crud;

import ar.com.osde.framework.crud.common.model.Item;
import ar.com.osde.framework.entities.FrameworkEntity;

/**
 * Representa una Pais.
 * @author Francisco Andrade
 *
 */
public class Pais implements Item, FrameworkEntity{
	
	private static final long serialVersionUID = 1891463081594761949L;
	/**
	 * Identificador del Pais.
	 */
	private Long id;
	/**
	 * Nombre del Pais.
	 */
	private String nombre;
	
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
	 * @return the nombre
	 */
	public String getNombre() {
		return nombre;
	}
	
	/**
	 * @param nombre the nombre to set
	 */
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
}