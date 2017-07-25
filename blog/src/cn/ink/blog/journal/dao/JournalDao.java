package cn.ink.blog.journal.dao;

import java.util.List;

import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import cn.ink.blog.journal.po.Journal;
import cn.ink.blog.util.PageHibernateCallback;

public class JournalDao extends HibernateDaoSupport {

	public List<Journal> findJournal() {

		String hql = "FROM Journal";
		List<Journal> list = (List<Journal>) this.getHibernateTemplate().find(hql);
		return list;

	}

	/**
	 * 查找总记录数
	 * 
	 * @return
	 */
	public int findCountJid() {
		String hql = "select count(*) FROM Journal";
		List<Long> list = (List<Long>) this.getHibernateTemplate().find(hql);
		if (list != null && list.size() > 0) {
			return list.get(0).intValue();
		}
		return 0;
	}

	public List<Journal> findByPageCid(int begin, int limit) {
		String hql = "from Journal order by jid desc";
		List<Journal> list = this.getHibernateTemplate().execute(
				new PageHibernateCallback<Journal>(hql, null, begin, limit));
		if (list != null && list.size() > 0) {
			return list;
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	public Journal findJournalByJid(Integer jid) {
		// 查询jid最大的值
		List<Journal> list;
		String hql_1 = "select max(jid) from Journal";
		List<Integer> list_1 = (List<Integer>) this.getHibernateTemplate()
				.find(hql_1);
		Integer jidMax = list_1.get(0);
		// 判断传入值jid的范围
		String hql_2 = "FROM Journal WHERE jid=?";
		if (jid < 1) {
			list = (List<Journal>) this.getHibernateTemplate().find(hql_2,
					jidMax);
		} else if (jid > jidMax) {
			list = (List<Journal>) this.getHibernateTemplate().find(hql_2, 1);
		} else {
			list = (List<Journal>) this.getHibernateTemplate().find(hql_2, jid);
		}
		if (list != null) {
			return list.get(0);
		}
		return null;
	}

	public int findInfoJid(String info) {
		String hql = "select count(*) FROM Journal WHERE title LIKE '%" + info
				+ "%' OR text LIKE '%" + info + "%' OR author LIKE '%" + info
				+ "%'";
		List<Long> list = (List<Long>) this.getHibernateTemplate().find(hql);
		if (list != null && list.size() > 0) {
			return list.get(0).intValue();
		}
		return 0;
	}

	public List<Journal> findByPageInfo(int begin, int limit, String info) {
		String hql = "from Journal WHERE title LIKE '%" + info
				+ "%' OR text LIKE '%" + info + "%' OR author LIKE '%" + info
				+ "%' order by jid desc";
		List<Journal> list = this.getHibernateTemplate().execute(
				new PageHibernateCallback<Journal>(hql, null, begin, limit));
		if (list != null && list.size() > 0) {
			return list;
		}
		return null;
	}

}
