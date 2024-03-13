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
<title>챔피언 목록</title>
</head>
<body>
	<form action="/dsr/read">
		<select class="form-select" name="id">
			<c:forEach items="${list}" var="c">
		  	<option value="${c.ID }">${c.NAME }</option>
		  </c:forEach>
		</select>
		<button class="btn btn-primary">선택</button>
	</form>
</body>
</html>