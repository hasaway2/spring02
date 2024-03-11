package com.example.demo.example02.dao;

import java.util.*;

import org.apache.ibatis.annotations.*;

import com.example.demo.example02.entity.*;

@Mapper
public interface ArticleDao {
	@Insert("insert into article(ano, title, content, writer) values(article_seq.nextval, #{title}, #{content}, #{writer})")
	public Long save(String title, String content, String writer);
	
	@Select("select ano, title, content, writer, writeday, view_cnt from article")
	public List<Article> findAll();
	
	@Select("select ano, title, content, writer, writeday, view_cnt from article where ano=#{ano} and rownum=1")
	public Article findByAno(Long ano);
	
	@Update("update article set view_cnt=view_cnt+1 where ano=#{ano} and rownum=1")
	public Long increaseViewCnt(Long tno);
}
