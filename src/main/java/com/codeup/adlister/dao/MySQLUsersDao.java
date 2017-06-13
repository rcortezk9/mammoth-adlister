package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;
import com.mysql.cj.api.jdbc.Statement;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.List;

/**
 * Created by renecortez on 6/12/17.
 */

public class MySQLUsersDao implements Users {
    private Connection connection = null;

    public MySQLUsersDao(Config config) throws SQLException {
        DriverManager.registerDriver(new Driver());
        connection = DriverManager.getConnection(
                config.getUrl(),
                config.getUsername(),
                config.getPassword()
        );

    }


    @Override
    public Long insert(User user) {
        String sql = "INSERT INTO users(username, email, PASSWORD) VALUES (?, ?, ?)";
        long id = 0;
        try {
            PreparedStatement stmt = connection.prepareStatement(sql, java.sql.Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, Long.parseLong(user.getUsername()));
            stmt.setString(2, user.getEmail());
            stmt.setString(3, user.getPassword());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }
    }

    @Override
    public User findByUsername(String username) {
        return null;
    }



}
