<%-- 
    Document   : realizarPedido
    Created on : 30 may. 2025
    Author     : Hugo Hernan
--%>

<%@ page import="java.io.*, java.sql.*, jakarta.servlet.*, jakarta.servlet.http.*" %>
<%@ page import="modelo.Guardar" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Resumen del Pedido</title>
    <link rel="stylesheet" type="text/css" href="estilos.css">
</head>
<body>
    <div class="form-container">
        <%
            request.setCharacterEncoding("UTF-8");

            String cliente = request.getParameter("cliente");
            String producto = request.getParameter("producto");
            int cantidad = Integer.parseInt(request.getParameter("cantidad"));
        %>

        <h2>Resumen del Pedido</h2>
        <p><strong>Cliente:</strong> <%= cliente %></p>
        <p><strong>Producto:</strong> <%= producto %></p>
        <p><strong>Cantidad:</strong> <%= cantidad %></p>

        <%
            boolean guardado = Guardar.guardarPedido(cliente, producto, cantidad);

            if (guardado) {
        %>
            <p style="color: green;">✅ El pedido ha sido registrado correctamente.</p>
            <a href="confirmacion.jsp?cliente=<%= cliente %>">Ir a confirmación</a>
        <%
            } else {
        %>
            <p style="color: red;">❌ Error al guardar el pedido. Intente nuevamente.</p>
        <%
            }
        %>
    </div>
</body>
</html>
