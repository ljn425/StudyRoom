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
	
	// 회원삭제 메서드
    public int removeMember(String member_cd, String branch_owner_cd) {
    	Member member = new Member();
    	member.setMember_cd(member_cd);
    	member.setBranch_owner_cd(branch_owner_cd);
    	System.out.println("7st getMemberList");
        return sqlSessionTemplate.delete("com.monorella.srf.branch.member.MemberMapper.removeMember", member);
    }
	
	//회원수정 메서드
	public int modifyMember(Member member) {
		System.out.println("6st getMemberList");
		return sqlSessionTemplate.update("com.monorella.srf.branch.member.MemberMapper.modifyMember", member);
	}
	
	//하나의 게시글 보기
	public Member getMember(String member_cd) {
		System.out.println("5st getMemberList");
        return sqlSessionTemplate.selectOne("com.monorella.srf.branch.member.MemberMapper.getMember", member_cd);
    }
	
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