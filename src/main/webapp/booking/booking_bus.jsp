<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>승차권 예매</title>

<link rel="stylesheet" type="text/css" href="../semantic/semantic.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"
	integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
	crossorigin="anonymous"></script>
<script src="../semantic/semantic.js"></script>
<script type="text/javascript">
	$(function() {
		$('.ui.dropdown').dropdown({
			direction : 'down',
			duration : 1000,
			onChange : function(value, text, $choice) {
			}
		});
		
	});
</script>
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

.box {
	float: clear;
	color: white;
	background-color: #111;
	padding: 1rem;
	color: white;
	display: box;
	width: 1200px;
	height: auto;
	margin: 200 auto;
}
</style>
</head>
<body>
	<div class="wrapper">
		
		<div class="ui medium rectangle test ad" data-text="Ad Unit 1">
			<header>
				<h1>승차권 예매</h1>
				<ul class="level">
					<li>1.기초 정보 입력</li>
					<li>2.배차 조회</li>
					<li>1.매수 및 좌석 선택</li>
					<li>4.카드 정보 입력</li>
				</ul>
			</header>
		</div>
		<div class="ui medium rectangle test ad" data-text="Ad Unit 2">
			<table>
				<tr>
					<td>출발지</td>
					<td><input type="button" value="선택"></td>
				</tr>
				<tr>
					<td>도착지</td>
					<td><input type="button" value="선택"></td>
				</tr>
				<tr>
					<td>가는 일시</td>
					<td><input type="button" value="선택"></td>
				</tr>
				<tr>
					<td>어른</td>
					<td>
						<div class="ui dropdown">
							<div class="text">인원</div>
							<i class="dropdown icon"></i>
							<div class="menu">
								<div class="item">1</div>
								<div class="item">2</div>
								<div class="item">3</div>
								<div class="item">4</div>
								<div class="item">5</div>
								<div class="item">6</div>
								<div class="item">7</div>
								<div class="item">8</div>
								<div class="item">9</div>
								<div class="item">10</div>
								
							</div>
						</div>
					</td>
				</tr>
			</table>
		</div>



		</div>
</body>
</html>