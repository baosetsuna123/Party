/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Admin;
import model.Person;

/**
 *
 * @author Hoang Hiep
 */
public class AdminDAO extends DBContext{
    // Get person
    public Admin getByUsernamePassword(String username, String password) {
        try {
            String sql = "SELECT * FROM Admin WHERE username = ? AND password = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                Admin admin = new Admin(
                        rs.getInt("id"), 
                        rs.getString("username"), 
                        rs.getString("password"), 
                        rs.getString("name")
                );
                return admin;
            }
        } catch (SQLException ex) {
            Logger.getLogger(PersonDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
