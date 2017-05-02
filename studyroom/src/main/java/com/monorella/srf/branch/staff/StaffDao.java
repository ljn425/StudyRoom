package com.monorella.srf.branch.staff;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.monorella.srf.branch.dto.Staff;
@Repository
public class StaffDao {
	 @Autowired
	    private SqlSessionTemplate sqlSessionTemplate;
	 
	 public List<Staff> searchStaff(String so, String sv){
			Map<String, String> map = new HashMap<String, String>();
			map.put("so", so);
			map.put("sv", sv);
			List<Staff> staffList = null;
			staffList = sqlSessionTemplate.selectList("com.monorella.srf.branch.staff.StaffMapper.searchStaff", map);
			return staffList;
		}

	 // 직원 조회 메서드 
	 public List<Staff> getStaffList(){
		return  sqlSessionTemplate.selectList("com.monorella.srf.branch.staff.StaffMapper.getStaffList");
		 
	 }
	// 직원추가 메서드 
	    public int insertStaff(Staff staff) {
	       System.out.println("StaffDao-> insertStaff(): "+staff);
	        return sqlSessionTemplate.insert("com.monorella.srf.branch.staff.StaffMapper.insertStaff"
	        								, staff);
	    }
	    
}