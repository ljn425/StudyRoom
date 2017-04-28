package com.monorella.srf.branch.login;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.monorella.srf.branch.dto.BranchOwner;

@Repository
public class LoginDao {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public int loginBranchOwner(BranchOwner branchOwner){

		return 1;
	}
	
}
