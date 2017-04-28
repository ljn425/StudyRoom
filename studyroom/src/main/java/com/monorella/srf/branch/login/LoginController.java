package com.monorella.srf.branch.login;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.monorella.srf.branch.dto.BranchOwner;

@Controller
public class LoginController {
	//로그인 폼
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String LoginFrom(){ 
		return "login_form";
	}
	
	//로그인 처리
	@RequestMapping(value = "/login/loginpro", method = RequestMethod.POST)
	public String LoginPro(BranchOwner branchOwner){
		System.out.println("로그인 처리 요청");
		System.out.println(branchOwner);
		
		return "home";
	}
}
