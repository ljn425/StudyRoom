package com.monorella.srf.branch.staff;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
@Controller
public class StaffController {

	@RequestMapping(value = "/staff", method = RequestMethod.GET)
		public String staff_form(){
			System.out.println("staff_form요청");
			return "staff/staff_form";
		}
	
}
