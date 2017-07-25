package cn.ink.blog.contents.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import cn.ink.blog.contents.dao.ContentsDao;
import cn.ink.blog.contents.po.Contents;

@Transactional
public class ContentsService {
	private ContentsDao contentsDao;

	public void setContentsDao(ContentsDao contentsDao) {
		this.contentsDao = contentsDao;
	}

	public List<Contents> findContents() {
		return contentsDao.findContents();
	}
}
