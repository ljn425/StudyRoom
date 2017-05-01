package com.monorella.srf.branch.dashboard;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class DashboardController {
	
	@RequestMapping(value="/dashboard/home" , method = RequestMethod.GET)
	public String home(){
		return "dashboard/home";
	}
}
