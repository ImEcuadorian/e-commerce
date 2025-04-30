package io.github.alexmario.producto;

import io.github.alexmario.basedatos.*;

import java.sql.*;

public class ServicioProducto {

    public String consultarProductos() throws SQLException {
        String tabla = "<table border='1'>";
        String sql = "SELECT id_producto, nombre, descripcion, precio, stock FROM productos";
        ResultSet resultSet;
        tabla += """
                <tr>
                <th>Id Producto</th>
                <th>Nombre</th>
                <th>Descripcion</th>
                <th>Precio</th>
                <th>Stock</th>
                </tr>
                """;
        Connection connection = Conexion.getConnection();
        try {
            Statement statement = connection.createStatement();
            resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                String idProducto = resultSet.getString("id_producto");
                String nombre = resultSet.getString("nombre");
                String descripcion = resultSet.getString("descripcion");
                String precio = resultSet.getString("precio");
                String stock = resultSet.getString("stock");

                tabla += "<tr>";
                tabla += "<td>" + idProducto + "</td>";
                tabla += "<td>" + nombre + "</td>";
                tabla += "<td>" + descripcion + "</td>";
                tabla += "<td>" + precio + "</td>";
                tabla += "<td>" + stock + "</td>";
                tabla += "</tr>";
            }
        } finally {
            connection.close();
        }
        tabla += "</table>";
        return tabla;
    }

}
