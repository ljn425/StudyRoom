package com.monorella.srf.branch.staffboard;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.monorella.srf.branch.dto.StaffBoard;
@Repository
public class StaffBoardDao {
	@Autowired
    private SqlSessionTemplate sqlSessionTemplate;
	
	// 글수정 메서드 
			public int modifyStaffBoard(StaffBoard staffboard) {
		        return sqlSessionTemplate.update("com.monorella.srf.branch.staff.StaffBoardMapper.modifyStaffBoard"
												,staffboard);
		    }
	

	// 한개의 게시글 내용보기
    public StaffBoard getStaffBoard(int staffboard_no) {
    	System.out.println("StaffBoardDao->getStaffBoard -> staffboard_no:" + staffboard_no);
        return sqlSessionTemplate.selectOne("com.monorella.srf.branch.staffboard.StaffBoardMapper.getStaffBoard",staffboard_no);
    }
 
	
	// 공지사항 목록 메서드
		public List<StaffBoard> getStaffBoardList(int currentPage, int pagePerRow){
			System.out.println("StaffBoardDao-> getStaffBoardList-> currentPage: " + currentPage 
					+"pagePerRow: "+pagePerRow);
			Map<String, Integer> map = new HashMap<String, Integer>();
			System.out.println("StaffBoardDao-> getStaffBoardList-> map: " + map);
			map.put("beginRow",(currentPage-1)*10);
			map.put("pagePerRow",pagePerRow);
			return sqlSessionTemplate.selectList("com.monorella.srf.branch.staffboard.StaffBoardMapper.getStaffBoardList"
												, map);
			
		}
		
		//전체 공지사항의 수를 구하는 메서드
		public int getStaffBoardCount(){
			return sqlSessionTemplate.selectOne("com.monorella.srf.branch.staffboard.StaffBoardMapper.getStaffBoardCount");
		}

	 // 글쓰기 메서드
    public int insertStaffBoard(StaffBoard staffboard) {
        return sqlSessionTemplate.insert("com.monorella.srf.branch.staffboard.StaffBoardMapper.insertStaffBoard"
        								, staffboard);
    }
}
