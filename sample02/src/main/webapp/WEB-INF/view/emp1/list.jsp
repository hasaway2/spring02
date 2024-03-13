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
<title>직원 목록</title>
</head>
<body>
	<table class="table table-hover">
		<thead>
			<tr>
				<th>사번</th>
				<th>이름</th>
				<th>입사일</th>
				<th>업무</th>
				<th>부서번호</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="emp">
				<tr>
					<td>${emp.EMPNO }</td>
					<td><a href="/emp1/read?empno=${emp.EMPNO }">${emp.ENAME }</a></td>
					<td>${emp.HIREDATE }</td>
					<td>${emp.JOB }</td>
					<td>${emp.DEPTNO }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>