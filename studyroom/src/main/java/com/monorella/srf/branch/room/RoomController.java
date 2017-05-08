package com.monorella.srf.branch.room;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class RoomController {
	//열람실 등록
   @RequestMapping(value="/room/room_form", method = RequestMethod.GET)
	public String room_form(){
		System.out.println("room_form 요청");
		return "room/room_form";
	}
	//좌석등록
	@RequestMapping(value="/room/chair_form", method = RequestMethod.GET)
	public String chair_form() {
		System.out.println("chair_form 요청");
		return "room/chair_form";
	}
	//열람실 현황
	@RequestMapping(value="/room/room_main", method = RequestMethod.GET)
	public String room_main(){
		return "room/room_main";
	}
}
