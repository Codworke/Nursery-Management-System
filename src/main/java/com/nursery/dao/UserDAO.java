package com.nursery.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.nursery.model.User;

public class UserDAO {
    private Connection con;

    public UserDAO(Connection con) {
        this.con = con;
    }

    // Registration method (already exists)
    public boolean registerUser(User user) throws SQLException {
        String sql = "INSERT INTO users(fullname, email, password) VALUES (?, ?, ?)";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1, user.getFullname());
        ps.setString(2, user.getEmail());
        ps.setString(3, user.getPassword());
        return ps.executeUpdate() > 0;
    }

    // Login method
    public User loginUser(String email, String password) throws SQLException {
        String sql = "SELECT * FROM users WHERE email = ? AND password = ?";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1, email);
        ps.setString(2, password);
        ResultSet rs = ps.executeQuery();
        if(rs.next()) {
            return new User(
                rs.getString("fullname"),
                rs.getString("email"),
                rs.getString("password")
            );
        }
        return null; // login failed
    }
}
