package com.example.demo.sample8;

import java.util.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;

@Service
public class DeptService {
	@Autowired
	private EmpDao2 empDao;
	@Autowired
	private DeptDao2 deptDao;
	
	public List<Map<String,Object>> findAll() {
		return deptDao.findAll();
	}
	
	public Map<String,Object> findByDeptno(Long deptno) {
		Map<String,Object> dept = deptDao.findByDeptno(deptno);
		List<Map<String,Object>> emps = empDao.findByDeptno(deptno);
		dept.put("EMPS", emps);
		return dept;
	}
	
	public Map<String,Object> findEmpByEmpno(Long empno) {
		return empDao.findByEmpno(empno);
	}
}
