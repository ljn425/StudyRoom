package com.monorella.srf.branch.staffboard;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.monorella.srf.branch.dto.StaffBoard;
@Repository
public class StaffBoardDao {
	@Autowired
    private SqlSessionTemplate sqlSessionTemplate;

	 // 글쓰기 메서드
    public int insertStaffBoard(StaffBoard staffboard) {
       
        return sqlSessionTemplate.insert("com.monorella.srf.branch.staffboard.StaffBoardMapper.insertStaffBoard"
        								, staffboard);
    }
}
