package cn.ink.blog.products.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import cn.ink.blog.products.dao.ProductsDao;
import cn.ink.blog.products.po.Products;

@Transactional
public class ProductsService {

	private ProductsDao productsDao;

	public void setProductsDao(ProductsDao productsDao) {
		this.productsDao = productsDao;
	}

	public List<Products> findProducts() {
		return productsDao.findProducts();
	}

}
