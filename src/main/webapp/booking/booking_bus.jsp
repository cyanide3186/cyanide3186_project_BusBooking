<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>승차권 예매</title>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"
	integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
	crossorigin="anonymous"></script>
<script src="semantic/semantic.js"></script>
<style type="text/css">
body, ul {
	margin: 0;
	padding: 0;
}

li {
	list-style-type: none;
}

body {
	background-color: #222;
}

.wrapper {
	width: 1200px;
	margin: 150px auto;
	background-color: white;
}
.level{
	align: center;
}
.level li{
	float: left;
	display: block;
	width: 200px;
	height: 100px;
	background-color: skyblue;
	vertical-align: middle;
	align: center;
}
</style>
</head>
<body>
	<div class="wrapper">
		<header>
			<h1>승차권 예매</h1>
		<ul class="level">
			<li>1.기초 정보 입력</li>
			<li>2.배차 조회</li>
			<li>1.매수 및 좌석 선택</li>
			<li>4.카드 정보 입력 </li>
		</ul>
		</header>
		<div class="box">
			
		</div>
	</div>
</body>
</html>