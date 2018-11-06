<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<script src="/Project_BusBooking/js/calendar.js"></script>

</head>


<script type="text/javascript">
	
</script>
<style type="text/css">
p {
	padding: 3rem;
	text-align: left;
}

.start_bus {
	display: none;
	background-color: #01A9DB;
	width: 500px;
	height: 500px;
	position: fixed;
	top: 20%;
	left: 40%;
	z-index: 2;
	border-radius: 20px;
	border: 5px solid white;
}

.end_bus {
	display: none;
	background-color: #01A9DB;
	width: 500px;
	height: 500px;
	position: fixed;
	top: 20%;
	left: 40%;
	z-index: 2;
	border-radius: 20px;
	border: 5px solid white;
}

#glayLayer {
	display: none;
	position: fixed;
	left: 0;
	top: 0;
	height: 100%;
	width: 100%;
	background: black;
	filter: alpha(opacity = 60);
	opacity: 0.60;
	z-index: 1;
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

#booking_table {
	margin-top: 50px;
}

h1 {
	border-bottom: 2px solid #01A9DB;
	margin-bottom: 30px;
	padding-bottom: 30px;
	text-align: center;
	font-size: 35px;
	font-weight: bold;
}

input {
	width: 25%;
}

#result_terminal td {
	width: 30%;
}

#result_terminal_end td {
	width: 30%;
}

ul {
	margin: 0 0;
	list-style: none;
}

#info_content {
	background-color: #FFD2D2;
	border-bottom: 1px solid gray;
	border-top: 1px solid gray;
	border-left: 1px solid gray;
	border-right: 1px solid gray;
	border-radius: 10px 10px 10px 10px;
	height: 20px;
	width: 500px;
}

table {
	display: table;
	border-collapse: separate;
	border-spacing: 20px;
	border-color: grey;
	display: table;
	margin: auto;
	
}
#ticket_contents>td{
	vertical-align: middle;
}
</style>
</head>
<body>




	<div class="wrapper">

		<div>
			<div class="column">
				<header>
					<h1>예매 조회</h1>

					<hr>
				</header>
			</div>

		</div>





		<div>
			<form role="form" action="../booking/booking_cancle.do" method="post"
				name="bus_input">
				<input type="hidden" name="ticket_no" value="${ticket_no}">
				<div class="column">
					<div class="ui top attached tabular menu">
						<div class="active item">티켓 조회</div>

					</div>
					<table class="ui single line table">
						<thead>
							<tr>
								<th>예약번호</th>
								<th>버스번호</th>
								<th>좌석번호</th>
								<th>핸드폰 번호</th>
								<th>결제 금액</th>
								<th>결제일</th>
								<th>출발일자</th>
								<th>상세</th>
							</tr>
						</thead>
						<tbody>
							
							<tr id="ticket_contents">
								<td rowspan="2">${ticket.ticket_no}</td>
								<td rowspan="2">${ticket.bus_no}1</td>
								<td rowspan="2">${ticket.seat_no}2</td>
								<td rowspan="2">${ticket.hp}3</td>
								<td rowspan="2">${ticket.totalpay}4</td>
								<td rowspan="2">${ticket.payday}5</td>
								<td rowspan="2">${ticket.arrive_day}6</td>
								<td ><button
									class="ui teal basic button" type="submit" data-oper="modify">예매변경</button>
								</td>
							</tr>
							<tr>
								<td><button class="ui teal basic button" type="submit" data-oper="cancle">예매취소</button></td>
							</tr>
						</tbody>
					</table>
								
					
					

				</div>

			</form>
			<div class="column" align="center">
				<table cellpadding="10" id="infomation">
					<tr>
						<td rowspan="9"><img src="../images/caution.jpg"></td>
						<td id="info_content">예매한 승차권 발권 시에는 반드시 예매한 카드를 지참하셔야 하며, 해당
							터미널 매표 창구에 예약된 사항이 있다고 말씀하시고 카드를 제시하시면 승차권을 발권받으실 수 있습니다. (발권방법의
							차이가 있는 터미널이 존재하며, 해당 터미널에 문의하시면 정확한 발권방법의 확인이 가능합니다.)</td>
					</tr>
					<tr>
						<td id="info_content">출발시간이 지난 후에는 승차권을 발권받을 수 없습니다. 출발 당일
							터미널 혼잡에 대비하여 출발시간보다 여유있게 터미널에 도착하셔서 발권 받으시기 바랍니다.</td>
					</tr>
					<tr>
						<td id="info_content">출발일시 및 매수, 좌석번호 등을 다시 한번 확인해 주시기 바랍니다.</td>
					</tr>
					<tr>
						<td id="info_content">취소 및 부도위약금의 안내를 다시 한 번 확인해서 불이익을 받지 않도록
							유의해주시기 바랍니다.</td>
					</tr>
					<tr>
						<td id="info_content">과거 예매 내역은 1주일 이내만 조회 가능합니다.</td>
					</tr>
					<tr>
						<td id="info_content">당일 이후 탑승 예정인 구매 내역은 모두 조회 가능합니다.</td>
					</tr>

				</table>

			</div>

		</div>

	</div>

</body>
</html>