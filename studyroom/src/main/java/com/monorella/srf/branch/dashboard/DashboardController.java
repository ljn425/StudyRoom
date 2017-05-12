package com.monorella.srf.branch.dashboard;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.monorella.srf.branch.dto.Member;

@Controller
public class DashboardController {
	
	@Autowired
	DashboardDao dashboardDao;
	
	// 차트 
	@RequestMapping(value="/chart" , method = RequestMethod.GET)
	public String chart(){
		System.out.println("DashboardController-> chart()");
		return "dashboard/chart";
	}
	
	// list test
	@RequestMapping(value="/dashboard/use_member_list" , method = RequestMethod.GET)
	public String selectUseMemberList(Model model){
		List<Member> useMemberList = dashboardDao.selectUseMemberList();
		model.addAttribute("useMemberList", useMemberList);
		return "dashboard/use_member_list";
	}
	
	
	// 메뉴 - 회원 현황 폼
	@RequestMapping(value="/dashboard/today_status" , method = RequestMethod.GET)
	public String selectMemberStatus(Model model){
		System.out.println("DashboardController-> selectMemberStatus()");
		
		// 열람석 상태-------------------------------------------
		int useMemberNo = dashboardDao.selectUseSeatCount(); //사용중 열람석
		int absenceMemberNo = dashboardDao.selectAbsenceSeatCount(); //부재중 열람석 
		int unpaidMemberNo = dashboardDao.selectUnpaidSeatCount(); // 미결제 열람석
		
		// 이용중 회원
		int useTeensWomanMemberNo = dashboardDao.selectUseTeensWomanMemberCount(); // 이용중 10대 여자
		int useTeensMenMemberNo = dashboardDao.selectUseTeensMenMemberCount();     // 이용중 10대 남자
		int useTwentyWomanMemberNo = dashboardDao.selectUseTwentyWomanMemberCount(); // 이용중 20대 여자
		int useTwentyMenMemberNo = dashboardDao.selectUseTwentyMenMemberCount();     // 이용중 20대 남자
		int useThirtyWomanMemberNo = dashboardDao.selectUseThirtyWomanMemberCount(); // 이용중 30대 여자
		int useThirtyMenMemberNo = dashboardDao.selectUseThirtyMenMemberCount();     // 이용중 30대 남자
		int useFortyWomanMemberNo = dashboardDao.selectUseFortyWomanMemberCount(); // 이용중 40대 여자
		int useFortyMenMemberNo = dashboardDao.selectUseFortyMenMemberCount();     // 이용중 40대 남자
		int useEtcWomanMemberNo = dashboardDao.selectUseEtcWomanMemberCount(); // 이용중 기타연령 여자
		int useEtcMenMemberNo = dashboardDao.selectUseEtcMenMemberCount();     // 이용중 기타연령 남자
		List<Member> useMemberList = dashboardDao.selectUseMemberList(); //이용중 회원 목록
		
		// 회원
		int MenNo = dashboardDao.selectMenCount(); //여성회원
		int womanNo = dashboardDao.selectWomanCount(); //남성회원
		int todayMemberNo = dashboardDao.selectTodayInsertMemberCount(); //금일 등록 회원
		
		// 등록경로-------------------------------------------
		int pamphletNo = dashboardDao.selectPamphletCount(); //전단지
		int placardNo = dashboardDao.selectPlacardCount(); //플래카드
		int introductionNo = dashboardDao.selectIntroductionCount(); //지인소개
		int internetNo = dashboardDao.selectInternetCount(); //인터넷
		int etctcNo = dashboardDao.selectEtcCount(); //기타
		
		//System.out.println("DashboardController-> selectMemberStatus()-> useMemberNo: "+useMemberNo);
		//System.out.println("DashboardController-> selectMemberStatus()-> absenceMemberNo: "+absenceMemberNo);
		//System.out.println("DashboardController-> selectMemberStatus()-> unpaidMemberNo: "+unpaidMemberNo);
		
		System.out.println("DashboardController-> selectMemberStatus()-> useTeensWomanMemberNo: "+useTeensWomanMemberNo);
		System.out.println("DashboardController-> selectMemberStatus()-> useTeensMenMemberNo: "+useTeensMenMemberNo);
		System.out.println("DashboardController-> selectMemberStatus()-> useTwentyWomanMemberNo: "+useTwentyWomanMemberNo);
		System.out.println("DashboardController-> selectMemberStatus()-> useTwentyMenMemberNo: "+useTwentyMenMemberNo);
		System.out.println("DashboardController-> selectMemberStatus()-> useThirtyWomanMemberNo: "+useThirtyWomanMemberNo);
		System.out.println("DashboardController-> selectMemberStatus()-> useThirtyMenMemberNo: "+useThirtyMenMemberNo);
		System.out.println("DashboardController-> selectMemberStatus()-> useFortyWomanMemberNo: "+useFortyWomanMemberNo);
		System.out.println("DashboardController-> selectMemberStatus()-> useFortyMenMemberNo: "+useFortyMenMemberNo);
		System.out.println("DashboardController-> selectMemberStatus()-> useEtcWomanMemberNo: "+useEtcWomanMemberNo);
		System.out.println("DashboardController-> selectMemberStatus()-> useEtcMenMemberNo: "+useEtcMenMemberNo);
		//System.out.println("DashboardController-> selectMemberStatus()-> useMemberList: "+useMemberList);
		
		//System.out.println("DashboardController-> selectMemberStatus()-> MenNo: "+MenNo);
		//System.out.println("DashboardController-> selectMemberStatus()-> womanNo: "+womanNo);
		//System.out.println("DashboardController-> selectMemberStatus()-> todayMemberNo: "+todayMemberNo);
		
		//System.out.println("DashboardController-> selectMemberStatus()-> pamphletNo: "+pamphletNo);
		//System.out.println("DashboardController-> selectMemberStatus()-> placardNo: "+placardNo);
		//System.out.println("DashboardController-> selectMemberStatus()-> introductionNo: "+introductionNo);
		//System.out.println("DashboardController-> selectMemberStatus()-> internetNo: "+internetNo);
		//System.out.println("DashboardController-> selectMemberStatus()-> etctcNo: "+etctcNo);
		
		model.addAttribute("useMemberNo", useMemberNo);
		model.addAttribute("absenceMemberNo", absenceMemberNo);
		model.addAttribute("unpaidMemberNo", unpaidMemberNo);
			
		model.addAttribute("useTeensWomanMemberNo", useTeensWomanMemberNo);
		model.addAttribute("useTeensMenMemberNo", useTeensMenMemberNo);
		model.addAttribute("useTwentyWomanMemberNo", useTwentyWomanMemberNo);
		model.addAttribute("useTwentyMenMemberNo", useTwentyMenMemberNo);
		model.addAttribute("useThirtyWomanMemberNo", useThirtyWomanMemberNo);
		model.addAttribute("useThirtyMenMemberNo", useThirtyMenMemberNo);
		model.addAttribute("useFortyWomanMemberNo", useFortyWomanMemberNo);
		model.addAttribute("useFortyMenMemberNo", useFortyMenMemberNo);
		model.addAttribute("useEtcWomanMemberNo", useEtcWomanMemberNo);
		model.addAttribute("useEtcMenMemberNo", useEtcMenMemberNo);
		model.addAttribute("useMemberList", useMemberList);
		
		model.addAttribute("MenNo", MenNo);
		model.addAttribute("womanNo", womanNo);
		model.addAttribute("todayMemberNo", todayMemberNo);
		
		model.addAttribute("pamphletNo", pamphletNo);
		model.addAttribute("placardNo", placardNo);
		model.addAttribute("introductionNo", introductionNo);
		model.addAttribute("internetNo", internetNo);
		model.addAttribute("etctcNo", etctcNo);
		
		return "dashboard/today_status";
	}
	
	// 오늘의 현황 폼 요청
	@RequestMapping(value="/dashboard/home" , method = RequestMethod.GET)
	public String home(Model model){
		System.out.println("DashboardController-> home()");
		int memberNo = dashboardDao.selectMemberCount();
		
		System.out.println("DashboardController-> home()-> membeNom: "+memberNo);
		
		model.addAttribute("memberNo", memberNo);
		
		return "dashboard/home";
	}
}
