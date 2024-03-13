package com.example.demo.sample6;

import java.util.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.*;

@Controller
public class EmpController1 {
	@Autowired
	private EmpDao1 empDao;
	
	@GetMapping("/emp1/list")
	public ModelAndView list() {
		List<Map<String,Object>> list = empDao.findAll();
		return new ModelAndView("emp1/list").addObject("list",  list);
	}
	
	@GetMapping("/emp1/read")
	public ModelAndView read(@RequestParam Long empno) {
		Map<String,Object> emp = empDao.findByEmpno(empno);
		return new ModelAndView("emp1/read").addObject("emp",  emp);
	}
	
}
