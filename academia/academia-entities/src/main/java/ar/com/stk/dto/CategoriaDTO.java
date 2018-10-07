package ar.com.stk.dto;

import java.io.Serializable;

public class CategoriaDTO implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 4438348216102332479L;
	
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