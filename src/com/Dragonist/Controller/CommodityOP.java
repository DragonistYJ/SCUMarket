package com.Dragonist.Controller;

import com.Dragonist.Bean.Commodity;
import com.Dragonist.Service.CommodityService;
import com.google.gson.JsonObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Random;

@RequestMapping("/CommodityOP")
@Controller
public class CommodityOP {
    @Autowired
    private HttpServletRequest request;

    @RequestMapping("/getCommodity")
    public void getCommodity(HttpServletResponse response) throws IOException {
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        CommodityService commodityService = (CommodityService) context.getBean("commodityService");

        int id = Integer.valueOf(request.getParameter("id"));
        Commodity commodity = commodityService.getCommodity(id);
        JsonObject object = new JsonObject();
        if (commodity == null) object.addProperty("status", "404");
        else {
            object.addProperty("name", commodity.getName());
            object.addProperty("price", commodity.getPrice());
            object.addProperty("description", commodity.getDescription());
            object.addProperty("campus", commodity.getCampus());
            object.addProperty("seller", commodity.getSeller());
            object.addProperty("phoneNumber", commodity.getPhoneNumber());
            object.addProperty("qq", commodity.getQq());
            object.addProperty("weChat", commodity.getWeChat());
            object.addProperty("id", commodity.getId());
        }

        response.setCharacterEncoding("UTF-8");
        response.getOutputStream().write(object.toString().getBytes("UTF-8"));
    }

    @RequestMapping("/recommendGoods")
    public void recommendGoods(HttpServletResponse response) throws IOException {
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        CommodityService commodityService = (CommodityService) context.getBean("commodityService");

        ArrayList<Commodity> commodities = commodityService.getCommodities();
        ArrayList<Integer> ns = Tool.randomX(9, commodities.size());
        JsonObject object = new JsonObject();
        for (int n : ns) {
            JsonObject object1 = new JsonObject();
            object1.addProperty("name", commodities.get(n).getName());
            object1.addProperty("id", commodities.get(n).getId());
            object.add("c" + n, object1);
        }

        response.getOutputStream().write(object.toString().getBytes("UTF-8"));
    }

    @RequestMapping("/getGoods")
    public void getGods(@RequestParam("nickName") String nickName, HttpServletResponse response) throws IOException {
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        CommodityService commodityService = (CommodityService) context.getBean("commodityService");

        ArrayList<Commodity> commodities = commodityService.getGoodsByNickname(nickName);
        JsonObject object = new JsonObject();
        for (int i = 0; i < commodities.size(); i++) {
            JsonObject object1 = new JsonObject();
            object1.addProperty("name", commodities.get(i).getName());
            object1.addProperty("id", commodities.get(i).getId());
            object.add("c" + i, object1);
        }

        response.getOutputStream().write(object.toString().getBytes("UTF-8"));
    }
}
