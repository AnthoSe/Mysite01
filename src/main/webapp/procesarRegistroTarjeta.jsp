<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.productos.negocio.*, com.productos.datos.*" %>
<%
    // Obtener los parámetros del formulario
      String numeroTarjeta = request.getParameter("numeroTarjeta");
    String titularTarjeta = request.getParameter("titularTarjeta");
    String fechaVencimiento = request.getParameter("fechaVencimiento");
    String cvvStr = request.getParameter("cvv");
    int cvv = Integer.parseInt(cvvStr);  // Convertir a entero

    // Imprimir información para depuración
    System.out.println("Número de Tarjeta: " + numeroTarjeta);
    System.out.println("Titular: " + titularTarjeta);
    System.out.println("Fecha de Vencimiento: " + fechaVencimiento);
    System.out.println("CVV: " + cvv);
    // Aquí asumo que ya tienes la información del cliente, su ID, etc.
    // Debes adaptar esto según tu lógica de autenticación y manejo de sesiones.
    int idCliente = 1;  // Debes obtener el ID del cliente de alguna manera.

    // Crear una instancia de Tarjeta y establecer sus atributos
    Tarjeta tarjeta = new Tarjeta();
    tarjeta.setNumero(numeroTarjeta);
    tarjeta.setTitular(titularTarjeta);
    tarjeta.setFechaVencimiento(fechaVencimiento);
    tarjeta.setCvv(cvv);

    // Guardar la información de la tarjeta en la base de datos
    tarjeta.guardarTarjeta(idCliente);

    // Redirigir al usuario a una página de confirmación o agradecimiento
    response.sendRedirect("confirmacionRegistroTarjeta.jsp");
%>
