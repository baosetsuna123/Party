/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Address;
import model.Person;

/**
 *
 * @author Hoang Hiep
 */
public class AddressDAO extends DBContext{
    // Read: All
    public ArrayList<Address> getAll() {
        try {
            String sql = "SELECT * FROM address";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            
            ArrayList<Address> list = new ArrayList<>();
            while(rs.next()) {
                Address address = new Address(rs.getInt("id"), rs.getString("address"));
                list.add(address);
            }
            rs.close();
            ps.close();
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(PersonDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
