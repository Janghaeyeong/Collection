<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>sample</title>
</head>
<body>
	<h1>EL을 사용해서 각각의 스코프에 저장된 값 표시하기</h1>
	<p>페이지 스코프 : ${p }</p>
	<p>요청 스코프 : ${r }</p>
	<p>세션 스코프 : ${s }</p>
	<p>애플리케이션 스코프 : ${a }</p>
</body>
</html>