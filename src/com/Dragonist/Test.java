package com.Dragonist;

import com.Dragonist.Bean.Commodity;
import com.Dragonist.Bean.User;
import com.Dragonist.Service.CommodityService;
import com.Dragonist.Service.UserService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

public class Test {
    public static void main(String[] args) {
        FileOutputStream outputStream = null;
        try {
            outputStream = new FileOutputStream(new File("C:\\Data\\1.jpg"));

        } catch (IOException e) {
            e.printStackTrace();

        }

    }
}
