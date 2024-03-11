package com.example.demo;

import static org.junit.jupiter.api.Assertions.*;

import java.util.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.boot.test.context.*;

import com.example.demo.example01.*;

@SpringBootTest
public class Example01Test {
	@Autowired
	private DeptDao deptDao;
	
	//@Test
	public void initTest() {
		assertNotNull(deptDao);
	}
	
	//@Test
	public void findAllTest() {
		List<Dept> list = deptDao.findAll();
		assertEquals(4, list.size());
		for(Dept d:list) {
			System.out.println(d);
		}
	}
	
	//@Test
	public void findByDeptnoTest() {
		Dept dept1 = deptDao.findByDeptno(20L);
		assertNotNull(dept1);
		
		Dept dept2 = deptDao.findByDeptno(70L);
		assertNull(dept2);
	}
	
	//@Test
	public void saveTest() {
		Dept dept = new Dept(50L, "sample", "seoul");
		assertEquals(1, deptDao.save(dept));
	}
	
	//@Test
	public void updateTest() {
		Dept dept = new Dept(50L, "change", "change");
		assertEquals(1, deptDao.update(dept));
	}
	
	//@Test
	public void deleteByDeptnoTest() {
		assertEquals(1, deptDao.deleteByDeptno(50L));
	}
}
