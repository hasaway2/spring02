<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/css/main.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<title>부서 목록</title>
</head>
<body>
	<table class="table table-hover">
		<thead>
			<tr>
				<th>번호</th>
				<th>부서명</th>
				<th>근무지</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="dept">
				<tr>
					<td>${dept.DEPTNO }</td>
					<td><a href="/dept2/read?deptno=${dept.DEPTNO }">${dept.DNAME }</a></td>
					<td>${dept.LOC }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>