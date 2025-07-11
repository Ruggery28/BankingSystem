/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import utils.DBConnection;

/**
 *
 * @author Ruggery
 */
public class UserDAO {

    //Method to ADD a new user to database
    public boolean registerUser(String username, String password) {

        String sql = "INSERT INTO users (username, password) VALUES (?, ?)";

        /*TRY and CATCH to connect the database server with Connection calling
        DBConncetion method getConnection and sending the statment 'sql'*/
        try (Connection conn = DBConnection.getConnection(); PreparedStatement stmt = conn.prepareStatement(sql)) {

            //inserting 
            stmt.setString(1, username);
            stmt.setString(2, password);

            int rowsInsert = stmt.executeUpdate();
            return rowsInsert > 0;

        } catch (SQLException e) {
            System.out.println("Error registering user: " + e.getMessage());
            return false;
        }

    }

    public boolean loginUser(String username, String password){
        
        String sql = "SELECT * FROM users WHERE username = ? AND password = ?";
        
        try(Connection conn = DBConnection.getConnection(); PreparedStatement stmt = conn.prepareStatement(sql)){
            
            stmt.setString(1, username);
            stmt.setString(2, password);
            
            ResultSet rs = stmt.executeQuery();
            return rs.next(); // If there is a match
            
        } catch(SQLException e){
            System.out.println("Error finding user: " + e.getMessage());
            return false;
        }
        
        
    }
    
    
    
    
}
