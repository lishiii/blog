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

		// ����contents���ݵ�ҳ��
		List<Contents> listContents = contentsService.findContents();
		ActionContext.getContext().getContextMap().put("listContents", listContents);
		// ����Photos���ݵ�ҳ��
		List<Photos> listPhotos = photosService.findPhotos();
		ActionContext.getContext().getContextMap().put("listPhotos", listPhotos);
		// ����services���ݵ�ҳ��
		List<Services> listServices = servicesService.findServices();
		ActionContext.getContext().getContextMap().put("listServices", listServices);
		// ����team���ݵ�ҳ��
		List<Team> listTeam = teamService.findTeam();
		ActionContext.getContext().getContextMap().put("listTeam", listTeam);
		// ����products���ݵ�ҳ��
		List<Products> listProducts = productsService.findProducts();
		ActionContext.getContext().getContextMap().put("listProducts", listProducts);
		
		return "index";
	}
}
