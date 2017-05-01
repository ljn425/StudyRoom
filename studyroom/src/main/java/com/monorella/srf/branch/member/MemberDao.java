package com.monorella.srf.branch.member;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public int getMemberCount() {
		System.out.println("2st getMemberCount");
		return sqlSessionTemplate.selectOne("com.monorella.srf.branch.member.getMemberCount");
		
	}
	
	public int inputMember(Member member) {
		System.out.println("1st inputMember");
		System.out.println(member);
		return sqlSessionTemplate.insert("com.monorella.srf.branch.member.inputMember", member);
	}
}
