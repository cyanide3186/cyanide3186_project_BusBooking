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
<script type="text/javascript">
	var num = /[0-9]/;
	function check() {
		if(document.bus_card.card_1.value == ""||document.bus_card.card_2.value == ""||document.bus_card.card_3.value == ""||document.bus_card.card_4.value == "") {
			alertify.alert("카드번호를 입력해주세요");
		} else if(!num.test(document.bus_card.card_1.value)||!num.test(document.bus_card.card_2.value)||!num.test(document.bus_card.card_3.value)||!num.test(document.bus_card.card_4.value)){
			alertify.alert("카드번호는 숫자로 입력해주세요");
		} else if(document.bus_card.month.value == ""||document.bus_card.year.value == "") {
			alertify.alert("유효기간을 입력해주세요");
		} else if(!num.test(document.bus_card.month.value)||!num.test(document.bus_card.year.value)){
			alertify.alert("유효기간은 숫자로 입력해주세요");
		} else if(document.bus_card.password.value == "") {
			alertify.alert("카드 비밀번호를 입력해주세요");
		} else if(!num.test(document.bus_card.password.value)){
			alertify.alert("카드 비밀번호는 숫자로 입력해주세요");
		} else if(document.bus_card.no.value == "") {
			alertify.alert("주민번호 앞 6자리를 입력해주세요");
		} else if(!num.test(document.bus_card.no.value)){
			alertify.alert("주민번호 앞 6자리는 숫자로 입력해주세요");
		} else if(document.bus_card.hp2.value == "" || document.bus_card.hp3.value == "") {
			alertify.alert("휴대폰 번호를 입력해주세요");
		} else if(!num.test(document.bus_card.hp2.value)||!num.test(document.bus_card.hp3.value)){
			alertify.alert("휴대폰 번호는 숫자로 입력해주세요");
		} else {
			alert("예매가 완료되었습니다 초기 페이지로 이동합니다.");
			document.bus_card.submit();
			return true;	
		}
	}

	history.pushState(null, null, location.href);

	window.onpopstate = function(event) {	

	history.go(1);
	}
</script>
<style type="text/css">
p {
	font-size: 1.5rem;
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

.box {
	list-style: none;
	margin: 0 0;
	font-size: 1.5rem;
	margin-right: 1rem;
	border: 1px solid white;
	border-radius: 20px;
	padding: 1px 2px;
	color: white;
	background-color: #FAAC58;
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
	background-color: #FAAC58;
}

.card2 {
	font-size: 1.3rem;
	text-align: left;
	background-color: #E6E6E6;
}

.card3 {
	font-size: 1.3rem;
	background-color: #E6E6E6;
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
			<form method="post" action="../main/index.jsp"
				name="bus_card">
				<div class="column">
					<div class="ui top attached tabular menu">
						<div class="active item">
						<p>
						배차정보
						<p>
						</div>
					</div>	
					<div class="ui bottom attached active tab segment" align="center">
						<table border="1">
							<tr>
								<td width="500px" height="50px" align="center" class="card3" style="color: #082948; font-weight: bold">
										<input type="hidden" name="bus_no" value="${bus_no}">
										<input type="hidden" name="adult" value="${adult}">
										<input type="hidden" name="teen" value="${teen}">
										<input type="hidden" name="kid" value="${kid}">
										<input type="hidden" name="arrive_day" value="${arrive_day}">
										<input type="hidden" name="arrive_time" value="${arrive_time}">
										<input type="hidden" name="total_payment" value="${total_payment}">
										<c:forEach items="${seat}" var="seat">
											<input type="hidden" name="seat" id="seat" value=seat>
										</c:forEach>
										<a class="box" style="color: white">출발지</a>${start_tr}								
								</td>
								<td width="500px" height="50px" align="center" class="card3" style="color: #082948; font-weight: bold">
										<a class="box" style="color: white">도착지</a>${end_tr}
									</td>
							</tr>
							<tr>
								<td width="500px" height="50px" align="center" class="card1"> 
									출발 시간</td>
								<td width="500px" align="center" class="card3" style="color:red">
									${arrive_day1} <a style="color: black">월</a> ${arrive_day2} <a style="color: black">일</a> ${arrive_time1} <a style="color: black">시</a> ${arrive_time2} <a style="color: black">분</a>
									</td>
							</tr>
							<tr>
								<td width="500px" height="50px" align="center" class="card3" style="color:red">
									<c:if test="${adult!=0}" >
										<a style="color: black" >어른</a> ${adult} <a style="color: black">명&nbsp;</a>
									</c:if>
									<c:if test="${teen!=0}">
										<a style="color: black">청소년</a> ${teen} <a style="color: black">명&nbsp;</a>
									</c:if>
									<c:if test="${kid!=0}">
										<a style="color: black">어린이</a> ${kid} <a style="color: black">명&nbsp;</a>
									</c:if>
								</td>	
								<td width="500px" align="center" class="card3" style="color:red">
									<c:forEach var="String" items="${seat}">
										${String}<a style="color: black">번 좌석&nbsp;</a>
									</c:forEach>

								</td>	
							</tr>
						</table>
							<br>
							<table border="1">
								<tr>
								<td width="500px" height="50px" align="center" class="card1">
									결제금액</td>
								<td width="500px" align="center" class="card3" style="color: red">
									${total_payment}<a style="color: black">원</a></td>
							</tr>
							</table>
							<br>
							<br>
						<p>
						카드 정보 입력
						</p>
						<table border="1">
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
								<input type="text" size="5" name="card_1" maxlength="4"> -
								<input type="text" size="5" name="card_2" maxlength="4"> -
								<input type="text" size="5" name="card_3" maxlength="4"> -
								<input type="text" size="5" name="card_4" maxlength="4">
							</td>
						</tr>	
						<tr>
						<td width="300px" height="50px" align="center" class="card1">
								유효기간</td>
							<td width="700px" align="left" class="card2">
								<input type="text" size="2" name="month"  maxlength="2"> 월
								<input type="text" size="2" name="year"  maxlength="2"> 년
							</td>
						</tr>
						<tr>
						<td width="300px" height="50px" align="center" class="card1">
								카드비밀번호</td>
							<td width="700px" align="left" class="card2">
								<input type="text" size="2" name="password" maxlength="2">**
							</td>
						</tr>
						<tr>
						<td width="300px" height="50px" align="center" class="card1">
								주민번호 앞 6자리</td>
							<td width="700px" align="left" class="card2">
								<input type="text" size="5" name="no" maxlength="6">
							</td>
						</tr>
						</table>
						<br>
						<br>
						<p>
						예매조회 정보 입력<br> 
						아래는 예매 사항을 조회하기 위한 정보 입력입니다.
						</p>
						<table border="1">
							<tr>
							<td width="300px" height="50px" align="center" class="card1">
								휴대폰 번호
							</td>
							<td width="700px" align="left" class="card2">
									<select name="hp1" style="width: 60px;" >
									<option value="010" selected>010</option>
									<option value="011">011</option>
									<option value="016">016</option>
									<option value="017">017</option>
									<option value="018">018</option>
									<option value="019">019</option>
								</select>
								-
								<input type="text" size="4" name="hp2" maxlength="4">
								-
								<input type="text" size="4" name="hp3" maxlength="4">
							</td>
						</tr>	
						<tr>
							<td colspan="2" width="1000px" height="50px" align="center" class="card3">
							<button class="ui teal basic button" type="button" onclick="check()" style="font-weight: bold">예매하기</button>
							<button class="ui teal basic button" type="reset" style="font-weight: bold">다시작성</button>
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