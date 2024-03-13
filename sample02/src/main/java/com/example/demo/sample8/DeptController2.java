package com.example.demo.sample8;

import java.util.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.*;

@Controller
public class DeptController2 {
	@Autowired
	private DeptService service;
	
	@GetMapping("/dept2/list")
	public ModelAndView list() {
		List<Map<String,Object>> list = service.findAll();
		return new ModelAndView("dept2/list").addObject("list",  list);
	}
	
	@GetMapping("/dept2/read")
	public ModelAndView readDept(@RequestParam Long deptno) {
		Map<String,Object> dept = service.findByDeptno(deptno);
		return new ModelAndView("dept2/read_dept").addObject("dept",  dept);
	}
	
	@GetMapping("/dept2/emp/read")
	public ModelAndView readEmp(@RequestParam Long empno) {
		Map<String,Object> emp = service.findEmpByEmpno(empno);
		return new ModelAndView("dept2/read_emp").addObject("emp",  emp);
	}
}
