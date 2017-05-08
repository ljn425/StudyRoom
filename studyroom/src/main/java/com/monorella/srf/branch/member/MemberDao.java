package com.monorella.srf.branch.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.monorella.srf.branch.dto.Member;

@Repository
public class MemberDao {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	// 회원검색 메서드
	public List<Member> searchMember(String so, String sv){
		Map<String, String> map = new HashMap<String, String>();
		map.put("so", so);
		map.put("sv", sv);
		List<Member> memberList = null;
		System.out.println("4st getMemberList");
		memberList = sqlSessionTemplate.selectList("com.monorella.srf.branch.member.MemberMapper.searchMember", map);
		return memberList;
	}
	
	// 회원리스트 메서드
	public List<Member> selectMemberList(int currentPage, int pagePerRow) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("beginRow", (currentPage-1)*pagePerRow);
		map.put("pagePerRow", pagePerRow);
		System.out.println("3st getMemberList");
		return sqlSessionTemplate.selectList("com.monorella.srf.branch.member.MemberMapper.selectMemberList", map);
	}
	

	public int selectMemberCount() {
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.member.MemberMapper.selectMemberCount");
		System.out.println("2st getMemberList");
		return row;
	}
	
	// 회원추가 메서드
	public int insertMember(Member member) {
		System.out.println("1st insertMember");
		System.out.println(member);
		return sqlSessionTemplate.insert("com.monorella.srf.branch.member.MemberMapper.insertMember", member);
	}
}
