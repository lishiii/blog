package cn.ink.blog.photos.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import cn.ink.blog.photos.dao.PhotosDao;
import cn.ink.blog.photos.po.Photos;

@Transactional
public class PhotosService {
	private PhotosDao photosDao;

	public void setPhotosDao(PhotosDao photosDao) {
		this.photosDao = photosDao;
	}

	public List<Photos> findPhotos() {
		return photosDao.findPhotos();
	}
}
