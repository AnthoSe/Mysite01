<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="true" import="com.productos.seguridad.*, java.sql.*" %>
<%
    String correo = request.getParameter("email"); // Corregido el nombre del campo
    String clave = request.getParameter("password"); // Corregido el nombre del campo
    Usuario usuario = new Usuario();

    boolean respuesta = usuario.verificarInicioSesion(correo, clave);

    if (respuesta) {
        // Sesión exitosa
        HttpSession sesion = request.getSession();
        sesion.setAttribute("usuario", usuario.getNombre());
        sesion.setAttribute("perfil", usuario.getId_per());
        response.sendRedirect("menu.jsp");
    } else {
        // Sesión fallida
        response.sendRedirect("login.jsp?error=Datos incorrectos. Vuelva a intentarlo.");
    }
%>
