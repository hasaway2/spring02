<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<title>Insert title here</title>
<style>
	#app {
		width: 1000px;
		margin: 0 auto;
		border: 1px solid #ccc;
	}
	
	#upper, #lower {
		display: flex;
		justify-content: space-between;
		padding: 0 10px;
		margin-bottom: 10px;
	}
	
	#writer {
		color: #8d54a4;
	}
	
	#body {
		min-height: 600px;
		background-color: #f7f7f7;
	}
	#no_writeday {
		color: #9d9d9d;
	}
</style>
</head>
<body>
	<div id="app">
		<div id="header">
			<div id="upper">
				<div class="title">${article.title }</div>
				<div class="writer">${article.writer }</div>
			</div>
			<div id="lower">
				<div class="no_writeday">
					<span style="color:#666;">글번호</span> ${article.ano} | ${article.writeday}
				</div>
				<div class="count">조회 : ${article.viewCnt}</div>
			</div>
		</div>
		<div id="body">
			<div>${article.content}</div>
		</div>
	</div>
	<a href="/write" type="button" class="btn btn-primary">글쓰기</a>
</body>
</html>