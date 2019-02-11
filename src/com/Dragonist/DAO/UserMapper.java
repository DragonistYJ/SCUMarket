package com.Dragonist.DAO;

import com.Dragonist.Bean.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import java.util.ArrayList;
import java.util.List;

public interface UserMapper {
    @Insert("insert into user (username,password,nickName,campus,major,qq,weChat,portrait) values (#{username}, #{password}, #{nickName}, #{campus}, #{major}, #{qq}, #{weChat}, #{portrait})")
    public void insertUser(User user);

    @Select("select password from user where username = #{username}")
    public String getPassword(String username);

    @Select("select username from user")
    public ArrayList<String> getUsernames();

    @Select("select * from user where username = #{username}")
    public User getUserByUsername(String username);
}
