package com.monorella.srf.branch.payment;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.monorella.srf.branch.dto.Member;
import com.monorella.srf.branch.dto.Payment;
import com.monorella.srf.branch.payment.PaymentDao;

@Controller
public class PaymentController {
		
	@RequestMapping(value="/payment/newwindow", method = RequestMethod.GET)
	public String paymentFrom(
			@RequestParam(value="branch_owner_cd", required=true) String branch_owner_cd,	
			@RequestParam(value="room_cd", required=true) String room_cd,
			@RequestParam(value="seat_cd", required=true) String seat_cd,
			@RequestParam(value="member_cd", required=true) String member_cd
			){
		System.out.println(member_cd);
		return "payment/newwindow";
	}
	
	@RequestMapping(value="/payment/member1", method = RequestMethod.GET)
	public String paymentpro(){
		return "payment/member1";
	}
	
	// 입력 post 요청
	@RequestMapping(value="/payment/paymentend", method = RequestMethod.POST)
	public String payment(Payment payment){
		System.out.println("post 요청");
		PaymentDao.insertPayment(payment);
		return "payment/paymentend";
	}
}
