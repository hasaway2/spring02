package com.example.demo.sample7;

import java.util.*;

import org.apache.ibatis.annotations.*;

@Mapper
public interface DsrDao {
	@Select("select lane, round(count(case win when 'TRUE' then 1 end)/count(*),4) percent, round((sum(kills)+sum(assists))/sum(deaths), 2) kda, round(avg(gold), 2) gold from dsr where id=#{id} group by lane")
	public List<Map<String,Object>> findById(Long id);
}
