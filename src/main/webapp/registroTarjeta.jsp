<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.productos.negocio.*, com.productos.seguridad.*, com.productos.datos.*" %>
<%
    String usuario;
    HttpSession sesion = request.getSession();

    if (sesion.getAttribute("usuario") == null) {
        // Si no hay sesión, redirige a login.jsp con un mensaje de error
%>
<jsp:forward page="login.jsp">
    <jsp:param name="error" value="Debe registrarse en el sistema."/>
</jsp:forward>
<%
    } else {
        usuario = (String) sesion.getAttribute("usuario");
        int perfil = (Integer) sesion.getAttribute("perfil");
        Cliente cliente = (Cliente) sesion.getAttribute("cliente");
%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/registroTarjeta.css">
    <title>Registro de Tarjeta</title>
</head>
<body>
    <header>
        <h1> Calzado360 <img src="icons/zapato.png" alt="Icono de Zapato" width="32" height="32" /> </h1>
        <h4>Bienvenido <%= usuario %></h4>
    </header>
    <div class="container">
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
 
        <main>
            <%-- Verificar si el cliente ya tiene una tarjeta registrada --%>
            <%
                int idCliente = (cliente != null) ? cliente.getIdCliente() : 0;

                Tarjeta tarjeta = new Tarjeta(); 

                if (!tarjeta.tieneTarjetaRegistrada(idCliente)) {
            %>
            <form action="procesarRegistroTarjeta.jsp" method="post">
                <label for="numeroTarjeta">Número de Tarjeta:</label>
                <input type="text" id="numeroTarjeta" name="numeroTarjeta" required maxlength="16">

                <label for="titularTarjeta">Titular:</label>
                <input type="text" id="titularTarjeta" name="titularTarjeta" required>

                <label for="fechaVencimiento">Fecha de Vencimiento:</label>
                <input type="text" id="fechaVencimiento" name="fechaVencimiento" placeholder="MM/YY" required>

                <label for="cvv">CVV:</label>
                <input type="text" id="cvv" name="cvv" required maxlength="3">

                <button type="submit" style="background-color: #4CAF50; color: white;">Registrar Tarjeta</button>
            </form>
            <%
                } else {
            %>
            <p>Ya tienes una tarjeta registrada.</p>
            <%
                }
            %>
        </main>

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
<%
    }
%>
