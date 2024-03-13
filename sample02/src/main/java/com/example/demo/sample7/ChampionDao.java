package com.example.demo.sample7;

import java.util.*;

import org.apache.ibatis.annotations.*;

@Mapper
public interface ChampionDao {
	@Select("select id, champion_name_kr as name from champion where rownum<=10 order by 2")
	public List<Map<String, Object>> findAll();
}
