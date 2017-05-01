package com.monorella.srf.branch.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<Member> getMemberList(int currentPage, int pagePerRow) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("beginRow", (currentPage-1)*pagePerRow);
		map.put("pagePerRow", pagePerRow);
		System.out.println("3st getMemberList");
		return sqlSessionTemplate.selectList("com.monorella.srf.branch.member.MemberMapper.getMemberList", map);
	}
	
	public int getMemberCount() {
		System.out.println("2nd getMemberCount");
		return sqlSessionTemplate.selectOne("com.monorella.srf.branch.member.MemberMapper.getMemberCount");
		
	}
	
	public int insertMember(Member member) {
		System.out.println("1st insertMember");
		System.out.println(member);
		return sqlSessionTemplate.insert("com.monorella.srf.branch.member.MemberMapper.insertMember", member);
	}
}
