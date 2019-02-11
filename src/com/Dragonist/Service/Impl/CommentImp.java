package com.Dragonist.Service.Impl;

import com.Dragonist.Bean.Comment;
import com.Dragonist.DAO.CommentMapper;
import com.Dragonist.Service.CommentService;

import java.util.ArrayList;

public class CommentImp implements CommentService {
    private CommentMapper commentMapper;

    public void setCommentMapper(CommentMapper commentMapper) {
        this.commentMapper = commentMapper;
    }

    @Override
    public void insertComment(Comment comment) {
        commentMapper.insertComment(comment);
    }

    @Override
    public ArrayList<Comment> getComments() {
        return commentMapper.getComments();
    }
}
