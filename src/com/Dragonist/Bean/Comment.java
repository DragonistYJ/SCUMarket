package com.Dragonist.Bean;

public class Comment {
    String name;
    String contact;
    String comment;
    Integer id;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Comment(String name, String contact, String comment, Integer id) {
        this.name = name;
        this.contact = contact;
        this.comment = comment;
        this.id = id;
    }

    public Comment(String name, String contact, String comment) {
        this.name = name;
        this.contact = contact;
        this.comment = comment;
    }

    @Override
    public String toString() {
        return "Comment{" +
                "name='" + name + '\'' +
                ", contact='" + contact + '\'' +
                ", comment='" + comment + '\'' +
                ", id=" + id +
                '}';
    }
}
