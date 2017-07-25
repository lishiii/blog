package cn.ink.blog.contents.dao;

import java.util.List;

import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import cn.ink.blog.contents.po.Contents;

public class ContentsDao extends HibernateDaoSupport {
	public List<Contents> findContents() {
		String hql = "from Contents";
		List<Contents> list = (List<Contents>) this.getHibernateTemplate().find(hql);
		return list;
	}
}
