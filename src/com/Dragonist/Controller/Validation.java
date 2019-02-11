package com.Dragonist.Controller;

import com.Dragonist.Bean.User;
import com.Dragonist.Service.UserService;
import com.google.gson.JsonObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;


@RequestMapping("/Validation")
@Controller
public class Validation {
    @Autowired
    private HttpServletRequest request;

    @RequestMapping("/register")
    public String register(@RequestParam("file") MultipartFile portrait, @RequestParam("username") String username, @RequestParam("password") String password, @RequestParam("nickName") String nickName, @RequestParam("campus") String campus, @RequestParam("major") String major, @RequestParam("qq") String qq, @RequestParam("weChat") String weChat) throws MalformedURLException {
        String path = request.getContextPath();
        User user = new User(username, password, nickName, campus, major, qq, weChat);

        FileOutputStream outputStream = null;
        try {
            outputStream = new FileOutputStream(new File(request.getServletContext().getRealPath("/user/" + username + ".jpg")));
            outputStream.write(portrait.getBytes());
            outputStream.flush();
            outputStream.close();
        } catch (IOException e) {
            e.printStackTrace();
            return "register";
        }

        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        UserService userService = (UserService) context.getBean("userService");
        userService.insertUser(user);

        return "login";
    }

    @RequestMapping("/login")
    public void login(@RequestParam("username") String username, @RequestParam("password") String password, HttpServletResponse response) throws IOException {
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        UserService userService = (UserService) context.getBean("userService");
        String _password = userService.getPassword(username);

        JsonObject object = new JsonObject();
        if (_password == null) object.addProperty("status", "404");
        else if (!_password.equals(password)) object.addProperty("status", "401");
        else object.addProperty("status", "200");

        response.getOutputStream().write(object.toString().getBytes());
    }

    @RequestMapping("/getUserInfo")
    public void userInfo(@RequestParam("username")String username, HttpServletResponse response) throws IOException {
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        UserService userService = (UserService) context.getBean("userService");

        User user = userService.getUserByUsername(username);
        JsonObject object = new JsonObject();
        object.addProperty("username",user.getUsername());
        object.addProperty("password",user.getPassword());
        object.addProperty("nickName",user.getNickName());
        object.addProperty("campus",user.getCampus());
        object.addProperty("major",user.getMajor());
        object.addProperty("qq",user.getQq());
        object.addProperty("weChat",user.getWeChat());
        object.addProperty("id",user.getId());

        response.getOutputStream().write(object.toString().getBytes("UTF-8"));
    }
}
