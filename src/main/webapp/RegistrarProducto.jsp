<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registrar Producto - Calzado360</title>
    <link rel="stylesheet" type="text/css" href="css/registrarProductoEstilos.css">
</head>
<body>
    <main>
        <header>
            <h1>Registrar Nuevo Producto</h1>
        </header>
        <section class="formulario">
            <h2>Complete el formulario para registrar un nuevo producto:</h2>
            <form>
                <label for="nombre">Nombre del Producto:</label>
                <input type="text" id="nombre" name="nombre" required><br><br>

                <label for="categoria">Categoría:</label>
                <select id="categoria" name="categoria">
                    <option value="zapatos">Zapatos</option>
                    <option value="zapatillas">Zapatillas</option>
                    <option value="botas">Botas</option>
                    <option value="sandalias">Sandalias</option>
                    <option value="accesorios">Accesorios</option>
                </select><br><br>

                <label for="precio">Precio:</label>
                <input type="number" id="precio" name="precio" required><br><br>

                <label for="descripcion">Descripción:</label>
                <textarea id="descripcion" name="descripcion" rows="4" required></textarea><br><br>

                <button type="submit">Registrar Producto</button>
            </form>
        </section>
    </main>
</body>
</html>
