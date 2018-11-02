<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>승차권 예매</title>

<link rel="stylesheet" type="text/css"
	href="/Project_BusBooking/css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="/Project_BusBooking/css/daterangepicker.css" />
<link rel="stylesheet" type="text/css"
	href="/Project_BusBooking/css/base.css">
<link rel="stylesheet" type="text/css"
	href="/Project_BusBooking/semantic/semantic.css">
<link rel="stylesheet" type="text/css"
	href="/Project_BusBooking/css/calendar.min.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"
	integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
	crossorigin="anonymous"></script>
<script src="/Project_BusBooking/semantic/semantic.js"></script>

</head>


<script type="text/javascript">
	$(function() {

	});
</script>
<style type="text/css">
p {
	padding: 3rem;
	text-align: left;
}

header {
	height: 100px;
	text-align: center;
}

.level {
	display: inline-block;
	height: 100px;
	vertical-align: middle;
}

li {
	list-style: none;
	margin: 0 0;
	font-size: 1.5rem;
	float: left;
	margin-right: 1rem;
	line-height: 50px;
	border: 1px solid white;
	border-radius: 20px;
	padding: 1px 2px;
	color: white;
	background-color: #0489B1;
}

#mainli {
	list-style: none;
	margin: 0 0;
	font-size: 1.5rem;
	float: left;
	margin-right: 1rem;
	line-height: 50px;
	border: 3px solid yellow;
	border-radius: 20px;
	background-color: #0489B1;
}

table {
	margin-top: 40px;
	background-color:
}

h1 {
	border-bottom: 2px solid #01A9DB;
}

div#page_button {
	margin: 50px auto;
	width: 30%;
}

div#page_button button {
	padding: 5px;
	width: 50%;
	height: 100%;
}

td, th {
	text-align: center;
}
#currentPaging {
	color: red; text-decoration: underline;
}
#paging {
	color: blue; text-decoration: none;
}
#subjectA:link {color:black; text-decoration: none;}
#subjectA:visited {color:black; text-decoration: none;}
#subjectA:achive {color:black; text-decoration: none;}
#subjectA:hover {color:green; text-decoration: underline;}
</style>
</head>
<body>

	<div class="wrapper">

		<div>
			<div class="column">
				<header>
					<h1>승차권 예매</h1>
					<ul class="level">
						<li>1.기초정보 입력</li>
						<li id="mainli">2.배차 조회</li>
						<li>3.매수 및 좌석 선택</li>
						<li>4.카드 정보 입력</li>
						<li>${startPage},${endPage},${totalPage }</li>
					</ul>
					<hr>
				</header>
			</div>

		</div>
		<div>

			<form action="../booking/booking_bus.do" method="post"
				name="bus_input">
				<div class="column">
					<div class="ui top attached tabular menu">
						<div class="active item">가는 편</div>

					</div>
					<div class="ui bottom attached active tab segment" align="center">
						<table border="1px solid black">
							<tr>
								<td width="500px" height="50px">
									<ul class="road">
										<li>출발지</li>
										<li>${ start_tr}</li>
										<li>도착지</li>
										<li>${ end_tr}</li>
									</ul>
								</td>
								<td width="500px">${arrive_day}</td>
							</tr>
						</table>
					</div>
					<table class="ui teal table" style="margin-top: 5%">
						<thead>
							<tr>
								<th>버스번호</th>
								<th>출발터미널</th>
								<th>도착터미널</th>
								<th>차편정보</th>
								<th>출발시간</th>
								<th>소요시간</th>
								<th>요금</th>
								<th>잔여좌석</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="busVO" items="${list}">
								<tr align="center" height="50">
									<td>${busVO.bus_no}</td>
									<td>${busVO.start_tr}</td>
									<td>${busVO.end_tr}</td>
									<td>${busVO.company}</td>
									<td>${busVO.arrive_time}</td>
									<td>${busVO.time}</td>
									<td>${busVO.payment}</td>
									<td>${busVO.bus_seats}석/총 40석</td>
								</tr>
							</c:forEach>

						</tbody>
					</table>

				</div>
			</form>


			<div>
				<div class="ui text container" id="page_button">
					<table>

						<tr>
							<td width="200px" align="center"><c:if
									test="${startPage >5}">
									<button class="ui teal basic button"
										onclick="location.href='../booking/booking_bus.do?pg=${startPage -1}&start_tr=${start_tr}&end_tr=${end_tr}&arrive_time=${arrive_time}''">이전시간</button>
								</c:if></td>
							<td width="50%"><c:forEach var="i" begin="${startPage}" end="${endPage}"
									step="1">
									<c:if test="${pg == i}">
										[<a id="currentPaging" href="../booking/booking_bus.do?pg=${i}">${i}</a>]
									</c:if>
									<c:if test="${pg != i}">
										[<a id="paging" href="../booking/booking_bus.do?pg=${i}">${i}</a>]
									</c:if>
								</c:forEach></td>
							<td width="200px" align="center">
							<c:if test="${endPage <= totalPage}">
									<button class="ui teal basic button" onclick="location.href='../booking/booking_bus.do?pg=${endPage + 1}&start_tr=${start_tr}&end_tr=${end_tr}&arrive_time=${arrive_time}'">다음시간</button>
								</c:if></td>

						</tr>
					</table>


				</div>

			</div>
		</div>

	</div>
</body>
</html>