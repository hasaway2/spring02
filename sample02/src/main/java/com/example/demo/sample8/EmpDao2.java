package com.example.demo.sample8;

import java.util.*;

import org.apache.ibatis.annotations.*;

@Mapper
public interface EmpDao2 {
	@Select("select * from emp where deptno=#{deptno}")
	public List<Map<String, Object>> findByDeptno(Long deptno);
	
	@Select("select * from emp where empno=#{empno} and rownum=1")
	public Map<String, Object> findByEmpno(Long empno);
}
