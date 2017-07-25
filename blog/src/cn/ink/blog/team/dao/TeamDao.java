package cn.ink.blog.team.dao;

import java.util.List;

import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import cn.ink.blog.team.po.Team;

public class TeamDao extends HibernateDaoSupport{

	/**
	 * ��ѯTeam�����г�Ա��Ϣ
	 * @return List<Team>
	 */
	public List<Team> findTeam() {
		String hql = "FROM Team";
		List<Team> list = (List<Team>) this.getHibernateTemplate().find(hql);
		return list;
	}
	
}
