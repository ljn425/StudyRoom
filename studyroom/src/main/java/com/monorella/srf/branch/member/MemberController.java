package com.monorella.srf.branch.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.monorella.srf.branch.dto.Member;

@Controller
public class MemberController {
	@Autowired
	private MemberDao memberDao;
	
	@RequestMapping(value="/member/member_list", method = RequestMethod.GET)
	public String joinList(Model model
            , @RequestParam(value="currentPage", required=false, defaultValue="1") int currentPage) {
		System.out.println("/member/member_list 요청");
		
		int joinCount = 0;
		joinCount = memberDao.getMemberCount();
		int pagePerRow = 10;
		List<Member> list = memberDao.getMemberList(currentPage, pagePerRow);
		int lastPage = (int)(Math.ceil(joinCount / pagePerRow));
		if(joinCount%pagePerRow != 0) {
			lastPage++;
		}
		
		int countPage = 10;
		int startPage = ((currentPage - 1)/10)*10+1;
		int endPage = startPage + countPage-1;
		int nextPage = ((currentPage - 1)/10)*10+11;
		int previousPage = ((currentPage - 1)/10)*10-10+1;
		
		if(previousPage <= 0) {
			previousPage = 1;
		}
		
		if(endPage > lastPage) {
			previousPage = 1;
		}
		
		if(nextPage > lastPage) {
			nextPage = lastPage;
		}
		
		model.addAttribute("joinCount", joinCount);
		model.addAttribute("list", list);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("nextPage", nextPage);
		model.addAttribute("previousPage", previousPage);
		model.addAttribute("lastPage", lastPage);
		
		return "member/member_list";
	}
	
	@RequestMapping(value="/member/member_form", method = RequestMethod.POST)
	public String member_form(Member member) {
		System.out.println("post 요청");
		System.out.println(member);
		memberDao.inputMember(member);
		return "redirect:/member/member_list";
	}
	
	@RequestMapping(value="/member/member_form", method = RequestMethod.GET)
	public String member_form() {
		System.out.println("member_form 요청");
		return "member/member_form";
		
	}
}
