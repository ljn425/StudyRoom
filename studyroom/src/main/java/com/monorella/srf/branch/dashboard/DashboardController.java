package com.monorella.srf.branch.dashboard;

import java.text.SimpleDateFormat;
import java.util.Date;
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
	
	// test
	@RequestMapping(value="/test" , method = RequestMethod.GET)
	public String test(){
		return "/dashboard/test";
	}
	
	// 메뉴 - 통계 폼
	@RequestMapping(value="/dashboard/all_status" , method = RequestMethod.GET)
	public String selectAllStatus(Model model){
		System.out.println("DashboardController-> selectAllStatus()");
		
		// 오늘 날짜 및 해당 월 구하기
		Date today = new Date();
	    SimpleDateFormat simpleToday = new SimpleDateFormat("yyyy-MM-dd");
	    SimpleDateFormat month = new SimpleDateFormat("M");
	    
	    // 회원
	    int monthMemberNo = dashboardDao.selectMonthInsertMemberCount(); // 당월 가입 회원 수
	    int MemberNo = dashboardDao.selectMemberCount(); //전체 회원 수
 		int MenNo = dashboardDao.selectMenCount(); //여성회원
 		int womanNo = dashboardDao.selectWomanCount(); //남성회원
 		
 		//System.out.println("DashboardController-> selectTodayStatus()-> simpleToday: "+ simpleToday.format(today));
 		//System.out.println("DashboardController-> selectTodayStatus()-> month: "+ month.format(today));
	    
		//System.out.println("DashboardController-> selectTodayStatus()-> monthMemberNo: "+monthMemberNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> MemberNo: "+MemberNo);
 		//System.out.println("DashboardController-> selectTodayStatus()-> womanNo: "+womanNo);
 		//System.out.println("DashboardController-> selectTodayStatus()-> womanNo: "+womanNo);
 		
	    model.addAttribute("today", simpleToday.format(today));
	    model.addAttribute("month", month.format(today));
	    
	    model.addAttribute("monthMemberNo", monthMemberNo);
	    model.addAttribute("MemberNo", MemberNo);
	    model.addAttribute("MenNo", MenNo);
		model.addAttribute("womanNo", womanNo);
		
		return "dashboard/all_status";
	}
	
	// 메뉴 - 오늘의 현황 폼
	@RequestMapping(value="/dashboard/today_status" , method = RequestMethod.GET)
	public String selectTodayStatus(Model model){
		System.out.println("DashboardController-> selectTodayStatus()");
		
		// 오늘 날짜
		Date today = new Date();
	    SimpleDateFormat simpleToday = new SimpleDateFormat("yyyy-MM-dd");
	    //System.out.println("현재날짜 : "+ simpleToday.format(today));
		
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
		
		//System.out.println("DashboardController-> selectTodayStatus()-> useMemberNo: "+useMemberNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> absenceMemberNo: "+absenceMemberNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> unpaidMemberNo: "+unpaidMemberNo);
		
		//System.out.println("DashboardController-> selectTodayStatus()-> useTeensWomanMemberNo: "+useTeensWomanMemberNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> useTeensMenMemberNo: "+useTeensMenMemberNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> useTwentyWomanMemberNo: "+useTwentyWomanMemberNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> useTwentyMenMemberNo: "+useTwentyMenMemberNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> useThirtyWomanMemberNo: "+useThirtyWomanMemberNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> useThirtyMenMemberNo: "+useThirtyMenMemberNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> useFortyWomanMemberNo: "+useFortyWomanMemberNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> useFortyMenMemberNo: "+useFortyMenMemberNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> useEtcWomanMemberNo: "+useEtcWomanMemberNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> useEtcMenMemberNo: "+useEtcMenMemberNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> useMemberList: "+useMemberList);
		
		//System.out.println("DashboardController-> selectTodayStatus()-> MenNo: "+MenNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> womanNo: "+womanNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> todayMemberNo: "+todayMemberNo);
		
		//System.out.println("DashboardController-> selectTodayStatus()-> pamphletNo: "+pamphletNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> placardNo: "+placardNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> introductionNo: "+introductionNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> internetNo: "+internetNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> etctcNo: "+etctcNo);
		
		model.addAttribute("today", simpleToday.format(today));
		
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
}
