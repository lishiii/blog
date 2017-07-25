package cn.ink.blog.products.dao;

import java.util.List;

import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import cn.ink.blog.products.po.Products;

public class ProductsDao extends HibernateDaoSupport {

	public List<Products> findProducts() {
		String hql = "FROM Products ORDER BY prid DESC";
		this.getHibernateTemplate().setMaxResults(3);
		List<Products> list = (List<Products>) this.getHibernateTemplate().find(hql);
		return list;
	}
}
