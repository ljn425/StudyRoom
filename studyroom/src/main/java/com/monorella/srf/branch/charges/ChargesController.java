package com.monorella.srf.branch.charges;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.monorella.srf.branch.dto.Charges;

@Controller
public class ChargesController {
	@Autowired
	private ChargesDao chargesDao;
	//요금제 등록
	@RequestMapping(value="/charges/charges_pro" , method= RequestMethod.POST)
	public String chargesPro(Charges chares){
		System.out.println("요금제 등록 폼");
		System.out.println(chares);
		int result = chargesDao.insertCharges(chares);
		if(result == 1){
			System.out.println("요금제 등록 성공");
			return "charges/charges_form";
		}else{
			System.out.println("요금제 등록 실패");
		}
		return "charges/charges_form";
	}
	
	//요금제 설정 폼
	@RequestMapping(value="/charges/charges_form" , method= RequestMethod.GET)
	public String chargesFrom(){
		System.out.println("요금제 설정 폼");
		return "charges/charges_form";
	}
}
