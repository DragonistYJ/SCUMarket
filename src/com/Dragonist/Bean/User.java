package com.Dragonist.Bean;

public class User {
    private String username;
    private String password;
    private String nickName;
    private String campus;
    private String major;
    private String qq;
    private String weChat;
    private Integer id;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getNickName() {
        return nickName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName;
    }

    public String getCampus() {
        return campus;
    }

    public void setCampus(String campus) {
        this.campus = campus;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
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

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public User(String username, String password, String nickName, String campus, String major, String qq, String weChat, Integer id) {
        this.username = username;
        this.password = password;
        this.nickName = nickName;
        this.campus = campus;
        this.major = major;
        this.qq = qq;
        this.weChat = weChat;
        this.id = id;
    }

    public User(String username, String password, String nickName, String campus, String major, String qq, String weChat) {
        this.username = username;
        this.password = password;
        this.nickName = nickName;
        this.campus = campus;
        this.major = major;
        this.qq = qq;
        this.weChat = weChat;
    }

    @Override
    public String toString() {
        return "User{" +
                "username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", nickName='" + nickName + '\'' +
                ", campus='" + campus + '\'' +
                ", major='" + major + '\'' +
                ", qq='" + qq + '\'' +
                ", weChat='" + weChat + '\'' +
                ", id=" + id +
                '}';
    }
}
