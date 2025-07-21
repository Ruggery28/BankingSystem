/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Ruggery
 */
public class DBConnection {

    private static final String DB_URL = "jdbc:mysql://localhost:3306/bank_db";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "Pass1234!";

    public static Connection getConnection() throws SQLException {
          
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            return DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

        } catch (ClassNotFoundException e) {
            throw new RuntimeException("MySQL JDBC Driver not found.", e);
        } catch (SQLException e) {
            throw new SQLException("Failed to load database connection.", e);
        }
    }
    
//    public static void main(String[] args) {
//    try (Connection conn = DBConnection.getConnection()) {
//        System.out.println("✅ Connection successful!");
//    } catch (SQLException e) {
//        System.out.println("❌ Connection failed: " + e.getMessage());
//    }
//}
    
}
