package com.productos.negocio;

import com.productos.datos.Conexion;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Producto {
    private int id;
    private String nombre;
    private int cantidad;
    private double precio;
    private byte foto;
    public Producto() {
    	
    }
    // Constructor y otros métodos...
    public Producto(int id, String nombre, double precio) {
        this.id = id;
        this.nombre = nombre;
        this.precio = precio;
        // Puedes inicializar otros campos si es necesario
    }


    public String buscarProductoCategoria(int cat) {
        String sentencia = "SELECT nombre_pr, precio_pr FROM tb_producto WHERE id_cat=" + cat;
        Conexion con = new Conexion();
        ResultSet rs = null;
        String resultado = "<table border=1><th>Producto</th><th>Precio</th>";
        try {
            rs = con.Consulta(sentencia);
            while (rs.next()) {
                resultado += "<tr><td>" + rs.getString(1) + "</td>"
                        + "<td>" + rs.getDouble(2) + "</td></tr>";
            }
            resultado += "</table>";
        } catch (SQLException e) {
            System.out.print(e.getMessage());
        }
        return resultado;
    }
    public String mostrarProducto() {
        StringBuilder combo = new StringBuilder("<select name='cmbProducto'>");
        String sql = "SELECT id_pr, nombre_pr FROM tb_producto"; // Modificado para seleccionar el ID y el nombre
        ResultSet rs = null;
        Conexion con = new Conexion();

        try {
            rs = con.Consulta(sql);
            while (rs.next()) {
                combo.append("<option value='")
                     .append(rs.getInt(1))
                     .append("'>")
                     .append(rs.getString(2)) // Cambiado para mostrar el nombre
                     .append("</option>");
            }
            combo.append("</select>");
        } catch (SQLException e) {
            System.out.print(e.getMessage());
        }

        return combo.toString();
    }
    
    public Producto obtenerProducto() {
        Conexion con = new Conexion();
        ResultSet rs = null;
        Producto producto = new Producto(cantidad, nombre, precio);

        try {
            // Consulta para obtener la información del producto por su ID
            String consulta = "SELECT * FROM tb_producto WHERE id_pr = " + this.id;
            rs = con.Consulta(consulta);

            // Verificar si se encontró el producto
            if (rs.next()) {
                // Establecer la información del producto
                producto.setId(rs.getInt("id_pr"));
                producto.setNombre(rs.getString("nombre_pr"));
                producto.setCantidad(rs.getInt("cantidad_pr"));
                producto.setPrecio(rs.getDouble("precio_pr"));
                producto.setFoto(rs.getByte("foto_pr"));
            }
        } catch (SQLException e) {
            System.out.print(e.getMessage());
        } finally {
            con.crearConexion();
        }

        return producto;
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    // Getter y Setter para nombre
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    // Getter y Setter para cantidad
    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    // Getter y Setter para precio
    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    // Getter y Setter para foto
    public byte getFoto() {
        return foto;
    }

    public void setFoto(byte foto) {
        this.foto = foto;
    }
}

