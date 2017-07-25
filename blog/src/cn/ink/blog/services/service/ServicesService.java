package cn.ink.blog.services.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import cn.ink.blog.services.dao.ServicesDao;
import cn.ink.blog.services.po.Services;

@Transactional
public class ServicesService {
	private ServicesDao servicesDao;

	public void setServicesDao(ServicesDao servicesDao) {
		this.servicesDao = servicesDao;
	}

	public List<Services> findServices() {
		return servicesDao.findServices();
	}
	
}
