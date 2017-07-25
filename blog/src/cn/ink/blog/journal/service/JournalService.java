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
		// ���õ�ǰҳ��:
		pageBean.setPage(page);
		// ����ÿҳ��ʾ��¼��:
		int limit = 5;
		pageBean.setLimit(limit);
		// �����ܼ�¼��:
		int totalCount = 0;
		totalCount = journalDao.findCountJid();
		pageBean.setTotalCount(totalCount);
		// ������ҳ��:
		int totalPage = 0;
		// Math.ceil(totalCount / limit);
		if (totalCount % limit == 0) {
			totalPage = totalCount / limit;
		} else {
			totalPage = totalCount / limit + 1;
		}
		pageBean.setTotalPage(totalPage);
		// ÿҳ��ʾ�����ݼ���:
		// ���Ŀ�ʼ:
		int begin = (page - 1) * limit;
		List<Journal> list = journalDao.findByPageCid(begin, limit);

		// ��ȡ�ַ�����ʾ��������
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
		// ���õ�ǰҳ��:
		pageBean.setPage(page);
		// ����ÿҳ��ʾ��¼��:
		int limit = 5;
		pageBean.setLimit(limit);
		// �����ܼ�¼��:
		int totalCount = 0;
		totalCount = journalDao.findInfoJid(info);
		pageBean.setTotalCount(totalCount);
		// ������ҳ��:
		int totalPage = 0;
		// Math.ceil(totalCount / limit);
		if (totalCount % limit == 0) {
			totalPage = totalCount / limit;
		} else {
			totalPage = totalCount / limit + 1;
		}
		pageBean.setTotalPage(totalPage);
		// ÿҳ��ʾ�����ݼ���:
		// ���Ŀ�ʼ:
		int begin = (page - 1) * limit;
		List<Journal> list = journalDao.findByPageInfo(begin, limit, info);

		// ��ȡ�ַ�����ʾ��������
		for (Journal journal : list) {
			String text = journal.getText().substring(0, 500) + "... ...";
			journal.setText(text);
		}
		pageBean.setList(list);
		return pageBean;
	}

}
