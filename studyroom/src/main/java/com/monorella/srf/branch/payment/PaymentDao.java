package com.monorella.srf.branch.payment;

import com.monorella.srf.branch.dto.Member;
import com.monorella.srf.branch.dto.Payment;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.monorella.srf.branch.dto.Member;

@Repository
public class PaymentDao {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	// 회원추가 메서드
	public int inserPayment(Payment payment) {
		System.out.println("1st insertpayment");
		System.out.println(payment);
		return sqlSessionTemplate.insert("com.monorella.srf.branch.payment.PaymentMapper.insertpayment", payment);
	}

	public static void insertPayment(Payment payment) {
	}
}
