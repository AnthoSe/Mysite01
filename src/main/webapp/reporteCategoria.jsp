<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.productos.negocio.*" %>

<%
    String categoriaSeleccionada = request.getParameter("cmbCategoria"); // Se corrige el nombre del parámetro
    int idCategoria = (categoriaSeleccionada != null && !categoriaSeleccionada.isEmpty()) ? Integer.parseInt(categoriaSeleccionada) : 0;

    Categoria categoria = new Categoria();
    String nombreCategoria = categoria.obtenerNombreCategoria(idCategoria);

    Producto producto = new Producto();
    String resultadoCategoria = producto.buscarProductoCategoria(idCategoria);
%>
 
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Reporte de Categoría</title>
    <link href="css/reporteCategoria.css" rel="stylesheet" type="text/css">
</head>
<body>
    <main>
        <header>
            <h1>Calzado360 <img src="icons/zapato.png" alt="Icono de Zapato" width="32" height="32" /></h1>
        </header>
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
        <div class="agrupar">
            <section>
                <h3>Reporte de Categoría</h3>
                <p>Nombre de la Categoría: <%= nombreCategoria %></p>
                <%= resultadoCategoria %>
            </section>
            <aside>
                <div class="informacion">
                    <h3>Más Información</h3>
                    <p>Descubre nuestras últimas colecciones y tendencias. ¡Te garantizamos estilo y calidad!</p>
                </div>
            </aside>
        </div>
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

