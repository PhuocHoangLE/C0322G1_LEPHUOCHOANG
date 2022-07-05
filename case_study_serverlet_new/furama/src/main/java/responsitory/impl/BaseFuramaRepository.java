package responsitory.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class BaseFuramaRepository {
    private String jdbcURL = "jdbc:mysql://localhost:3306/furama";
    private String jdbcUsername = "root";
    private String jdbcPassword = "codegym";

    public Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return connection;
    }
}

