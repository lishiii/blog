package cn.ink.blog.journal.service;

import java.util.List;

import cn.ink.blog.journal.dao.JournalDao;
import cn.ink.blog.journal.po.Journal;
import cn.ink.blog.util.PageBean;

public class JournalService {
	private JournalDao journalDao;

	public void setJournalDao(JournalDao journalDao) {
		this.journalDao = journalDao;
	}

	public List<Journal> findJournal() {
		return journalDao.findJournal();
	}

	public PageBean<Journal> findByPage(int page) {
		PageBean<Journal> pageBean = new PageBean<Journal>();
		// 设置当前页数:
		pageBean.setPage(page);
		// 设置每页显示记录数:
		int limit = 5;
		pageBean.setLimit(limit);
		// 设置总记录数:
		int totalCount = 0;
		totalCount = journalDao.findCountJid();
		pageBean.setTotalCount(totalCount);
		// 设置总页数:
		int totalPage = 0;
		// Math.ceil(totalCount / limit);
		if (totalCount % limit == 0) {
			totalPage = totalCount / limit;
		} else {
			totalPage = totalCount / limit + 1;
		}
		pageBean.setTotalPage(totalPage);
		// 每页显示的数据集合:
		// 从哪开始:
		int begin = (page - 1) * limit;
		List<Journal> list = journalDao.findByPageCid(begin, limit);

		// 截取字符串显示部分数据
		for (Journal journal : list) {
			String text = journal.getText().substring(0, 500) + "... ...";
			journal.setText(text);
		}

		pageBean.setList(list);
		return pageBean;
	}

	public Journal findJournalByJid(Integer jid) {
		return journalDao.findJournalByJid(jid);
	}

	public PageBean<Journal> findByInfo(Integer page, String info) {
		PageBean<Journal> pageBean = new PageBean<Journal>();
		// 设置当前页数:
		pageBean.setPage(page);
		// 设置每页显示记录数:
		int limit = 5;
		pageBean.setLimit(limit);
		// 设置总记录数:
		int totalCount = 0;
		totalCount = journalDao.findInfoJid(info);
		pageBean.setTotalCount(totalCount);
		// 设置总页数:
		int totalPage = 0;
		// Math.ceil(totalCount / limit);
		if (totalCount % limit == 0) {
			totalPage = totalCount / limit;
		} else {
			totalPage = totalCount / limit + 1;
		}
		pageBean.setTotalPage(totalPage);
		// 每页显示的数据集合:
		// 从哪开始:
		int begin = (page - 1) * limit;
		List<Journal> list = journalDao.findByPageInfo(begin, limit, info);

		// 截取字符串显示部分数据
		for (Journal journal : list) {
			String text = journal.getText().substring(0, 500) + "... ...";
			journal.setText(text);
		}
		pageBean.setList(list);
		return pageBean;
	}

}
