package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.user.UserDetails;

public class UserDAO {
    private Connection conn;

    public UserDAO(Connection conn) {
        this.conn = conn;
    }

    // Register new user
    public boolean addUser(UserDetails us) {
        boolean added = false;
        String query = "INSERT INTO users(name, email, password) VALUES(?,?,?)";
        try (PreparedStatement ps = conn.prepareStatement(query)) {
            ps.setString(1, us.getName());
            ps.setString(2, us.getEmail());
            ps.setString(3, us.getPassword());

            int i = ps.executeUpdate();
            if (i == 1) {
                added = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return added;
    }

    // Login user
    public UserDetails loginUser(UserDetails us) {
        UserDetails user = null;
        String query = "SELECT * FROM users WHERE email=? AND password=?";
        try (PreparedStatement ps = conn.prepareStatement(query)) {
            ps.setString(1, us.getEmail());
            ps.setString(2, us.getPassword());
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                user = new UserDetails();
                        // ✅ assuming you have id column
                user.setName(rs.getString("name"));    // ✅ name now set
                user.setEmail(rs.getString("email"));
                user.setPassword(rs.getString("password"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;   // ✅ return the fetched user, not `us`
    }
}
