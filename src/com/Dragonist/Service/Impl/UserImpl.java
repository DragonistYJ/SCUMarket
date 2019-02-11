package com.Dragonist.Service.Impl;

import com.Dragonist.Bean.User;
import com.Dragonist.DAO.UserMapper;
import com.Dragonist.Service.UserService;

import java.util.ArrayList;

public class UserImpl implements UserService {
    private UserMapper userMapper;

    public void setUserMapper(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    @Override
    public void insertUser(User user) {
        userMapper.insertUser(user);
    }

    @Override
    public String getPassword(String username) {
        return userMapper.getPassword(username);
    }

    @Override
    public ArrayList<String> getUsernames() {
        return userMapper.getUsernames();
    }

    @Override
    public User getUserByUsername(String username) {
        return userMapper.getUserByUsername(username);
    }

}
