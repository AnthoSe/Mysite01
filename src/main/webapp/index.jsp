<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Calzado360</title>
<link href="css/estilos.css" rel="stylesheet" type="text/css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
	<main>
		<header>
			<h1>
				Calzado360 <img src="icons/zapato.png" alt="Icono de Zapato"
					width="32" height="32" />
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
		<div class="agrupar">
			<section>
				<h3>Nuestra Misión</h3>
				<p>En nuestra zapatería en línea, te ofrecemos la mejor
					selección de zapatos, zapatillas, botas y mucho más, todo con la
					mejor relación calidad-precio.</p>
				<div id="carouselExample" class="carousel slide">
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img src="imagenes/foto4.jpg" class="d-block w-100" alt="zapato moda" width="800" height="800">
						</div>
						<div class="carousel-item">
							<img src="imagenes/foto2.jpg" class="d-block w-100" alt="calzado" width="800" height="800">
						</div>
						<div class="carousel-item">
							<img src="imagenes/foto3.jpg" class="d-block w-100" alt="zapatilla" width="800" height="800">
						</div>
					</div>
					<button class="carousel-control-prev" type="button"
						data-bs-target="#carouselExample" data-bs-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Previous</span>
					</button>
					<button class="carousel-control-next" type="button"
						data-bs-target="#carouselExample" data-bs-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Next</span>
					</button>
				</div>
				<a href="https://www.skfk-ethical-fashion.com/es/"
					class="mas-informacion">Ver más</a>
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