package com.productos.seguridad;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.productos.datos.Conexion;

public class Cliente {
    private int idCliente;
    private String nombre;
    private String correo;


    public static Cliente obtenerClientePorCorreo(String correo) {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Cliente cliente = null;
 
        try {
            con = Conexion.obtenerInstancia().crearConexion();
            String sql = "SELECT id_cl, nombre_cl, correo_cl FROM tb_cliente WHERE correo_cl = ?";
            ps = con.prepareStatement(sql);
            ps.setString(1, correo);
            rs = ps.executeQuery();

            if (rs.next()) {
                cliente = new Cliente();
                cliente.setIdCliente(rs.getInt("id_cl"));
                cliente.setNombre(rs.getString("nombre_cl"));
                cliente.setCorreo(rs.getString("correo_cl"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Conexion.obtenerInstancia().CerrarConexion();
        }

        return cliente;
    }

	public int getIdCliente() {
		return idCliente;
	}

	public void setIdCliente(int idCliente) {
		this.idCliente = idCliente;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getCorreo() {
		return correo;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}
}
