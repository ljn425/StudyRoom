package com.monorella.srf.branch.payment;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PaymentController {
	
	@RequestMapping(value="/payment/payment_form", method = RequestMethod.GET)
	public String paymentFrom(){
		return "payment/payment_form";
	}
}
