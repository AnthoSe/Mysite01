<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Calzado360</title>
    <link href="css/registro.css" rel="stylesheet" type="text/css">
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
        <section class="formulario">
            <h2>Datos Personales</h2>
            <form action="respuesta.jsp" method="post">
                <label for="nombre">Nombre:</label>
                <input type="text" name="txtnombre" required><br><br>

                <label for="cedula">Número de Cédula:</label>
                <input type="text" name="cedula" maxlength="10" required><br><br>

                <label for="cmbECivil">Estado Civil:</label>
                <select name="cmbECivil">
                    <option value="1">Soltero</option>
                    <option value="2">Casado</option>
                    <option value="3">Divorciado</option>
                    <option value="4">Viudo</option>
                </select><br><br>

                <label for="correo">Correo Electrónico:</label>
                <input type="email" name="correo" required><br><br>

                <label for="clave">Clave:</label>
                <input type="password" name="clave" minlength="6" required><br><br>

                <button type="submit">Registrar Producto</button>
                <button type="reset">Limpiar</button>
            </form>
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


