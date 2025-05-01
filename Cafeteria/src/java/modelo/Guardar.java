/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

/**
 *
 * @author Usuario
 */

import java.sql.*;

public class Guardar {

    public static boolean guardarPedido(String cliente, String producto, int cantidad) {
        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            // 1. Cargar el driver JDBC
            Class.forName("com.mysql.cj.jdbc.Driver");

            // 2. Establecer conexión
            String url = "jdbc:mysql://localhost:3306/cafeteria";
            String user = "root"; 
            String password = ""; 
            conn = DriverManager.getConnection(url, user, password);

            // 3. Preparar consulta SQL
            String sql = "INSERT INTO pedidos (cliente, producto, cantidad) VALUES (?, ?, ?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, cliente);
            pstmt.setString(2, producto);
            pstmt.setInt(3, cantidad);

            // 4. Ejecutar
            int filas = pstmt.executeUpdate();

            return filas > 0;

        } catch (Exception e) {
            e.printStackTrace(); // O loguéalo
            return false;
        } finally {
            try {
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
    }
}
