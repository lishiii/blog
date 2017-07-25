package cn.ink.blog.journal.action;

import java.util.List;

import cn.ink.blog.journal.po.Journal;
import cn.ink.blog.journal.service.JournalService;
import cn.ink.blog.util.PageBean;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class JournalAction extends ActionSupport implements
		ModelDriven<Journal> {

	private Journal journal = new Journal();

	public Journal getModel() {
		return journal;
	}

	private String info; // 查询的信息
	private int page;// 接收当前页数:
	private JournalService journalService;

	public void setInfo(String info) {
		this.info = info;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public void setJournalService(JournalService journalService) {
		this.journalService = journalService;
	}

	public String findByPage() {
		PageBean<Journal> pageBean = journalService.findByPage(page);
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		return "blogsingle";
	}

	public String findByInfo() {
		PageBean<Journal> pageBean = journalService.findByInfo(page,info);
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		return "blogsingle";
	}

	public String readMore() {
		Journal j = journalService.findJournalByJid(journal.getJid());
		ActionContext.getContext().getContextMap().put("j", j);
		return "bloginner";
	}

}
