package com.monorella.srf.branch.dashboard;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	
	// 메뉴 - 회원 현황 폼
	@RequestMapping(value="/dashboard/member_status" , method = RequestMethod.GET)
	public String selectMemberStatus(Model model){
		System.out.println("DashboardController-> selectMemberStatus()");
		
		// 열람석 상태-------------------------------------------
		int useMemberNo = dashboardDao.selectUseSeat(); //사용중 열람석
		int absenceMemberNo = dashboardDao.selectAbsenceSeat(); //부재중 열람석 
		int unpaidMemberNo = dashboardDao.selectUnpaidSeat(); // 미결제 열람석
		
		// 회원
		int MenNo = dashboardDao.selectMen(); //여성회원
		int womanNo = dashboardDao.selectWoman();//남성회원
		
		
		// 등록경로-------------------------------------------
		int pamphletNo = dashboardDao.selectPamphlet(); //전단지
		int placardNo = dashboardDao.selectPlacard(); //플래카드
		int introductionNo = dashboardDao.selectIntroduction(); //지인소개
		int internetNo = dashboardDao.selectInternet(); //인터넷
		int etctcNo = dashboardDao.selectEtc(); //기타
		
		System.out.println("DashboardController-> selectMemberStatus()-> useMemberNo: "+useMemberNo);
		System.out.println("DashboardController-> selectMemberStatus()-> absenceMemberNo: "+absenceMemberNo);
		System.out.println("DashboardController-> selectMemberStatus()-> unpaidMemberNo: "+unpaidMemberNo);
		System.out.println("DashboardController-> selectMemberStatus()-> MenNo: "+MenNo);
		System.out.println("DashboardController-> selectMemberStatus()-> womanNo: "+womanNo);
		
		System.out.println("DashboardController-> selectMemberStatus()-> pamphletNo: "+pamphletNo);
		System.out.println("DashboardController-> selectMemberStatus()-> placardNo: "+placardNo);
		System.out.println("DashboardController-> selectMemberStatus()-> introductionNo: "+introductionNo);
		System.out.println("DashboardController-> selectMemberStatus()-> internetNo: "+internetNo);
		System.out.println("DashboardController-> selectMemberStatus()-> etctcNo: "+etctcNo);
		
		model.addAttribute("useMemberNo", useMemberNo);
		model.addAttribute("absenceMemberNo", absenceMemberNo);
		model.addAttribute("unpaidMemberNo", unpaidMemberNo);
		model.addAttribute("MenNo", MenNo);
		model.addAttribute("womanNo", womanNo);
		
		model.addAttribute("pamphletNo", pamphletNo);
		model.addAttribute("placardNo", placardNo);
		model.addAttribute("introductionNo", introductionNo);
		model.addAttribute("internetNo", internetNo);
		model.addAttribute("etctcNo", etctcNo);
		
		return "dashboard/member_status";
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
