package cn.ink.blog.index.action;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import cn.ink.blog.contents.po.Contents;
import cn.ink.blog.contents.service.ContentsService;
import cn.ink.blog.photos.po.Photos;
import cn.ink.blog.photos.service.PhotosService;
import cn.ink.blog.products.po.Products;
import cn.ink.blog.products.service.ProductsService;
import cn.ink.blog.services.po.Services;
import cn.ink.blog.services.service.ServicesService;
import cn.ink.blog.team.po.Team;
import cn.ink.blog.team.service.TeamService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class IndexAction extends ActionSupport {

	private ContentsService contentsService;
	private PhotosService photosService;
	private ServicesService servicesService;
	private TeamService teamService;
	private ProductsService productsService;
	
	public void setProductsService(ProductsService productsService) {
		this.productsService = productsService;
	}

	public void setTeamService(TeamService teamService) {
		this.teamService = teamService;
	}

	public void setServicesService(ServicesService servicesService) {
		this.servicesService = servicesService;
	}

	public void setContentsService(ContentsService contentsService) {
		this.contentsService = contentsService;
	}

	public void setPhotosService(PhotosService photosService) {
		this.photosService = photosService;
	}

	public String execute() {

		// 增添contents内容到页面
		List<Contents> listContents = contentsService.findContents();
		ActionContext.getContext().getContextMap().put("listContents", listContents);
		// 增添Photos内容到页面
		List<Photos> listPhotos = photosService.findPhotos();
		ActionContext.getContext().getContextMap().put("listPhotos", listPhotos);
		// 增添services内容到页面
		List<Services> listServices = servicesService.findServices();
		ActionContext.getContext().getContextMap().put("listServices", listServices);
		// 增添team内容到页面
		List<Team> listTeam = teamService.findTeam();
		ActionContext.getContext().getContextMap().put("listTeam", listTeam);
		// 增添products内容到页面
		List<Products> listProducts = productsService.findProducts();
		ActionContext.getContext().getContextMap().put("listProducts", listProducts);
		
		return "index";
	}
}
