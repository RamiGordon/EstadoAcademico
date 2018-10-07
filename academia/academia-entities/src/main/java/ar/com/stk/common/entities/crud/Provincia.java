package ar.com.stk.common.entities.crud;

import java.util.Date;

import ar.com.osde.framework.crud.common.model.LogicalItem;
import ar.com.osde.framework.entities.FrameworkEntity;

/**
 * Representa una Provincia.
 * @author Francisco Andrade
 *
 */
public class Provincia implements LogicalItem, FrameworkEntity {

	private static final long serialVersionUID = 1714558655540190433L;
	/**
	 * Identificador de la Provincia.
	 */
	private long id;
	/**
	 * Codigo de la Provicnia.
	 */
	private long codigo;
	/**
	 * Descripcion de la Provincia.
	 */
	private String descripcion;
	/**
	 * Nombre de la capital de la Provincia.
	 */
	private String nombreCapital;
	/**
	 * Pais al que pertenece la Provincia.
	 */
	private Pais pais;
	/**
	 * Continente al que pertenece la Provincia.
	 */
	private Continente continente;
	/**
	 * Estado que indica si una provincia est� dada de baja o activa.
	 */
	private String estado;
	/**
	 * Usuario que realiza la eliminacion de una Provincia.
	 */
	private String usuario;
	/**
	 * Fecha en que se realizo la baja de la Provincia.
	 */
	private Date fecha;
	
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
	 * @return the codigo
	 */
	public long getCodigo() {
		return codigo;
	}
	
	/**
	 * @param codigo the codigo to set
	 */
	public void setCodigo(long codigo) {
		this.codigo = codigo;
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
	
	/**
	 * @return the nombreCapital
	 */
	public String getNombreCapital() {
		return nombreCapital;
	}
	
	/**
	 * @param nombreCapital the nombreCapital to set
	 */
	public void setNombreCapital(String nombreCapital) {
		this.nombreCapital = nombreCapital;
	}
	
	/**
	 * @return the pais
	 */
	public Pais getPais() {
		return pais;
	}
	
	/**
	 * @param pais the pais to set
	 */
	public void setPais(Pais pais) {
		this.pais = pais;
	}
	
	/**
	 * @return the continente
	 */
	public Continente getContinente() {
		return continente;
	}
	
	/**
	 * @param continente the continente to set
	 */
	public void setContinente(Continente continente) {
		this.continente = continente;
	}
	
	/**
	 * @return the estado
	 */
	public String getEstado() {
		return estado;
	}
	
	/**
	 * @param estado the estado to set
	 */
	public void setEstado(String estado) {
		this.estado = estado;
	}
	
	/**
	 * @return the usuario
	 */
	public String getUsuario() {
		return usuario;
	}
	
	/**
	 * @param usuario the usuario to set
	 */
	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}
	
	/**
	 * @return the fecha
	 */
	public Date getFecha() {
		return fecha;
	}
	
	/**
	 * @param fecha the fecha to set
	 */
	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}
}