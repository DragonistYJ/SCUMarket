package com.Dragonist.Service;

import com.Dragonist.Bean.User;

import java.util.ArrayList;

public interface UserService {
    public void insertUser(User user);

    public String getPassword(String username);

    public ArrayList<String> getUsernames();

    public User getUserByUsername(String username);
}
