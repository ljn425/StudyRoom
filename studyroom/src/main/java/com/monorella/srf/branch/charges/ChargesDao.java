package com.monorella.srf.branch.charges;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.monorella.srf.branch.dto.Charges;

@Repository
public class ChargesDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	//요금코드 MAX값 가져오기
	public String selectChargesCode(){
		return sqlSessionTemplate.selectOne("com.monorella.srf.branch.charges.ChargesMapper.selectChargesCode");
	}
	
	//요금제 delete
	public int deleteCharges(String charges_code){
		return sqlSessionTemplate.delete("com.monorella.srf.branch.charges.ChargesMapper.deleteCharges", charges_code);
	}
	
	//요금제 select
	public List<Charges> selectCharges(){
		return sqlSessionTemplate.selectList("com.monorella.srf.branch.charges.ChargesMapper.selectCharges");
	}
	
	//요금제 등록
	public int insertCharges(Charges chares){
		System.out.println("insertCharge");

		                                                                                                                                                                                                                                                                                                                                                                             
		System.out.println(chares.getSeat_charges_code());
		return sqlSessionTemplate.insert("com.monorella.srf.branch.charges.ChargesMapper.insertCharges", chares);
	}
}
