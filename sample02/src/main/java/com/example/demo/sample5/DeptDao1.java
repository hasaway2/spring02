package com.example.demo.sample5;

import java.util.*;

import org.apache.ibatis.annotations.*;

@Mapper
public interface DeptDao1 {
	@Select("select * from dept")
	public List<Map<String, Object>> findAll();
	
	@Select("select * from dept where deptno=#{deptno} and rownum=1")
	public Map<String, Object> findByDeptno(Long deptno);
}
