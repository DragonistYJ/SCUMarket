package com.Dragonist.Service;

import com.Dragonist.Bean.Comment;

import java.util.ArrayList;

public interface CommentService {
    public void insertComment(Comment comment);

    public ArrayList<Comment> getComments();
}
