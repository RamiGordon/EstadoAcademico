package ar.com.stk.common.entities;

import java.math.BigDecimal;

import ar.com.osde.framework.entities.FrameworkEntity;

/**
 * Clase de ejemplo para utilizar el decorator ejemplo,
 *
 */
public class InvoiceEntity implements FrameworkEntity {

	private static final long serialVersionUID = 1L;
	private long id;
	private String name;
	private String description;
	private BigDecimal total;
	private Boolean baja;
	
	
	public Boolean getBaja() {
		return baja;
	}


	public void setBaja(Boolean baja) {
		this.baja = baja;
	}


	public InvoiceEntity() {
		super();
		
	}
	
	
	public InvoiceEntity(long id, String name, String description, BigDecimal total) {
		super();
		this.description = description;
		this.id = id;
		this.name = name;
		this.total = total;
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
	/**
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}
	/**
	 * @param description the description to set
	 */
	public void setDescription(String description) {
		this.description = description;
	}
	/**
	 * @return the total
	 */
	public BigDecimal getTotal() {
		return total;
	}
	/**
	 * @param total the total to set
	 */
	public void setTotal(BigDecimal total) {
		this.total = total;
	}
}
