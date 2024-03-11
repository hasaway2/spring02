package com.example.demo.example02.controller;

import java.util.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.*;

import com.example.demo.example02.dao.*;
import com.example.demo.example02.entity.*;

@Controller
public class ArticleController {
	@Autowired
	private ArticleDao articleDao;

	@GetMapping("/")
	public ModelAndView list() {
		List<Article> articles = articleDao.findAll();
		return new ModelAndView("list").addObject("articles", articles);
	}

	@GetMapping("/write")
	public ModelAndView write() {
		return new ModelAndView("write");
	}

	@PostMapping("/write")
	public ModelAndView write(@RequestParam String title, @RequestParam String content, @RequestParam String writer) {
		articleDao.save(title, content, writer);
		return new ModelAndView("redirect:/");
	}

	@GetMapping("/view")
	public  ModelAndView view(@RequestParam Long ano) {
		articleDao.increaseViewCnt(ano);
		Article article = articleDao.findByAno(ano);
		return new ModelAndView("view").addObject("article", article);
	}
}
