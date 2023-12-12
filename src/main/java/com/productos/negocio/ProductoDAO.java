package com.productos.negocio;

import com.productos.datos.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductoDAO {

    public List<Producto> obtenerListaProductos() {
        List<Producto> productos = new ArrayList<>();
        
        try {
            Conexion conexion = new Conexion();
            Connection con = conexion.crearConexion();

            String sql = "SELECT * FROM tb_producto";
            PreparedStatement stmt = con.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                Producto producto = new Producto(
                    rs.getInt("id_pr"),
                    rs.getString("nombre_pr"),
                    rs.getDouble("precio_pr")
                );
                producto.setCantidad(rs.getInt("cantidad_pr"));
                producto.setFoto(rs.getByte("foto_pr"));

                productos.add(producto);
            }

            // Cerrar recursos
            rs.close();
            stmt.close();
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return productos;
    }
}
