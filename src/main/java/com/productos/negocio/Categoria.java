package com.productos.negocio;

import com.productos.datos.Conexion;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Categoria {
    private int id;
    private String nombre;

    public Categoria(int id, String nombre) {
        this.id = id;
        this.nombre = nombre;
    }

    public Categoria() {
        // Constructor sin argumentos
        // Puedes dejar este constructor vacío o inicializar valores predeterminados si es necesario
    }

    public String mostrarCategoria() {
        StringBuilder combo = new StringBuilder("<select name='cmbCategoria'>");
        String sql = "SELECT * FROM tb_categoria";
        ResultSet rs = null;
        Conexion con = new Conexion();

        try {
            rs = con.Consulta(sql);
            while (rs.next()) {
                combo.append("<option value='")
                     .append(rs.getInt(1))
                     .append("'>")
                     .append(rs.getString(2))
                     .append("</option>");
            }
            combo.append("</select>");
        } catch (SQLException e) {
            System.out.print(e.getMessage());
        }

        return combo.toString();
    }

    public String obtenerNombreCategoria(int idCategoria) {
        String nombreCategoria = "";
        String sql = "SELECT nombre FROM tb_categoria WHERE id=" + idCategoria;
        ResultSet rs = null;
        Conexion con = new Conexion();

        try {
            rs = con.Consulta(sql);
            if (rs.next()) {
                nombreCategoria = rs.getString("nombre");
            }
        } catch (SQLException e) {
            System.out.print(e.getMessage());
        }

        return nombreCategoria;
    }
    
    // Puedes agregar otros métodos relacionados con la lógica de negocio de la categoría
}
