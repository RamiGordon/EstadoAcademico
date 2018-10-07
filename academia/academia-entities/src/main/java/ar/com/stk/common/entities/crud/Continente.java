package ar.com.stk.common.entities.crud;

import ar.com.osde.framework.crud.common.model.Item;
import ar.com.osde.framework.entities.FrameworkEntity;

/**
 * Representa un continente.
 * @author Francisco Andrade
 *
 */
public class Continente implements Item, FrameworkEntity{
	
	private static final long serialVersionUID = 6121396209372488763L;
	/**
	 * Identificador del continente
	 */
	private long id;
	/**
	 * Nombre del contiente
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