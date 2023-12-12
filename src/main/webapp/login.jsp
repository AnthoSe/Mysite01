<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - EnergySUS</title>
    <link rel="stylesheet" href="css/login.css">
</head>
<body>
    <header>
        <h1>
            Calzado360 <img src="icons/zapato.png" alt="Icono de Zapato" width="32" height="32" />
        </h1>
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
    <section class="login-section">
        <div class="login-box">
            <h2>Login</h2>
            <form action="verificarLogin.jsp" method="post"> <!-- Cambiado a verificarLogin.jsp -->
                <div class="user-box">
                    <input type="text" name="email" required="">
                    <label>Email</label>
                </div>
                <div class="user-box">
                    <input type="password" name="password" required="">
                    <label>Password</label>
                </div>
                <input type="submit" value="Sign In">
                
                <div class="links">
                    <a href="#">Olvidaste tu contraseña?</a>
                    <%-- Muestra el mensaje de error si existe --%>
                    <p style="color: red;">
                        <%= request.getParameter("error") %>
                    </p>
                    <p>No tienes una cuenta? <a href="registro.jsp">Regístrate aquí</a></p>
                </div>
            </form>
        </div>
    </section>
    <footer class="footer">
        <ul>
            <li><a href="https://www.facebook.com"><img src="icons/facebook.png" alt="Facebook"></a></li>
            <li><a href="https://www.instagram.com"><img src="icons/instagram.png" alt="Instagram"></a></li>
            <li><a href="https://twitter.com"><img src="icons/gorjeo.png" alt="Twitter"></a></li>
        </ul>
    </footer>
</body>
</html>

