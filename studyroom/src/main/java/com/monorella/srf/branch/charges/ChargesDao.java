package com.monorella.srf.branch.charges;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.monorella.srf.branch.dto.Charges;

@Repository
public class ChargesDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	//요금제 등록
	public int insertCharges(Charges chares){
		if(chares.getSeat_charges_code() == null){
			chares.setSeat_charges_code("seat_charges_code1");
		}
		return sqlSessionTemplate.insert("com.monorella.srf.branch.charges.ChargesMapper.insertCharges", chares);
	}
}
