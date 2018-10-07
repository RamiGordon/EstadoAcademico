package ar.com.stk.common.hospital;

import org.hibernate.envers.Audited;

import ar.com.osde.framework.entities.FrameworkEntity;
//import javax.persistence.Entity;
//import javax.persistence.Table;
//@Entity
//@Table(name="dbo.Socio") 
@Audited
public class Socio implements FrameworkEntity{
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
	public Socio(int id, String nombre, String apellido) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.apellido = apellido;
	}
	public Socio() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
