package com.monorella.srf.branch.room;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.monorella.srf.branch.dto.Room;
import com.monorella.srf.branch.dto.Seat;

@Repository
public class RoomDao {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	//열람석 insert
	public int insertSeat(Seat seat){
		System.out.print("열람석");
		return sqlSessionTemplate.insert("com.monorella.srf.branch.room.RoomMapper.insertSeat", seat);
	}
	
	//열람실 insert
	public int insertRoom(Room room){
		System.out.println(room);
		return sqlSessionTemplate.insert("com.monorella.srf.branch.room.RoomMapper.insertMember", room);
	}
}
