package com.monorella.srf.branch.room;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class RoomController {

	@RequestMapping(value="/room/room_form", method = RequestMethod.GET)
	public String room_form() {
		System.out.println("room_form 요청");
		return "room/room_form";
	}
	@RequestMapping(value="/room/room_main", method = RequestMethod.GET)
	public String room_main(){
		return "room/room_main";
	}
}
