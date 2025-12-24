package com.nursery.dao;

import java.sql.*;
import java.util.*;
import com.nursery.model.Order;

public class OrderDAO {

    private String jdbcURL = "jdbc:mysql://localhost:3306/nursery_db";
    private String jdbcUsername = "root";
    private String jdbcPassword = "root";

    private Connection getConnection() throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
    }

    // Fetch orders for logged-in user
    public List<Order> getOrdersByUser(String username) {

        List<Order> orders = new ArrayList<>();
        String sql = "SELECT * FROM orders WHERE username=? ORDER BY order_date DESC";

        try (Connection con = getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Order o = new Order();
                o.setId(rs.getInt("id"));
                o.setProductName(rs.getString("product_name"));
                o.setPrice(rs.getDouble("price"));
                o.setOrderDate(rs.getTimestamp("order_date"));

                orders.add(o);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return orders;
    }
}
