package com.Dragonist.Controller;

import com.Dragonist.Service.CommentService;
import com.Dragonist.Service.UserService;
import com.google.gson.JsonObject;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Random;

@RequestMapping("/Comment")
@Controller
public class Comment {

    @RequestMapping("/portrait")
    public void getPortraits(HttpServletResponse response) throws IOException {
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        UserService userService = (UserService) context.getBean("userService");
        ArrayList<String> users = userService.getUsernames();

        JsonObject object = new JsonObject();
        ArrayList<Integer> ns = Tool.randomX(7, users.size());
        for (int i = 0; i < 7; i++) {
            object.addProperty("p" + (i + 1), users.get(ns.get(i)) + ".jpg");
        }

        response.getOutputStream().write(object.toString().getBytes("UTF-8"));
    }

    @RequestMapping("/sendComment")
    public void sendComment(@RequestParam("name") String name, @RequestParam("contact") String contact, @RequestParam("comment") String commentValue, HttpServletResponse response) throws IOException {
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        CommentService commentService = (CommentService) context.getBean("commentService");
        com.Dragonist.Bean.Comment comment = new com.Dragonist.Bean.Comment(name, contact, commentValue);
        commentService.insertComment(comment);
        JsonObject object = new JsonObject();
        object.addProperty("success", true);

        response.getOutputStream().write(object.toString().getBytes("UTF-8"));
    }

    @RequestMapping("/showComments")
    public void showComments(HttpServletResponse response) throws IOException {
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        CommentService commentService = (CommentService) context.getBean("commentService");
        UserService userService = (UserService) context.getBean("userService");

        ArrayList<com.Dragonist.Bean.Comment> comments = commentService.getComments();
        ArrayList<Integer> ns = Tool.randomX(3, comments.size());
        ArrayList<String> usernames = userService.getUsernames();

        JsonObject object = new JsonObject();
        for (Integer x : ns) {
            JsonObject object1 = new JsonObject();
            object1.addProperty("name", comments.get(x).getName());
            object1.addProperty("comment", comments.get(x).getComment());
            object1.addProperty("portrait", usernames.get(new Random().nextInt(usernames.size())) + ".jpg");
            object.add("comment" + x, object1);
        }

        response.getOutputStream().write(object.toString().getBytes("UTF-8"));
    }
}
