<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<h1>부서정보</h1>
	<table class="table">
		<tr>
			<td>부서번호</td><td>${dept.DEPTNO }</td>
		</tr>
		<tr>
			<td>부서명</td><td>${dept.DNAME }</td>
		</tr>
		<tr>
			<td>근무지</td><td>${dept.LOC }</td>
		</tr>
	</table>
	<h1>부서원 정보</h1>
	<table class="table table-hover">
		<thead>
			<tr>
				<th>번호</th>
				<th>부서명</th>
				<th>근무지</th>
			</tr>
		</thead>
		<tbody>
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
			<c:forEach items="${dept.EMPS}" var="emp">
				<tr>
					<td>${emp.EMPNO }</td>
					<td><a href="/dept2/emp/read?empno=${emp.EMPNO }">${emp.ENAME }</a></td>
					<td>${emp.HIREDATE }</td>
					<td>${emp.JOB }</td>
					<td>${emp.DEPTNO }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>