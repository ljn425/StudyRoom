package com.monorella.srf.branch.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.monorella.srf.branch.dto.Member;
import com.monorella.srf.branch.member.MemberDao;

@Controller
public class MemberController {
	@Autowired
	private MemberDao memberDao;

	// 회원 삭제 폼 요청
	@RequestMapping(value="/member/member_remove", method = RequestMethod.GET)
	public String memberRemove(@RequestParam(value="member_cd", required=true) String member_cd){
		System.out.println("/member/member_remove 요청");
		return "member/member_remove";
	}
	
	// 회원 삭제 요청
	@RequestMapping(value ="/member/member_remove", method = RequestMethod.POST)
	public String memberRemove(@RequestParam(value="member_cd") String member_cd
			, @RequestParam(value="branch_owner_cd") String branch_owner_cd) {
		memberDao.removeMember(member_cd, branch_owner_cd);
		System.out.println("삭제 완료");
		return "redirect:/member/member_list";
	}
	
	// 회원 수정 폼 요청
	@RequestMapping(value="/member/member_modify", method = RequestMethod.GET)
	public String memberModify(Model model
			, @RequestParam(value="member_cd", required=true) String member_cd) {
		System.out.println("/member/member_modify2 요청");
		Member member = memberDao.getMember(member_cd);
		model.addAttribute("member", member);
		return "member/member_modify";	
		
	}
	
	// 회원 수정 요청
	@RequestMapping(value ="/member/member_modify", method = RequestMethod.POST)
	public String boardModify(Member member){
		System.out.println("/member/member_modify1 요청");
		memberDao.modifyMember(member);
		return "redirect:/member/member_view?member_cd="+member.getMember_cd();		
	}
		
	// 회원 상세 요청
	@RequestMapping(value="/member/member_view", method = RequestMethod.GET)
	public String MemberView(Model model 
			, @RequestParam(value="member_cd")String member_cd){
		System.out.println("/member/member_view 요청");
		Member member = memberDao.getMember(member_cd);
		model.addAttribute("member", member);
		return "member/member_view";
	}
	
	//회원 검색 요청
	@RequestMapping(value="/member/member_search" , method = {RequestMethod.GET, RequestMethod.POST})
	public String MemberSearch(Model model
			, @RequestParam("so") String so
			, @RequestParam("sv") String sv){
		System.out.println("MemberController->MemberSearch()" + so + sv);
		List<Member> searchlist = memberDao.searchMember(so, sv);
		System.out.println(searchlist);
		model.addAttribute("searchlist", searchlist);
		model.addAttribute("so", so);
		model.addAttribute("sv", sv);
		return "member/member_search";
	}
	
	// 리스트 및 페이징 요청
	@RequestMapping(value="/member/member_list", method = RequestMethod.GET)
	public String selectMemberList(Model model
            , @RequestParam(value="currentPage", required=false, defaultValue="1") int currentPage) {
		System.out.println("/member/member_list 요청");
		
		int joinCount = 0;
		joinCount = memberDao.selectMemberCount();
		int pagePerRow = 5;
		List<Member> list = memberDao.selectMemberList(currentPage, pagePerRow);
		int lastPage = (int)(Math.ceil(joinCount / pagePerRow));
		if(joinCount%pagePerRow != 0) {
			lastPage++;
		}
		
		int countPage = 5;
		int startPage = ((currentPage - 1)/5)*5+1;
		int endPage = startPage + countPage-1;
		int nextPage = ((currentPage - 1)/5)*5+2;
		int previousPage = ((currentPage - 1)/5)*5-5+1;
		
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
	
	// 입력 post 요청
	@RequestMapping(value="/member/member_form", method = RequestMethod.POST)
	public String insertMember(Member member) {
		System.out.println("post 요청");
		System.out.println(member);
		memberDao.insertMember(member);
		return "redirect:/member/member_list";
	}
	
	// 폼 요청
	@RequestMapping(value="/member/member_form", method = RequestMethod.GET)
	public String member_form() {
		System.out.println("member_form 요청");
		return "member/member_form";
		
	}
}