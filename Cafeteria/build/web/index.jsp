<%-- 
    Document   : indexx
    Created on : 30 may. 2025
    Author     : Hugo Hernan
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Realizar Pedido</title>
    <link rel="stylesheet" href="estilos.css">
</head>
<body>
    <div class="form-container">
        <h1>Pedido Cafetería</h1>
        <form action="realizarPedido.jsp" method="post">
            <label>Nombre del Cliente:</label>
            <input type="text" name="cliente" required>

            <label>Producto:</label>
            <select name="producto">
                <option value="Café">Café</option>
                <option value="Capuchino">Capuchino</option>
                <option value="Latte">Latte</option>
            </select>

            <label>Cantidad:</label>
            <input type="number" name="cantidad" min="1" required>

            <input type="submit" value="Realizar Pedido">
        </form>
    </div>
</body>
</html>
