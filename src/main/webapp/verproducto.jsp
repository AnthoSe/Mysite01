<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.productos.negocio.Producto, com.productos.negocio.ProductoDAO" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Ver Producto - Calzado360</title>
    <link rel="stylesheet" type="text/css" href="css/verProductoEstilos.css">
</head>
<body>
    <main>
        <h1>
				Calzado360 <img src="icons/zapato.png" alt="Icono de Zapato"
					width="32" height="32" />
			</h1>
        <nav>
			<div class="nav-left">
				<a class="active" href="index.jsp">Home</a>
				<a href="verproducto.jsp">Ver Productos</a> 
				<a href="categoria.jsp">Buscar Por Categoría</a> 
				<a href="RegistrarProducto.jsp">Registrar Productos</a>
			</div>
			<div class="nav-right">
				<a href="#"><img src="icons/corazon.png" alt="Icono de Favoritos" width="25" height="25" /></a>
			    <a href="login.jsp"><img src="icons/usuario.png" alt="Icono de Usuario" width="25" height="25" /></a>
			</div>
		</nav>
        <section class="producto">
            <% 
                ProductoDAO productoDAO = new ProductoDAO();
                List<Producto> productos = productoDAO.obtenerListaProductos();
                for (Producto producto : productos) {
            %>
            <img src="imagenes/producto.jpg" alt="<%= producto.getNombre() %>">
            <h3><%= producto.getNombre() %></h3>
            <p><%= "Precio: $" + producto.getPrecio() %></p>
            <a href="#">Agregar al carrito</a>
            <% } %>
        </section>
        <footer>
            <ul>
                <li><a href="https://www.facebook.com"><img src="icons/facebook.png" alt="Facebook"></a></li>
                <li><a href="https://www.instagram.com"><img src="icons/instagram.png" alt="Instagram"></a></li>
                <li><a href="https://twitter.com"><img src="icons/gorjeo.png" alt="Twitter"></a></li>
            </ul>
        </footer>
    </main>
</body>
</html>

