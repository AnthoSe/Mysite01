<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
<html>
<head>
    <meta charset="UTF-8">
    <title>Error</title>
</head>
<body>
    <h1>Error</h1>
    <p>Ha ocurrido un error. Por favor, regresa a la página principal.</p>
    <a href="menu.jsp">Página Principal</a>
</body>
</html>
<%
    }
%>
