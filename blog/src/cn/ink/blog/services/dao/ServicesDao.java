package cn.ink.blog.services.dao;

import java.util.List;

import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import cn.ink.blog.services.po.Services;

public class ServicesDao extends HibernateDaoSupport{

	/**
	 * ��ѯ����services����
	 * @return List<Services>
	 */
	public List<Services> findServices() {
		String hql = "FROM Services";
		List<Services> list = (List<Services>) this.getHibernateTemplate().find(hql);
		return list;
	}

}
