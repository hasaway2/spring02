package com.example.demo.sample7;

import java.util.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.*;

@Controller
public class DsrController {
	@Autowired
	private ChampionDao cDao;
	@Autowired
	private DsrDao dDao;
	
	@GetMapping("/dsr/list")
	public ModelAndView list() {
		List<Map<String,Object>> list = cDao.findAll();
		return new ModelAndView("dsr/list").addObject("list",  list);
	}
	
	@GetMapping("/dsr/read")
	public ModelAndView read(Long id) {
		List<Map<String,Object>> list = dDao.findById(id);
		return new ModelAndView("dsr/read").addObject("list",  list);
	}
}
