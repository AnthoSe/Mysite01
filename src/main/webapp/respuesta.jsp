<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.productos.seguridad.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Respuesta JSP</title>
</head>
<body>
    <h1>Respuestas</h1>
    <%
        String nombre = request.getParameter("txtnombre");
        String cedula = request.getParameter("cedula");
        int estadoCivil = Integer.parseInt(request.getParameter("cmbECivil"));
        String correo = request.getParameter("correo");
        String clave = request.getParameter("clave");
        int id_per = 1; // Valor predeterminado o asigna un valor válido si es necesario

        // Verificar si el parámetro no es null antes de intentar convertirlo
        String id_perParam = request.getParameter("id_per");
        if (id_perParam != null && !id_perParam.isEmpty()) {
            id_per = Integer.parseInt(id_perParam);
        }

        Usuario usuario = new Usuario(id_per, estadoCivil, nombre, cedula, correo, clave);
        String resultado = usuario.ingresarCliente();
    %>

    <p>Su nombre es <%= nombre %></p>
    <p>Su cédula es <%= cedula %></p>
    <p>Su estado civil es <%= estadoCivil %></p>
    <p>Su correo electrónico es <%= correo %></p>

    <p>Resultado del registro de usuario: <%= resultado %></p>
</body>
</html>
