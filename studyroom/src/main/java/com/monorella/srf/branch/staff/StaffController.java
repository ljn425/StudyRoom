package com.monorella.srf.branch.staff;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.monorella.srf.branch.dto.Staff;
@Controller
public class StaffController {
	@Autowired
	private StaffDao staffDao;
	
	// 직원 리스트 요청 
	@RequestMapping(value = "/staff/staff_list", method = RequestMethod.GET)
	public String StaffList(Model model){
		System.out.println("StaffController-> StaffList()");
		List<Staff> list = staffDao.getStaffList();
		model.addAttribute("list", list);
		return "staff/staff_list";
		
	}
	// 입력(액션)요청
	@RequestMapping(value = "/staff/staff_pro", method = RequestMethod.POST)
	public String staffPro(Staff staff){
		System.out.println("StaffController-> Staff()");
		staffDao.insertStaff(staff);
		return "redirect:/staff/staff_list";// 글입력후 "/staff_list"로 리다이렉트(재요청)
	}
	
	// 입력 폼 요청
		@RequestMapping(value = "/staff/staff_form", method = RequestMethod.GET)
			public String staffForm(){
				System.out.println("StaffController -> staff_form요청");
				return "staff/staff_form";
			}
}
