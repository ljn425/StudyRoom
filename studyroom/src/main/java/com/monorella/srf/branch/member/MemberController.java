package com.monorella.srf.branch.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemberController {
	@Autowired
	private MemberDao memberDao;
	
	@RequestMapping(value="/member_form", method = RequestMethod.POST)
	public String member_form(Member member) {
		System.out.println("post 요청");
		System.out.println(member);
		memberDao.inputMember(member);
		return "redirect:/member_list";
	}
	
	@RequestMapping(value="/member_form", method = RequestMethod.GET)
	public String member_form() {
		System.out.println("member_form 요청");
		return "member/member_form";
		
	}
}
