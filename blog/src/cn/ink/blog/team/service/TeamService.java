package cn.ink.blog.team.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import cn.ink.blog.team.dao.TeamDao;
import cn.ink.blog.team.po.Team;

@Transactional
public class TeamService {
	private TeamDao teamDao;

	public void setTeamDao(TeamDao teamDao) {
		this.teamDao = teamDao;
	}

	public List<Team> findTeam() {
		return teamDao.findTeam();
	}

}
