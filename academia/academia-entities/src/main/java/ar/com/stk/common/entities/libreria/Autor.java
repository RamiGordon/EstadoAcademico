package ar.com.stk.common.entities.libreria;

import org.hibernate.envers.Audited;

import ar.com.osde.framework.entities.FrameworkEntity;

/**
 * Representa un Autor.
 * @author Francisco Andrade
 *
 */
@Audited
public class Autor implements FrameworkEntity {

	private static final long serialVersionUID = -7752151846535575091L;
	/**
	 * Identificador del Autor.
	 */
	private long id;
	/**
	 * Nombre del Autor.
	 */
	private String nombre;
	/**
	 * Apellido del Autor.
	 */
	private String apellido;
	/**
	 * Indica si el Autor ha sido eliminado.
	 */
	private Boolean baja;
	
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
	
	/**
	 * @return the apellido
	 */
	public String getApellido() {
		return apellido;
	}
	
	/**
	 * @param apellido the apellido to set
	 */
	public void setApellido(String apellido) {
		this.apellido = apellido;
	}
	
	/**
	 * @return the baja
	 */
	public Boolean getBaja() {
		return baja;
	}
	
	/**
	 * @param baja the baja to set
	 */
	public void setBaja(Boolean baja) {
		this.baja = baja;
	}
}