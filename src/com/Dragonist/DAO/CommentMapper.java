package com.Dragonist.DAO;

import com.Dragonist.Bean.Comment;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import java.util.ArrayList;

public interface CommentMapper {
    @Insert("insert into comment (name,contact,comment) values (#{name},#{contact},#{comment})")
    public void insertComment(Comment comment);

    @Select("select * from comment")
    public ArrayList<Comment> getComments();
}
