<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="true" import="com.productos.seguridad.*, java.io.*, java.util.*" %>
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
%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Menú - Calzado360</title>
    <link rel="stylesheet" href="css/menu.css">
</head>
<body>
    <header>
        <h1> Calzado360 <img src="icons/zapato.png" alt="Icono de Zapato" width="32" height="32" /> </h1>
        <h4>Bienvenido <%= usuario %></h4>
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
	<div class="menu-container">
            <%
                Pagina pag = new Pagina();
                String menu = pag.mostrarMenu(perfil);
                out.print(menu);
            %>
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
<%
    }
%>
