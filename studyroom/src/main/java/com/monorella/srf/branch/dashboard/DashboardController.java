package com.monorella.srf.branch.dashboard;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class DashboardController {
	
	@Autowired
	
	
	// 대시보드 폼 요청
	@RequestMapping(value="/dashboard/home" , method = RequestMethod.GET)
	public String home(Model model){
		
		return "dashboard/home";
	}
}
