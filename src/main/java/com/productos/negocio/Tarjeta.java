package com.productos.negocio;

import com.productos.datos.Conexion;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Tarjeta {
    private int idTarjeta;
    private int idVenta;  // Agregar este atributo
    private String numero;
    private String titular;
    private String fechaVencimiento;
    private int cvv;

    // Constructor y otros métodos...

    public Tarjeta obtenerTarjetaPorNumero(String numero) {
        Conexion con = new Conexion();
        ResultSet rs = null;
        Tarjeta tarjeta = new Tarjeta();

        try {
            // Consulta para obtener la información de la tarjeta por su número
            String consulta = "SELECT * FROM tb_tarjeta WHERE numero_tar = ?";
            PreparedStatement ps = con.crearConexion().prepareStatement(consulta);
            ps.setString(1, numero);
            rs = ps.executeQuery();

            // Verificar si se encontró la tarjeta
            if (rs.next()) {
                // Establecer la información de la tarjeta
                tarjeta.setIdTarjeta(rs.getInt("id_tar"));
                tarjeta.setNumero(rs.getString("numero_tar"));
                tarjeta.setTitular(rs.getString("titular_tar"));
                tarjeta.setFechaVencimiento(rs.getString("fechaVencimiento_tar"));
                tarjeta.setCvv(rs.getInt("cvv_tar"));
            }
        } catch (SQLException e) {
            System.out.print(e.getMessage());
        } finally {
            con.CerrarConexion();
        }

        return tarjeta;
    }
    public boolean guardarTarjeta() {
        Conexion con = new Conexion();
        PreparedStatement pstmt = null;

        try {
            String sql = "INSERT INTO tb_tarjeta (numero_tar, titular_tar, fechaVencimiento_tar, cvv_tar, id_venta) VALUES (?, ?, ?, ?, ?)";
            pstmt = con.crearConexion().prepareStatement(sql);

            pstmt.setString(1, numero);
            pstmt.setString(2, titular);
            pstmt.setString(3, fechaVencimiento);
            pstmt.setInt(4, cvv);
            pstmt.setInt(5, idVenta);  // Utilizar el idVenta almacenado en la instancia

            int filasAfectadas = pstmt.executeUpdate();
            return filasAfectadas > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("Error al guardar la tarjeta: " + e.getMessage());
            return false;
        } finally {
            con.CerrarStatement(pstmt);
            con.CerrarConexion();
        }
    }


    // Verifica si el cliente tiene una tarjeta registrada
    public boolean tieneTarjetaRegistrada(int idCliente) {
        Conexion con = new Conexion();
        ResultSet rs = null;

        try {
            // Consulta para verificar si el cliente tiene una tarjeta registrada
            String consulta = "SELECT COUNT(*) FROM tb_tarjeta WHERE id_cliente = ?";
            PreparedStatement ps = con.crearConexion().prepareStatement(consulta);
            ps.setInt(1, idCliente);
            rs = ps.executeQuery();

            // Verificar si hay alguna tarjeta registrada para el cliente
            if (rs.next()) {
                int count = rs.getInt(1);
                return count > 0;  // Devuelve true si hay al menos una tarjeta registrada
            }
        } catch (SQLException e) {
            System.out.print(e.getMessage());
        } finally {
            con.CerrarConexion();
        }

        return false;  // Devuelve false si hay algún problema o no hay tarjetas registradas
    }

    
	public int getIdTarjeta() {
		return idTarjeta;
	}

	public void setIdTarjeta(int idTarjeta) {
		this.idTarjeta = idTarjeta;
	}

	public String getNumero() {
		return numero;
	}

	public void setNumero(String numero) {
		this.numero = numero;
	}

	public String getTitular() {
		return titular;
	}

	public void setTitular(String titular) {
		this.titular = titular;
	}

	public String getFechaVencimiento() {
		return fechaVencimiento;
	}

	public void setFechaVencimiento(String fechaVencimiento) {
		this.fechaVencimiento = fechaVencimiento;
	}

	public int getCvv() {
		return cvv;
	}

	public void setCvv(int cvv) {
		this.cvv = cvv;
	}

	public int getIdVenta() {
		return idVenta;
	}

	public void setIdVenta(int idVenta) {
		this.idVenta = idVenta;
	}

    // Resto de los métodos getter y setter...
}
