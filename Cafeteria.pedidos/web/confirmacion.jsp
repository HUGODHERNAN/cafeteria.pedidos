
<%-- 
    Document   : confirmacion
    Created on : 30 may. 2025
    Author     : Hugo Hernan
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Confirmación</title>
    <link rel="stylesheet" type="text/css" href="estilos.css">
</head>
<body>
    <div class="form-container">
        <h2>✅ Pedido Confirmado</h2>
        <%
            String cliente = request.getParameter("cliente");
        %>
        <p>Gracias por tu pedido, <strong><%= cliente %></strong>.</p>
        <p>Tu orden ha sido registrada correctamente.</p>
        <a href="index.jsp">📦 Realizar otro pedido</a>
    </div>
</body>
</html>

