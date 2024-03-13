package com.example.demo.sample4;

import java.util.*;

import org.apache.ibatis.annotations.*;

@Mapper
public interface SampleDao4 {
	public List<String> findPosition();
	
	public List<Long> countGroupByPosition();
	
	public List<Map<String,Object>> countGroupByPosition2();
}
