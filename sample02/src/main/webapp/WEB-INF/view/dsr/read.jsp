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
		<table class="table table-hover">
		<thead>
			<tr>
				<th>라인</th>
				<th>승률</th>
				<th>kda</th>
				<th>gold</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="c">
				<tr>
					<td>${c.LANE }</td>
					<td>${c.PERCENT }</td>
					<td>${c.KDA }</td>
					<td>${c.GOLD }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>