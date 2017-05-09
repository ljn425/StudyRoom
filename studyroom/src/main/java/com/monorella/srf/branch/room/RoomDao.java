package com.monorella.srf.branch.room;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.monorella.srf.branch.dto.Room;

@Repository
public class RoomDao {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	
	public int insertRoom(Room room){
		System.out.println(room);
		
		return sqlSessionTemplate.insert("com.monorella.srf.branch.room.RoomMapper.insertMember", room);
	}
}
