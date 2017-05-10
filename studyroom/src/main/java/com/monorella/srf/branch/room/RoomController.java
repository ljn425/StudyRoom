package com.monorella.srf.branch.room;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.monorella.srf.branch.dto.Room;
import com.monorella.srf.branch.dto.Seat;

@Controller
public class RoomController {
	@Autowired
	private RoomDao roomDao;
	
	//열람실 등록
	@RequestMapping(value="/room/room_pro", method = RequestMethod.POST)
	public String room_pro(Room room, Model model){
		System.out.println("room_pro 열람실 등록");
		int result = roomDao.insertRoom(room);
		//열람실 등록 성공시
		if(result == 1){
			System.out.println("열람실 등록 성공");
			//열람석 등록
			ArrayList<Seat> seatli = new ArrayList<Seat>();
			//열람석 총 수 만큼 반복문
			for(int i=0; i<room.getSeat_num(); i++){
				Seat seat = new Seat();
				seat.setBranch_owner_cd(room.getBranch_owner_cd());
				seat.setRoom_cd(room.getRoom_cd());
				seat.setseat_cnumber(i+1);
				roomDao.insertSeat(seat);
				seatli.add(seat);
			}
			model.addAttribute("room", room);
			model.addAttribute("seat", seatli);
			return "room/chair_form";
		//열람실 등록실패시	
		}else{
			System.out.println("열람실 등록 실패");
		}
		return "room/room_form";
	}
	
	//열람실 등록폼
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
