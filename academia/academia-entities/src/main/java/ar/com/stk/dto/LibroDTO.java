package ar.com.stk.dto;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class LibroDTO implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1751998120616833444L;
	
	/**
	 * Identificador de un Libro.
	 */
	private long id;
	/**
	 * Nombre del Libro.
	 */
	private String nombre;
	/**
	 * Descripcion del Libro.
	 */
	private String descripcion;
	/**
	 * ISBN del Libro.
	 */
	private String isbn;
	/**
	 * Fecha de Edicion del Libro.
	 */
	private Date fechaEdicion;
	/**
	 * Precio del Libro.
	 */
	private Double precio;
	/**
	 * Stock minimo del Libro.
	 */
	private Integer stockMinimo;
	/**
	 * Categoria del Libro.
	 */
	private CategoriaDTO categoria;
	/**
	 * Autor/es del Libro.
	 */
	private List<AutorDTO> autores;
	
	
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
	 * @return the isbn
	 */
	public String getIsbn() {
		return isbn;
	}
	/**
	 * @param isbn the isbn to set
	 */
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	/**
	 * @return the fechaEdicion
	 */
	public Date getFechaEdicion() {
		return fechaEdicion;
	}
	/**
	 * @param fechaEdicion the fechaEdicion to set
	 */
	public void setFechaEdicion(Date fechaEdicion) {
		this.fechaEdicion = fechaEdicion;
	}
	/**
	 * @return the precio
	 */
	public Double getPrecio() {
		return precio;
	}
	/**
	 * @param precio the precio to set
	 */
	public void setPrecio(Double precio) {
		this.precio = precio;
	}
	/**
	 * @return the stockMinimo
	 */
	public Integer getStockMinimo() {
		return stockMinimo;
	}
	/**
	 * @param stockMinimo the stockMinimo to set
	 */
	public void setStockMinimo(Integer stockMinimo) {
		this.stockMinimo = stockMinimo;
	}
	/**
	 * @return the categoria
	 */
	public CategoriaDTO getCategoria() {
		return categoria;
	}
	/**
	 * @param categoria the categoria to set
	 */
	public void setCategoria(CategoriaDTO categoria) {
		this.categoria = categoria;
	}
	/**
	 * @return the autores
	 */
	public List<AutorDTO> getAutores() {
		return autores;
	}
	/**
	 * @param autores the autores to set
	 */
	public void setAutores(List<AutorDTO> autores) {
		this.autores = autores;
	}
	
}
