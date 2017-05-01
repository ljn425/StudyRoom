package com.monorella.srf.branch.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MemberController {
	@Autowired
	private MemberDao memberDao;
	
	@RequestMapping(value={"/member/member_list"}, method = RequestMethod.GET)
	public String joinList(Model model
            , @RequestParam(value="currentPage", required=false, defaultValue="1") int currentPage) {
		int joinCount = memberDao.getMemberCount();
		int pagePerRow = 10;
		int lastPage = (int)(Math.ceil(joinCount / pagePerRow));
		List<Member> list = memberDao.getMemberList(currentPage, pagePerRow);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("joinCount", joinCount);
		model.addAttribute("lastPage", lastPage);
		model.addAttribute("list", list);
		System.out.println("member_list 요청");
		return "member/member_list";
	}
	
	@RequestMapping(value="/member/member_form", method = RequestMethod.POST)
	public String member_form(Member member) {
		System.out.println("post 요청");
		System.out.println(member);
		memberDao.insertMember(member);
		return "redirect:member/member_list";
	}
	
	@RequestMapping(value="/member/member_form", method = RequestMethod.GET)
	public String member_form() {
		System.out.println("member_form 요청");
		return "member/member_form";
		
	}
}
