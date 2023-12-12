package com.productos.negocio;

import com.productos.datos.Conexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Venta {
    private int idVenta;
    private int idCliente;
    private int idProducto;
    private int idTarjeta;
    private double monto;

    // Constructor y otros métodos...
    public Venta() {
    }

    public Venta(int idCliente, int idProducto, int idTarjeta, double monto) {
        this.idCliente = idCliente;
        this.idProducto = idProducto;
        this.idTarjeta = idTarjeta;
        this.monto = monto;
    }
    public boolean realizarVenta() {
        Conexion con = new Conexion();
        PreparedStatement ps = null;

        try {
            // Consulta para realizar la venta
            String consulta = "INSERT INTO tb_venta (id_cl, id_pr, id_tar, monto_vt) VALUES (?, ?, ?, ?)";
            ps = con.crearConexion().prepareStatement(consulta);
            ps.setInt(1, this.idCliente);
            ps.setInt(2, this.idProducto);
            ps.setInt(3, this.idTarjeta);
            ps.setDouble(4, this.monto);

            // Ejecutar la consulta
            int filasAfectadas = ps.executeUpdate();

            // Verificar si la venta se realizó con éxito
            return filasAfectadas > 0;
        } catch (SQLException e) {
            System.out.print(e.getMessage());
            return false;
        } finally {
            con.CerrarConexion();
        }
    } 
    
    public int guardarVenta() {
        Conexion con = new Conexion();
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            String sql = "INSERT INTO tb_venta (id_cliente, id_producto, monto) VALUES (?, ?, ?)";
            pstmt = con.crearConexion().prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);

            pstmt.setInt(1, idCliente);
            pstmt.setInt(2, idProducto);
            pstmt.setDouble(3, monto);

            int filasAfectadas = pstmt.executeUpdate();

            if (filasAfectadas > 0) {
                // Obtener el ID generado para la venta
                rs = pstmt.getGeneratedKeys();
                if (rs.next()) {
                    idVenta = rs.getInt(1);
                }
            }

            return idVenta;
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("Error al guardar la venta: " + e.getMessage());
            return -1;
        } finally {
            con.CerrarResultSet(rs);
            con.CerrarStatement(pstmt);
            con.CerrarConexion();
        }
    }



	public int getIdVenta() {
		return idVenta;
	}

	public void setIdVenta(int idVenta) {
		this.idVenta = idVenta;
	}

	public int getIdCliente() {
		return idCliente;
	}

	public void setIdCliente(int idCliente) {
		this.idCliente = idCliente;
	}

	public int getIdProducto() {
		return idProducto;
	}

	public void setIdProducto(int idProducto) {
		this.idProducto = idProducto;
	}

	public int getIdTarjeta() {
		return idTarjeta;
	}

	public void setIdTarjeta(int idTarjeta) {
		this.idTarjeta = idTarjeta;
	}

	public double getMonto() {
		return monto;
	}

	public void setMonto(double monto) {
		this.monto = monto;
	}

}
