<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.productos.negocio.*, com.productos.datos.*" %>

<%
    try {
        // Obtener los parámetros del formulario
        String idProducto = request.getParameter("producto");
        String cantidadStr = request.getParameter("cantidad");
        int cantidad = Integer.parseInt(cantidadStr);  // Convertir a entero

        // Aquí asumo que ya tienes la información del cliente, su ID, etc.
        // Debes adaptar esto según tu lógica de autenticación y manejo de sesiones.
        int idCliente = 1;  // Debes obtener el ID del cliente de alguna manera.

        // Obtener información del producto
        Producto producto = new Producto();
        producto.setId(Integer.parseInt(idProducto));
        producto = producto.obtenerProducto();  // Necesitas un método para obtener información del producto por ID.

        // Calcular el monto total
        double montoTotal = cantidad * producto.getPrecio();

        // Crear una instancia de Venta
        Venta venta = new Venta();
        venta.setIdCliente(idCliente);
        venta.setIdProducto(Integer.parseInt(idProducto));
        venta.setMonto(montoTotal);

        // Guardar la venta en la base de datos y obtener el ID generado
        int idVenta = venta.guardarVenta();

        // Aquí deberías manejar la información de la tarjeta
        // Asumo que ya tienes la información de la tarjeta como parámetros
        String numeroTarjeta = request.getParameter("numeroTarjeta");
        String titularTarjeta = request.getParameter("titularTarjeta");
        String fechaVencimiento = request.getParameter("fechaVencimiento");  // Corregido aquí
        String cvvStr = request.getParameter("cvv");
        int cvv = Integer.parseInt(cvvStr);  // Convertir a entero

        // Crear una instancia de Tarjeta y asociarla a la venta
        Tarjeta tarjeta = new Tarjeta();
        tarjeta.setNumero(numeroTarjeta);
        tarjeta.setTitular(titularTarjeta);
        tarjeta.setFechaVencimiento(fechaVencimiento);
        tarjeta.setCvv(cvv);

        // Asociar la tarjeta con la venta (nuevo)
        tarjeta.setIdVenta(idVenta);

        // Guardar la información de la tarjeta en la base de datos
        tarjeta.guardarTarjeta();

        // Redirigir al usuario a una página de éxito o confirmación
        response.sendRedirect("exitoCompra.jsp");
    } catch (Exception e) {
        // Redirigir al usuario a una página de error en caso de excepción
        response.sendRedirect("error.jsp");
    }
%>
