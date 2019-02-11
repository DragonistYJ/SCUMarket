package com.Dragonist.Bean;

import java.sql.Timestamp;

public class Commodity {
    private String name;
    private double price;
    private String description;
    private String classification;
    private String campus;
    private Boolean isUrgent;
    private String seller;
    private String phoneNumber;
    private String qq;
    private String weChat;
    private Timestamp time;
    private Integer id;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getClassification() {
        return classification;
    }

    public void setClassification(String classification) {
        this.classification = classification;
    }

    public String getCampus() {
        return campus;
    }

    public void setCampus(String campus) {
        this.campus = campus;
    }

    public Boolean getUrgent() {
        return isUrgent;
    }

    public void setUrgent(Boolean urgent) {
        isUrgent = urgent;
    }

    public String getSeller() {
        return seller;
    }

    public void setSeller(String seller) {
        this.seller = seller;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getQq() {
        return qq;
    }

    public void setQq(String qq) {
        this.qq = qq;
    }

    public String getWeChat() {
        return weChat;
    }

    public void setWeChat(String weChat) {
        this.weChat = weChat;
    }

    public Timestamp getTime() {
        return time;
    }

    public void setTime(Timestamp time) {
        this.time = time;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Commodity(Timestamp time) {
        this.time = time;
    }

    public Commodity(String name, double price, String description, String classification, String campus, Boolean isUrgent, String seller, String phoneNumber, String qq, String weChat, Timestamp time, Integer id) {
        this.name = name;
        this.price = price;
        this.description = description;
        this.classification = classification;
        this.campus = campus;
        this.isUrgent = isUrgent;
        this.seller = seller;
        this.phoneNumber = phoneNumber;
        this.qq = qq;
        this.weChat = weChat;
        this.time = time;
        this.id = id;
    }
}
