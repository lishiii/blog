package cn.ink.blog.photos.dao;

import java.util.List;

import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import cn.ink.blog.photos.po.Photos;

public class PhotosDao extends HibernateDaoSupport {

	public List<Photos> findPhotos() {
		//FROM Photos ORDER BY  RAND() LIMIT 6
		String hql = "FROM Photos";
		this.getHibernateTemplate().setMaxResults(6);
		List<Photos> list = (List<Photos>) this.getHibernateTemplate().find(hql);
		
		return list;
		
	}
}
