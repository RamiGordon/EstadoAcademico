package ar.com.stk.dto;

import java.io.Serializable;

/**
 * DTO que representa a un FilterInvoice.
 *
 */
public class InvoiceFilterDTO implements Serializable{
	
	private static final long serialVersionUID = 4995770600871568399L;
	
	/**
	 * Nombre del Invoice a filtrar.
	 */
	private String name;
		
	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}
	
	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}
}
