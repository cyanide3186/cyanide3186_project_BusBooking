<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>카드 정보 입력</title>
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
<link rel="stylesheet" type="text/css" href="/Project_BusBooking/css/alertify.core.css" />
<link rel="stylesheet" type="text/css" href="/Project_BusBooking/css/alertify.default.css" id="toggleCSS" />
<script src="/Project_BusBooking/js/alertify.min.js"></script>
<style type="text/css">
p {
	font-weight: bolder;
	font-size: 1.5rem;
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
	margin: 0 0;
	list-style: none;
}

.level li {
	list-style: none;
	margin: 0 0;
	float: left;
	margin-right: 1rem;
	line-height: 50px;
	border: 1px solid white;
	border-radius: 20px;
	padding: 1px 2px;
	color: white;
	background-color: #0489B1;
	font-size: 1rem;
	padding: 0 0;
	color: white;
	width: 120px;
}

h1 {
	border-bottom: 2px solid #01A9DB;
}

#mainli {
	list-style: none;
	margin: 0 0;
	float: left;
	margin-right: 1rem;
	line-height: 50px;
	border: 1px solid white;
	border-radius: 20px;
	padding: 1px 2px;
	background-color: #0489B1;
	font-size: 1rem;
	padding: 0 0;
	color: yellow;
	width: 120px;
	border: 3px solid yellow;
}

.card1 {
	font-size: 1.5rem;
	font-weight: bold;
}

.card2 {
	font-size: 1.5rem;
	text-align: left;
}

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
						<li>2.배차 조회</li>
						<li>3.매수 및 좌석선택</li>
						<li id="mainli">4.카드 정보 입력</li>
					</ul>
					<hr>
				</header>
			</div>

		</div>
		<div>
			<form action="../booking/booking_result.do" method="post"
				name="bus_card">
				<div class="column">
					<div class="ui top attached tabular menu">
						<div class="active item">배차정보</div>
					</div>	
					<div class="ui bottom attached active tab segment" align="center">
						<table border="1px solid black">
							<tr>
								<td width="500px" height="50px">
									<ul class="road">
										<li class=box>출발지</li>
										<li>${bus_vo.start_tr}</li>
										<li><img src="../images/point.png" height="30px"
											width="100px"></li>
										<li class=box>도착지</li>
										<li>${bus_vo.end_tr}</li>
									</ul>
								</td>
								<td width="500px" align="center"><ul>
										<li>${arrive_day}</li>
									</ul></td>
							</tr>
							<tr>
								<td width="500px" height="50px" align="center">
									출발 시간</td>
								<td width="500px" align="center">
									${arrive_time}
									</td>
							</tr>
							<tr>
								<td width="500px" height="50px" align="center"><ul>
									<li></li>
									</ul></td>
								<td width="500px" align="center"><ul>
									<li></li>
									</ul></td>
							</tr>
						</table>
							<br>
							<table border="1px solid black">
								<tr>
								<td width="500px" height="50px" align="center">
									결제금액</td>
								<td width="500px" align="center">
									</td>
							</tr>
							</table>
							<br>
							<br>
						<p>
						카드 정보 입력
						</p>
						<table border="1px solid black">
						<tr>
							<td width="300px" height="50px" align="center" class="card1">
								카드구분</td>
							<td width="700px" align="left" class="card2">
							<fieldset>
							      <label>
							      <input type="radio" name="cardtype" checked/>개인&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							      </label>
							      <label>
							      <input type="radio" name="cardtype"
							      />법인</label>
							</fieldset>
							</td>
						</tr>
						<tr>
						<td width="300px" height="50px" align="center" class="card1">
								카드선택</td>
							<td width="700px" align="left" class="card2">
								<select name="selectcard" style="width: 110px;">
									<option value="BC카드" selected>BC카드</option>
									<option value="신한카드">신한카드</option>
									<option value="국민카드">국민카드</option>
									<option value="농협카드">농협카드</option>
									<option value="하나카드">하나카드</option>
									<option value="삼성카드">삼성카드</option>
									<option value="현대카드">현대카드</option>
									<option value="롯데카드">롯데카드</option>
									<option value="우리카드">우리카드</option>
									<option value="시티카드">시티카드</option>
								</select>
							</td>
						</tr>	
						<tr>
						<td width="300px" height="50px" align="center" class="card1">
								카드번호</td>
							<td width="700px" align="left" class="card2">
								<input type="text" size="8"> -
								<input type="text" size="8"> -
								<input type="text" size="8"> -
								<input type="text" size="8">
							</td>
						</tr>	
						<tr>
						<td width="300px" height="50px" align="center" class="card1">
								유효기간</td>
							<td width="700px" align="left" class="card2">
								<input type="text" size="4"> 월
								<input type="text" size="4"> 년
							</td>
						</tr>
						<tr>
						<td width="300px" height="50px" align="center" class="card1">
								카드비밀번호</td>
							<td width="700px" align="left" class="card2">
								<input type="text" size="4">**
							</td>
						</tr>
						<tr>
						<td width="300px" height="50px" align="center" class="card1">
								휴대폰 번호
							</td>
							<td width="700px" align="left" class="card2">
									<select name="selectcard" style="width: 60px;">
									<option value="010" selected>010</option>
									<option value="011">011</option>
									<option value="016">016</option>
									<option value="017">017</option>
									<option value="018">018</option>
									<option value="019">019</option>
								</select>
								-
								<input type="text" size="4">
								-
								<input type="text" size="4">
							</td>
						</tr>
						<tr>
							<td colspan="2" width="1000px" height="50px" align="center">
							<button class="ui teal basic button" type="button" onclick="">예매하기</button>
							<button class="ui teal basic button" type="reset">다시작성</button>
							</td>
						</tr>
						</table>
						</div>
			</div>
			</form>
		</div>	
	</div>	
</body>
</html>