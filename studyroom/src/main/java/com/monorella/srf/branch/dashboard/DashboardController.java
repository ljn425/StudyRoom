package com.monorella.srf.branch.dashboard;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.monorella.srf.branch.member.MemberDao;

@Controller
public class DashboardController {
	
	@Autowired
	MemberDao memberDao;
	
	// 차트 
	@RequestMapping(value="/chart" , method = RequestMethod.GET)
	public String chart(){
		System.out.println("DashboardController-> chart()");
		return "dashboard/chart";
	}
	// 메뉴 - 회원 현황 폼
	@RequestMapping(value="/dashboard/member_status" , method = RequestMethod.GET)
	public String selectMemberStatus(){
		System.out.println("DashboardController-> selectMemberStatus()");
		return "dashboard/member_status";
	}
	// 오늘의 현황 폼 요청
	@RequestMapping(value="/dashboard/home" , method = RequestMethod.GET)
	public String home(Model model){
		System.out.println("DashboardController-> home()");
		int memberNom = memberDao.selectMemberCount();
		System.out.println("DashboardController-> home()-> membeNom: "+memberNom);
		model.addAttribute("memberNom", memberNom);
		return "dashboard/home";
	}
}
