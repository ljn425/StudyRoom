package com.monorella.srf.branch.staff;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.monorella.srf.branch.dto.BranchOwner;
import com.monorella.srf.branch.dto.Staff;
@Repository
public class StaffDao {
	 @Autowired
	    private SqlSessionTemplate sqlSessionTemplate;
	
	 // 지점 코드와 지점 비밀번호 조회 
	 public BranchOwner checkBranchOwner(String branch_owner_cd, String branch_owner_pw){
		 System.out.println("StaffDao->checkBranchOwner():" +branch_owner_cd+branch_owner_pw);
		 BranchOwner owner = new BranchOwner();
		 System.out.println("StaffDao->BranchOwner()-->"+owner);
		 owner.setBranch_owner_cd(branch_owner_cd);
		 System.out.println("setBranch_owner_cd()->"+branch_owner_cd);
		 owner.setBranch_owner_pw(branch_owner_pw);
		 System.out.println("setBranch_owner_pw()->"+branch_owner_pw);
		 return sqlSessionTemplate.selectOne("com.monorella.srf.branch.staff.StaffMapper.checkBranchOwner", owner); 
	 }
	 
	 // 직원아이디와 직원패스워드를 입력받아 한개의 직원 삭제
	    public int deleteStaff(String staff_id) {
	    	System.out.println("StaffDao->deleteStaff()->" +staff_id);
	    	Staff staff = new Staff();
	    	System.out.println("Staff()->"+staff);
	    	staff.setStaff_id(staff_id);
	    	System.out.println("setStaff_id()->"+staff_id);
	        return sqlSessionTemplate.delete("com.monorella.srf.branch.staff.StaffMapper.deleteStaff",staff);
	    }
	
	  // 수정 비밀번호  
		public Staff modifypwStaff(String staff_id){
			System.out.println("StaffDao->modifypwStaff->"+staff_id);
			Staff staff = new Staff();
	    	staff.setStaff_id(staff_id);
			return sqlSessionTemplate.selectOne("com.monorella.srf.branch.staff.StaffMapper.modifypwStaff", staff);
		}
	// 글수정 메서드 
		public int modifyStaff(Staff staff) {
	        return sqlSessionTemplate.update("com.monorella.srf.branch.staff.StaffMapper.modifyStaff"
											,staff);
	    }
		
	 // 한개의 게시글 내용보기
	    public Staff viewStaff(String staff_id) {
	        return sqlSessionTemplate.selectOne("com.monorella.srf.branch.staff.StaffMapper.viewStaff",staff_id);
	    }
	 
	 
	 //직원 검색 메서드
	 public List<Staff> searchStaff(String so, String sv){
			Map<String, String> map = new HashMap<String, String>();
			map.put("so", so);
			map.put("sv", sv);
			List<Staff> staffList = null;
			staffList = sqlSessionTemplate.selectList("com.monorella.srf.branch.staff.StaffMapper.searchStaff", map);
			return staffList;
		}

	 // 직원 조회 메서드 
	 public List<Staff> selectStaffList(){
		return  sqlSessionTemplate.selectList("com.monorella.srf.branch.staff.StaffMapper.selectStaffList");
		 
	 }
	// 직원추가 메서드 
	    public int insertStaff(Staff staff) {
	       System.out.println("StaffDao-> insertStaff(): "+staff);
	        return sqlSessionTemplate.insert("com.monorella.srf.branch.staff.StaffMapper.insertStaff"
	        								, staff);
	    }
	    
}