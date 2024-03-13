package com.example.demo.sample6;

import java.util.*;

import org.apache.ibatis.annotations.*;

@Mapper
public interface EmpDao1 {
	@Select("select * from emp")
	public List<Map<String, Object>> findAll();
	
	@Select("select * from emp where empno=#{empno} and rownum=1")
	public Map<String, Object> findByEmpno(Long empno);
}
