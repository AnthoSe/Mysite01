package com.productos.seguridad;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.productos.datos.Conexion;

public class Usuario {
    private int id_per;
    private int Estado;
    private String nombre;
    private String cedula;
    private String correo;
    private String clave;

    public Usuario() {
        // Constructor vacío
    }

    public Usuario(int id_per, int Estado, String nombre, String cedula, String correo, String clave) {
        this.id_per = id_per;
        this.Estado = Estado;
        this.nombre = nombre;
        this.cedula = cedula;
        this.correo = correo;
        this.clave = clave;
    }

	public String ingresarCliente() {
		String result = "";

		Conexion con = new Conexion();
		PreparedStatement pr = null;
		String sql = "INSERT INTO tb_usuario (id_per, id_est, nombre_us," + "cedula_us,correo_us,clave_us) "
				+ "VALUES(?,?,?,?,?,?)";
		try {
			pr = con.crearConexion().prepareStatement(sql);
			pr.setInt(1, 2);
			pr.setInt(2, this.getEstado());
			pr.setString(3, this.getNombre());
			pr.setString(4, this.getCedula());
			pr.setString(5, this.getCorreo());
			pr.setString(6, this.getClave());

			if (pr.executeUpdate() == 1) {
				result = "Insercion correcta";
			} else {
				result = "Error en insercion";
			}
		} catch (Exception ex) {
			result = ex.getMessage();
			System.out.print(result);
		} finally {
			try {
				pr.close();
				con.crearConexion().close();
			} catch (Exception ex) {
				System.out.print(ex.getMessage());
			}
		}
		return result;
	}

	// En la clase Usuario.java
	
	public boolean verificarInicioSesion(String correo, String clave) {
	    Conexion con = new Conexion();
	    PreparedStatement pr = null;
	    ResultSet rs = null;
	    boolean resultado = false;

	    try {
	        String sql = "SELECT nombre_us, id_per FROM tb_usuario WHERE correo_us = ? AND clave_us = ?";
	        pr = con.crearConexion().prepareStatement(sql);
	        pr.setString(1, correo);
	        pr.setString(2, clave);
	        rs = pr.executeQuery();

	        if (rs.next()) {
	            // Si hay resultados, el inicio de sesión es exitoso
	            this.setNombre(rs.getString("nombre_us"));
	            this.setId_per(rs.getInt("id_per"));
	            resultado = true;
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        try {
	            if (rs != null) {
	                rs.close();
	            }
	            if (pr != null) {
	                pr.close();
	            }
	            con.crearConexion().close();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }

	    return resultado;
	}

    // Getters y setters...

    public int getEstado() {
        return Estado;
    }

    public void setEstado(int Estado) {
        this.Estado = Estado;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCedula() {
        return cedula;
    }

    public void setCedula(String cedula) {
        this.cedula = cedula;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public int getId_per() {
        return id_per;
    }

    public void setId_per(int id_per) {
        this.id_per = id_per;
    }
}
