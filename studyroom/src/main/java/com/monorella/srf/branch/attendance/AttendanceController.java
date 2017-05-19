package com.monorella.srf.branch.attendance;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.monorella.srf.branch.dto.Member;
import com.monorella.srf.branch.dto.SeatTime;

@Controller
public class AttendanceController {
	@Autowired
	private AttendanceDao attendanceDao;
	
	//출결번호 입력 처리
	@RequestMapping(value="/attendance/attendance_pro", method=RequestMethod.POST)
	public ResponseEntity<String> attendance_pro(@RequestParam(value="inout_num", required=true) String inout_num
								,@RequestParam(value="now_date", required=true) String now_date){
		System.out.println("attendance_pro() inout_num :" + inout_num);
		System.out.println("attendance_pro() now_time :" + now_date );
		//출결번호 체크
		Member member = attendanceDao.selectInoutNum(inout_num);
		
		if(member.getMember_nm() != null){
			System.out.println("출결번호 체크 확인");
			//입실 여부 체크
			String seat_state = attendanceDao.selectSeatState(member);
			System.out.println("seat_state :" + seat_state);
			if(seat_state.equals("빈좌석") || seat_state.equals("퇴실")){
				//member seat_state 변경
				seat_state = "입실";
				//입실시간 입력
				attendanceDao.insertSeatInTime(member);
			}else{
				//member seat_state 변경
				seat_state = "퇴실";
				SeatTime seattime = attendanceDao.selectSeatTimeCd(member, now_date);
				System.out.println(seattime);
				int result = attendanceDao.modifySeatOutTime(seattime);
				System.out.println("퇴실 시간 입력 결과 : " + result);
				if(result == 1){
					System.out.println("퇴실 시간 입력 성공");
				}
			}
			//입퇴실 수정
			attendanceDao.modifySeatState(seat_state, member);
			//입실시간 퇴실시간 초기화
			
			//입퇴실 여부 확인 JSON
			
			JSONObject jsonMain = new JSONObject(); 
			jsonMain.put("name", member.getMember_nm());
			jsonMain.put("status", seat_state);
			System.out.println(jsonMain.toString());
			//HttpHeaders 객체 생성
			HttpHeaders responseHeaders = new HttpHeaders();
			responseHeaders.add("Content-Type", "application/json; charset=UTF-8");
		    return new ResponseEntity<String>(jsonMain.toString(), responseHeaders, HttpStatus.OK);  	
		}
	    return null; 
	}
	
	//출결번호 입력 폼
	@RequestMapping(value="/attendance/attendance_form" , method=RequestMethod.GET)
	public String attendance_from(){
		System.out.println("attendance_from()");
		return "attendance/attendance_form";
	}
	//출결번호 입력 창
	@RequestMapping(value="/attendance/attendance_input" , method=RequestMethod.GET)
	public String attendance_input(){
		System.out.println("attendance_input()");
		return "attendance/attendance_input";
	}
}
