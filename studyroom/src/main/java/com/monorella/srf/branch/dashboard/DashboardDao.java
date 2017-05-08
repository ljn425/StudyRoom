package com.monorella.srf.branch.dashboard;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class DashboardDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	
	//----------------------------------------------------회원 등록 경로-------------------------------------------------
	// 전단지
	public int selectPamphlet(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectPamphlet");
		return row;
	}
	// 지인소개
	public int selectIntroduction(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectIntroduction");
		return row;
	}
	// 인터넷
	public int selectInternet(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectInternet");
		return row;
	}
	// 플래카드
	public int selectPlacard(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectPlacard");
		return row;
	}
	// 기타
		public int selectEtc(){
			int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectEtc");
			return row;
	}
	
	//----------------------------------------------------회원 상태-------------------------------------------------
	//남자
	public int selectMen(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectMen");
		return row;
	}
	//여자
	public int selectWoman(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectWoman");
		return row;
	}
	//미결제 회원
	public int selectUnpaidMember(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectUnpaidMember");
		return row;
	}
	//부재중 회원
	public int selectAbsenceMember(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectAbsenceMember");
		return row;
	}
	//사용중 회원
	public int selectUseMember(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectUseMember");
		return row;
	}	
	//전체 회원
	public int selectMemberCount() {
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectMemberCount");
		return row;
	}
}
