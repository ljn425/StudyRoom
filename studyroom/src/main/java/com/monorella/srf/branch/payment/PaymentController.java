package com.monorella.srf.branch.payment;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class PaymentController {
	
	
	
	
	@RequestMapping(value="/payment/newwindow", method = RequestMethod.GET)
	public String paymentFrom(
			@RequestParam(value="seat_cd", required=true) String member_cd
			){
		System.out.println(member_cd);
		return "payment/newwindow";
	}
}
