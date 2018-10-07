package ar.com.stk.dto;

import java.io.Serializable;

public class SocioDTO implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
    private int id;
	private String nombre;
	private String apellido;
	//private int dni;
	//private Date fecha_nac;
	//private String direccion;
	//private int tel;
	//private String mail;
	//private int sexo;
	//private String estado_civil;
	//private int cant_hof;
	//private int plan;   //entero id plan
	//private int nro_afiliado;    
	//public int getId() {
	//	return id;
	//} 
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellido() {
		return apellido;
	}
	public void setApellido(String apellido) {
		this.apellido = apellido;
	}
	public SocioDTO(int id, String nombre, String apellido) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.apellido = apellido;
	}
	public SocioDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
