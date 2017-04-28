package com.monorella.srf.branch.staff;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class StaffDao {
	 @Autowired
	    private SqlSessionTemplate sqlSessionTemplate;

}