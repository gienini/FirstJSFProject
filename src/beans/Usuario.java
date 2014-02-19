package beans;


public class Usuario {

	private String nombre;
	private String DNI;
	private String color;

	public String getNombre() {
		return nombre;
	}

	public Usuario() {
		super();
	}

	public Usuario(String nombre, String dNI, String color) {
		super();
		this.nombre = nombre;
		DNI = dNI;
		this.color = color;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getDNI() {
		return DNI;
	}

	public void setDNI(String dNI) {
		DNI = dNI;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

}
