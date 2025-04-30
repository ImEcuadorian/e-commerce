package io.github.alexmario.basedatos;

import java.sql.*;

public class Conexion {

    private static final String URL = "jdbc:postgresql://localhost:5432/universidad";
    private static final String USER = "postgres";
    private static final String PASSWORD = "root";

    static {
        try {
            Class.forName("org.postgresql.Driver"); // 🔥 OBLIGATORIO para registrar el driver
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("No se encontró el driver de PostgreSQL", e);
        }
    }

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }

}
