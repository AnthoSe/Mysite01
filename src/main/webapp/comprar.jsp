<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.productos.negocio.*" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Comprar - Calzado360</title>
    <link rel="stylesheet" href="css/comprar.css"> <!-- Asegúrate de ajustar la ruta del CSS -->
</head>
<body>
    <header>
        <h1> Calzado360 <img src="icons/zapato.png" alt="Icono de Zapato" width="32" height="32" /> </h1>
        <!-- Puedes incluir un mensaje de bienvenida o información adicional aquí -->
    </header>
    
    <nav>
        <a class="active" href="index.jsp">Home</a>
        <a href="verproducto.jsp">Ver Productos</a> 
        <a href="categoria.jsp">Buscar Por Categoría</a> 
        <a href="RegistrarProducto.jsp">Registrar Productos</a>
           
        <div class="perfil-options">
            <img src="icons/usuario.png" alt="Icono de Perfil" width="32" height="32">
            <div class="options" id="optionsMenu">
                <a href="#">Configuración</a>
                <a href="cerrarSesion.jsp">Cerrar Sesión</a>
            </div>
        </div>
    </nav>

    <div class="comprar-container">
        <h2>Compra de Productos</h2>
        
        <!-- Formulario mejorado -->
        <form action="procesarCompra.jsp" method="post">
            <div class="form-group">
                <label for="producto">Selecciona un producto:</label>
                <% 
                    Producto producto = new Producto(0, "", 0.0); // Puedes ajustar los valores por defecto según sea necesario
                    String opcionesProducto = producto.mostrarProducto();
                    out.println(opcionesProducto);
                %>
            </div>
            
            <div class="form-group">
                <label for="cantidad">Cantidad:</label>
                <input type="number" id="cantidad" name="cantidad" min="1" required>
            </div>
            
            <button class="comprar-btn" type="submit">Realizar Compra</button>
        </form>
        
        <!-- Puedes agregar más contenido según tus necesidades -->
    </div>

    <footer>
        <ul>
            <li><a href="https://www.facebook.com"><img src="icons/facebook.png" alt="Facebook"></a></li>
            <li><a href="https://www.instagram.com"><img src="icons/instagram.png" alt="Instagram"></a></li>
            <li><a href="https://twitter.com"><img src="icons/gorjeo.png" alt="Twitter"></a></li>
        </ul>
    </footer>
</body>
</html>
