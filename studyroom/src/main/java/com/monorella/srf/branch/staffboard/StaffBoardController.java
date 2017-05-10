package com.monorella.srf.branch.staffboard;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.monorella.srf.branch.dto.StaffBoard;
@Controller
public class StaffBoardController {
	@Autowired
	private StaffBoardDao staffboardDao;
	// 입력(액션)요청
		@RequestMapping(value = "/staff/staff_pro", method = RequestMethod.POST)
		public String staffPro(StaffBoard staffboard){
			System.out.println("StaffController-> Staff()");
			staffboardDao.insertStaffBoard(staffboard);
			return "redirect:/staff/staff_list";// 글입력후 "/staff_list"로 리다이렉트(재요청)
		}
		
		// 입력 폼 요청
			@RequestMapping(value = "/staff/staff_form", method = RequestMethod.GET)
				public String staffForm(){
					System.out.println("StaffController -> staff_form요청");
					return "staff/staff_form";
				}
}
