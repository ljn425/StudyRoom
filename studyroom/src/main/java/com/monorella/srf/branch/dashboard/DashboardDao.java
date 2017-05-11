package com.monorella.srf.branch.dashboard;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.monorella.srf.branch.dto.Member;

@Repository
public class DashboardDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	
	//----------------------------------------------------회원 등록 경로-------------------------------------------------
	// 전단지
	public int selectPamphletCount(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectPamphletCount");
		return row;
	}
	// 지인소개
	public int selectIntroductionCount(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectIntroductionCount");
		return row;
	}
	// 인터넷
	public int selectInternetCount(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectInternetCount");
		return row;
	}
	// 플래카드
	public int selectPlacardCount(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectPlacardCount");
		return row;
	}
	// 기타
		public int selectEtcCount(){
			int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectEtcCount");
			return row;
	}
	
	
	//----------------------------------------------------열람석 상태-------------------------------------------------
	//미결제 열람석
	public int selectUnpaidSeatCount(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectUnpaidSeatCount");
		return row;
	}
	//부재중 열람석
	public int selectAbsenceSeatCount(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectAbsenceSeatCount");
		return row;
	}
	//사용중 열람석
	public int selectUseSeatCount(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectUseSeatCount");
		return row;
	}		
	
	
	//----------------------------------------------------연령대별 회원-------------------------------------------------
	//이용중 기타연령 회원 남
	public int selectUseEtcMenMemberCount(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectUseEtcMenMemberCount");
		return row;
	}
	//이용중 기타연령 회원 여
	public int selectUseEtcWomanMemberCount(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectUseEtcWomanMemberCount");
		return row;
	}
	//이용중 40대 회원 남
	public int selectUseFortyMenMemberCount(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectUseFortyMenMemberCount");
		return row;
	}
	//이용중 40대 회원 여
	public int selectUseFortyWomanMemberCount(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectUseFortyWomanMemberCount");
		return row;
	}
	//이용중 30대 회원 남
	public int selectUseThirtyMenMemberCount(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectUseThirtyMenMemberCount");
		return row;
	}
	//이용중 30대 회원 여
	public int selectUseThirtyWomanMemberCount(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectUseThirtyWomanMemberCount");
		return row;
	}
	//이용중 20대 회원 남
	public int selectUseTwentyMenMemberCount(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectUseTwentyMenMemberCount");
		return row;
	}
	//이용중 20대 회원 여
	public int selectUseTwentyWomanMemberCount(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectUseTwentyWomanMemberCount");
		return row;
	}
	//이용중 10대 회원 여
	public int selectUseTeensWomanMemberCount(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectUseTeensWomanMemberCount");
		return row;
	}
	//이용중 10대 회원 남
	public int selectUseTeensMenMemberCount(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectUseTeensMenMemberCount");
		return row;
	}
	//이용중 회원 목록
	public List<Member> selectUseMemberList(){
		List<Member> useMember = sqlSessionTemplate.selectList("com.monorella.srf.branch.dashboard.DashboardMapper.selectUseMemberList");
		return useMember;
	}
	
	
	//----------------------------------------------------회원-------------------------------------------------
	//금일 등록회원
	public int selectTodayInsertMemberCount(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectTodayInsertMemberCount");
		return row;
	}
	//남자
	public int selectMenCount(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectMenCount");
		return row;
	}
	//여자
	public int selectWomanCount(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectWomanCount");
		return row;
	}
	//전체 회원
	public int selectMemberCount() {
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectMemberCountCount");
		return row;
	}
}
