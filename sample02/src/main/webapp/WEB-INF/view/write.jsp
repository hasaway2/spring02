<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<h1>글 작성</h1>
<form action="/write" method="post">
  <div class="mb-3 mt-3">
    <label for="writer" class="form-label">작성자:</label>
    <input type="text" class="form-control" id="writer" placeholder="작성자..." name="writer">
  </div>
  <div class="mb-3 mt-3">
    <label for="title" class="form-label">제목:</label>
    <input type="text" class="form-control" id="title" placeholder="제목..." name="title">
  </div>
  <div class="mb-3 mt-3">
  	<label for="content">내용:</label>
		<textarea class="form-control" rows="5" id="content" name="content"></textarea>
	</div>
	<button class="btn btn-primary">작성</button>
</form>
</body>
</html>