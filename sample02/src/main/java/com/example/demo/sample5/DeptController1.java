package com.example.demo.sample5;

import java.util.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.*;

@Controller
public class DeptController1 {
	@Autowired
	private DeptDao1 deptDao;
	
	@GetMapping("/dept1/list")
	public ModelAndView list() {
		List<Map<String,Object>> list = deptDao.findAll();
		return new ModelAndView("dept1/list").addObject("list",  list);
	}
	
	@GetMapping("/dept1/read")
	public ModelAndView read(@RequestParam Long deptno) {
		Map<String,Object> dept = deptDao.findByDeptno(deptno);
		return new ModelAndView("dept1/read").addObject("dept",  dept);
	}
	
}
