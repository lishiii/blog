package cn.ink.blog.comment.service;

import org.springframework.transaction.annotation.Transactional;

import cn.ink.blog.comment.dao.commentDao;

@Transactional
public class commentService {
	private commentDao commentDao;

	public void setCommentDao(commentDao commentDao) {
		this.commentDao = commentDao;
	}

}
