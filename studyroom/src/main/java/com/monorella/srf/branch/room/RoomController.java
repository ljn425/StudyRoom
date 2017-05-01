package com.monorella.srf.branch.room;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class RoomController {

	@RequestMapping(value="/room/room_form", method = RequestMethod.GET)
	public String room_form() {
		System.out.println("room_form 요청");
		return "room/room_form";
	}
}
