<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>예매 내역 조회결과</title>
<link rel="stylesheet" type="text/css" href="/Project_BusBooking/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="/Project_BusBooking/css/daterangepicker.css" />
<link rel="stylesheet" type="text/css" href="/Project_BusBooking/css/base.css">
<link rel="stylesheet" type="text/css" href="/Project_BusBooking/semantic/semantic.css">
<link rel="stylesheet" type="text/css" href="/Project_BusBooking/css/calendar.min.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="/Project_BusBooking/semantic/semantic.js"></script>
<link rel="stylesheet" type="text/css" href="/Project_BusBooking/css/alertify.core.css" />
<link rel="stylesheet" type="text/css" href="/Project_BusBooking/css/alertify.default.css" id="toggleCSS" />
<script src="/Project_BusBooking/js/alertify.min.js"></script>
<script type="text/javascript">
</script>
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
.booking {
	list-style: none;
	font-size: 1.3rem;
	margin-right: 1rem;
	border: 1px solid white;
	border-radius: 20px;
	padding: 5px;
	color: white;
	background-color: lightskyblue;
	align-content: center;
}
.cancle {
	list-style: none;
	font-size: 1.3rem;
	margin-right: 1rem;
	border: 1px solid white;
	border-radius: 20px;
	padding: 5px;
	color: white;
	background-color: red;
}
.ter {
	list-style: none;
	margin-right: 1rem;
	border: 1px solid white;
	border-radius: 20px;
	padding: 3px;
	color: white;
	background-color: orange;
}
</style>
</head>
<body>
	<div class="wrapper">
		<div class="column">
			<header>
				<h1>예매 조회/변경/취소</h1>
			</header>
		</div>
		<div class="column">
			<div class="ui top attached tabular menu">
				<div class="active item">예매 내역</div>
			</div>
			<form action="../booking/bookingCheckDetail.do" method="post">
				<input type="hidden" name="busVO" value="${busVO}">
				<input type="hidden" name="ticketVO" value="${ticketVO}">
				<input type="hidden" name="seatVO" value="${seatVO}">
				<table class="ui single line table">
					<thead>
						<tr>
							<th>예약번호 및 상태</th>
							<th>차편정보</th>
							<th>상세</th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${ticketVO.ticket_no == null}">
							<tr>
								<td colspan="3" align="center">예매 내역이 존재하지 않습니다.</td>
							</tr>
						</c:if>
						<c:if test="${ticketVO.ticket_no != null}">
							<tr>
								<td>
									${ticketVO.ticket_no}<br>
									<c:if test="${ticketVO.cancle_check == 'n'}">
										<br>
										<span class="booking">예매</span>
									</c:if>
									<c:if test="${ticketVO.cancle_check == 'y'}">
										<span class="cancle">취소</span>
									</c:if>
								</td>
								<td >
									${ticketVO.arrive_day} &nbsp;${arrive_time}<br><br>
									<span class="ter">출발</span>${busVO.start_tr } &nbsp;>>>>&nbsp; <span class="ter">도착</span>${busVO.end_tr }
								</td>
								<td>
									<br>
									<input type="submit" value="선택">
								</td>
							</tr>
						</c:if>
					</tbody>
				</table>
			</form>
		</div>
		<div class="column" align="center">
			<table id="infomation">
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
</body>
</html>