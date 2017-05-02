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
	
	public List<Member> searchPageMemberList(String so, String sv, int currentPage, int pagePerRow){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("so", so);
		map.put("sv", sv);
		map.put("currentPage", currentPage);
		map.put("pagePerRow", pagePerRow);
		System.out.println("5st getMemberList");
		return sqlSessionTemplate.selectList("com.monorella.srf.branch.member.MemberMapper.searchPageMemberList", map);
	}
	
	public List<Member> searchMemberList(String so, String sv){
		Map<String, String> map = new HashMap<String, String>();
		map.put("so", so);
		map.put("sv", sv);
		List<Member> memberList = null;
		memberList = sqlSessionTemplate.selectList("com.monorella.srf.branch.member.MemberMapper.searchMemberList", map);
		if(so.equals("member_hap"))
			memberList = sqlSessionTemplate.selectList("com.monorella.srf.branch.member.MemberMapper.searchMemberHap", map);
		System.out.println("4st getMemberList");
		return memberList;
	}
	
	public List<Member> selectMemberList(int currentPage, int pagePerRow) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("beginRow", (currentPage-1)*pagePerRow);
		map.put("pagePerRow", pagePerRow);
		System.out.println("3st getMemberList");
		return sqlSessionTemplate.selectList("com.monorella.srf.branch.member.MemberMapper.selectMemberList", map);
	}
	
	public int selectMemberCount() {
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.member.MemberMapper.selectMemberCount");
		return row;
	}
	
	public int insertMember(Member member) {
		System.out.println("1st insertMember");
		System.out.println(member);
		return sqlSessionTemplate.insert("com.monorella.srf.branch.member.MemberMapper.insertMember", member);
	}
}
