package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;

import java.sql.Connection;
import java.sql.SQLException;

/**
 * Created by renecortez on 6/12/17.
 */

public class MySQLUsersDao implements Users {

    private Connection connection = null;

    public MySQLUsersDao() throws SQLException {
        Config config = new Config();

    }

    @Override
    public User findByUsername(String username) {
        return null;
    }

    @Override
    public Long insert(User user) {
        return null;
    }



}
