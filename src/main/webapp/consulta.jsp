<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Calzado360</title>
    <link href="css/consulta.css" rel="stylesheet" type="text/css">
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
        <div id="content">
            <section>
                <article>
                    <h2>Consulta de Productos</h2>
                    <table>
                        <tr>
                            <th>ID</th>
                            <th>Producto</th>
                            <th>Cantidad</th>
                            <th>Precio</th>
                        </tr>
                        <!-- Aquí puedes agregar tus datos de productos -->
                        <tr>
                            <td>1</td>
                            <td>Producto 1</td>
                            <td>10</td>
                            <td>$20.00</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Producto 2</td>
                            <td>5</td>
                            <td>$15.00</td>
                        </tr>
                        <!-- Agrega más filas según sea necesario -->
                    </table>
                </article>
            </section>
            <aside>
                <h2>Conocer más detalles sobre los desarrolladores</h2>
                <!-- Agrega información sobre los desarrolladores aquí -->
            </aside>
        </div>
        <footer>
            <ul>
                <li><a href="https://www.facebook.com"><img src="icons/facebook.png" alt="Facebook"></a></li>
                <li><a href="https://www.instagram.com"><img src="icons/instagram.png" alt="Instagram"></a></li>
                <li><a href="https://twitter.com"><img src="icons/gorjeo.png" alt="Twitter"></a></li>
                <!-- Agrega enlaces a tus redes sociales con los iconos correspondientes -->
            </ul>
        </footer>
    </main>
</body>
</html>
