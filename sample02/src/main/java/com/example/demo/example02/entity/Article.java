package com.example.demo.example02.entity;

import java.time.*;

import lombok.*;

@Data
@AllArgsConstructor
public class Article {
	private Long ano;
	private String title;
	private String content;
	private String writer;
	private LocalDate writeday = LocalDate.now();
	private Long viewCnt = 0L;
}
