<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.productos.seguridad.*" %>
<%@ page import="com.productos.negocio.Tarjeta" %>
<%@ page import="com.productos.negocio.Producto" %>
<%@ page import="com.productos.negocio.Venta" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>

<%
    // Obtener datos del usuario y la venta
    Usuario usuario = (Usuario) session.getAttribute("usuario");
    Cliente cliente = (Cliente) session.getAttribute("cliente");
    Tarjeta tarjeta = (Tarjeta) session.getAttribute("tarjeta");
    Venta venta = (Venta) session.getAttribute("venta");

    // Obtener productos de la venta (puedes tener una lista de productos en la venta)
    List<Producto> productos = new ArrayList<>();
    productos.add(new Producto(1, "Zapato 1", 50.0));
    productos.add(new Producto(2, "Zapato 2", 30.0));

    // Calcular el monto total de la venta
    double montoTotal = venta.getMonto();

    // Limpiar la sesión para evitar información redundante
    session.removeAttribute("venta");
%>
 
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/confirmacionCompra.css">
    <title>Confirmación de Compra</title>
</head>
<body>
    <header>
        <h1> Calzado360 <img src="icons/zapato.png" alt="Icono de Zapato" width="32" height="32" /> </h1>
        <h4>Bienvenido <%= usuario.getNombre() %></h4>
    </header>

    <div class="container">
        <h2>Confirmación de Compra</h2>

        <div class="detalle-compra">
            <h3>Detalles de la Compra</h3>
            <table>
                <tr>
                    <th>Producto</th>
                    <th>Precio Unitario</th>
                </tr>
                <% for (Producto producto : productos) { %>
                    <tr>
                        <td><%= producto.getNombre() %></td>
                        <td>$ <%= producto.getPrecio() %></td>
                    </tr>
                <% } %>
                <tr>
                    <td colspan="2" class="total">Total: $ <%= montoTotal %></td>
                </tr>
            </table>
        </div>

        <div class="informacion-usuario">
            <h3>Información del Cliente</h3>
            <p>Nombre: <%= cliente.getNombre() %></p>
            <p>Correo: <%= cliente.getCorreo() %></p>
        </div>

        <div class="informacion-tarjeta">
            <h3>Información de la Tarjeta</h3>
            <p>Número: <%= tarjeta.getNumero() %></p>
            <p>Titular: <%= tarjeta.getTitular() %></p>
            <p>Fecha de Vencimiento: <%= tarjeta.getFechaVencimiento() %></p>
        </div>

        <p class="mensaje-confirmacion">¡Compra realizada con éxito!</p>

        <footer>
            <ul>
                <li><a href="https://www.facebook.com"><img src="icons/facebook.png" alt="Facebook"></a></li>
                <li><a href="https://www.instagram.com"><img src="icons/instagram.png" alt="Instagram"></a></li>
                <li><a href="https://twitter.com"><img src="icons/gorjeo.png" alt="Twitter"></a></li>
            </ul>
        </footer>
    </div>
</body>
</html>
