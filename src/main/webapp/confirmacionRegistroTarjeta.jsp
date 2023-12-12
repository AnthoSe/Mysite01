<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    <link rel="stylesheet" href="css/confirmacionRegistroTarjeta.css"> <!-- Ajusta la ruta del CSS según tu estructura de carpetas -->
    <title>Confirmación de Registro de Tarjeta</title>
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

    <div class="confirmacion-container">
        <h2>Confirmación de Registro de Tarjeta</h2>
        <p>Tu tarjeta ha sido registrada exitosamente. ¡Gracias por confiar en nosotros!</p>
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
<%
    }
%>