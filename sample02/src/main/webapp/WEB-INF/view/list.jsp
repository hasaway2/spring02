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
</head>
<body>
	<h1>게시판</h1>
	<table class="table table-hover">
		<thead >
			<tr>
				<th>번호</th>
				<th>내용</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>읽기</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${articles}" var="article">
			<tr>
				<td>${article.ano }</td>
				<td>
					<a href="/view?ano=${article.ano }">${article.title }</a>
				</td>
				<td>${article.writer }</td>
				<td>${article.writeday }</td>
				<td>${article.viewCnt }</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<a href="/write" type="button" class="btn btn-primary">글쓰기</a>
</body>
</html>