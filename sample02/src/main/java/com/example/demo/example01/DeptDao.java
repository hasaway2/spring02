package com.example.demo.example01;

import java.util.*;

import org.apache.ibatis.annotations.*;

@Mapper
public interface DeptDao {
	@Select("select deptno, dname, loc from dept")
	public List<Dept> findAll();
	
	@Select("select deptno, dname, loc from dept where deptno=#{deptno} and rownum=1")
	public Dept findByDeptno(Long deptno);
	
	@Insert("insert into dept values(#{deptno}, #{dname}, #{loc})")
	public Long save(Dept dept);
	
	@Update("update dept set dname=#{dname}, loc=#{loc} where deptno=#{deptno} and rownum=1")
	public Long update(Dept dept);
	
	@Delete("delete from dept where deptno=#{deptno} and rownum=1")
	public Long deleteByDeptno(Long deptno);
}
