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

#mainli {
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
	border: 3px solid yellow;
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

.road .box {
	float: left;
	list-style: none;
	margin: 0 0;
	font-size: 1.5rem;
	margin-right: 1rem;
	border: 1px solid white;
	border-radius: 20px;
	padding: 1px 2px;
	color: white;
	background-color: orange;
}

.road li {
	float: left;
	font-size: 2em;
}

#menu1 {
	float: left;
	width: 350px;
}

#menu2 {
	margin-left: 200px;
	float: left;
	width: 400px;
	height: 300px;
}

}
#menu3 {
	margin-top: 670px;
	clear: both;
	width: 340px;
}

.seat {
	display: block;
	width: 500px;
}

.seat li {
	position: relative;
	float: left;
}

.buy_area>ul>li {
	float: left;
	vertical-align: middle;
	width: 340px;
}

.level {
	display: inline-block;
	height: 100px;
	vertical-align: middle;
}

.seat ul span {
	position: relative;
	right: 43px;
	top: -10px;
}

.seat .line1 {
	position: absolute;
	left: 960px;
	top: 650px;
}

.seat .line2 {
	position: absolute;
	left: 960px;
	top: 720px;
}

.seat .line3 {
	position: absolute;
	left: 960px;
	top: 790px;
}

.seat .line4 {
	position: absolute;
	left: 960px;
	top: 860px;
}

.seat .line5 {
	position: absolute;
	left: 960px;
	top: 930px;
}

.seat .line6 {
	position: absolute;
	left: 960px;
	top: 1000px;
}

.seat .line7 {
	position: absolute;
	left: 960px;
	top: 1070px;
}

.seat .line8 {
	position: absolute;
	left: 960px;
	top: 1140px;
}

.seat .line9 {
	position: absolute;
	left: 960px;
	top: 1210px;
}

.seat .line10 {
	position: absolute;
	left: 960px;
	top: 1280px;
}
</style>
<script type="text/javascript">
	$(document).ready(function() {
		var seat = [];
		var count=0;
		var reserved_list = new Array();
			
		<c:forEach items="${seat_reservation}" var="item1">
		
		reserved_list.push("${item1}");
		
		</c:forEach>
		
		
		for (var i = 0; i < reserved_list.length; i++) {
			var span = $('<span>____</span>');
			var num1=reserved_list[i]/4.0;
			/* 라인을 구함 */
			var line=Math.ceil(num1);
			/* 자리를 구함 */
			var seat;
			if(reserved_list[i]%4===0){
				seat=reserved_list[i]%4+3;
				
			}else{
				seat=reserved_list[i]%4-1;
			}
			switch (line) {
			case 1:
				$('.line1').find('img').eq(seat).attr('src','../images/seat_disabled.png');
				$('.line1').find('span').eq(seat).remove();
				$('.line1').find('img').eq(seat).after(span);
				$('.line1').find('a').eq(seat).css({ 'pointer-events': 'none' });
				break;
			case 2:
				$('.line2').find('img').eq(seat).attr('src','../images/seat_disabled.png');
				$('.line2').find('span').eq(seat).remove();
				$('.line2').find('img').eq(seat).after(span);
				$('.line2').find('a').eq(seat).css({ 'pointer-events': 'none' });
				break;
			case 3:
				$('.line3').find('img').eq(seat).attr('src','../images/seat_disabled.png');
				$('.line3').find('span').eq(seat).remove();
				$('.line3').find('img').eq(seat).after(span);
				$('.line3').find('a').eq(seat).css({ 'pointer-events': 'none' });
				break;
			case 4:
				$('.line4').find('img').eq(seat).attr('src','../images/seat_disabled.png');
				$('.line4').find('span').eq(seat).remove();
				$('.line4').find('img').eq(seat).after(span);
				$('.line4').find('a').eq(seat).css({ 'pointer-events': 'none' });
				break;
			case 5:
				$('.line5').find('img').eq(seat).attr('src','../images/seat_disabled.png');
				$('.line5').find('span').eq(seat).remove();
				$('.line5').find('img').eq(seat).after(span);
				$('.line5').find('a').eq(seat).css({ 'pointer-events': 'none' });
				break;
			case 6:
				$('.line6').find('img').eq(seat).attr('src','../images/seat_disabled.png');
				$('.line6').find('span').eq(seat).remove();
				$('.line6').find('img').eq(seat).after(span);
				$('.line6').find('a').eq(seat).css({ 'pointer-events': 'none' });
				break;
			case 7:
				$('.line7').find('img').eq(seat).attr('src','../images/seat_disabled.png');
				$('.line7').find('span').eq(seat).remove();
				$('.line7').find('img').eq(seat).after(span);
				$('.line7').find('a').eq(seat).css({ 'pointer-events': 'none' });
				break;
			case 8:
				$('.line8').find('img').eq(seat).attr('src','../images/seat_disabled.png');
				$('.line8').find('span').eq(seat).remove();
				$('.line8').find('img').eq(seat).after(span);
				$('.line8').find('a').eq(seat).css({ 'pointer-events': 'none' });
				break;
			case 9:
				$('.line9').find('img').eq(seat).attr('src','../images/seat_disabled.png');
				$('.line9').find('span').eq(seat).remove();
				$('.line9').find('img').eq(seat).after(span);
				$('.line9').find('a').eq(seat).css({ 'pointer-events': 'none' });
				break;
			case 10:
				$('.line10').find('img').eq(seat).attr('src','../images/seat_disabled.png');
				$('.line10').find('span').eq(seat).remove();
				$('.line10').find('img').eq(seat).after(span);
				$('.line10').find('a').eq(seat).css({ 'pointer-events': 'none' });
				break;

			}
			
			seat=0;
		}
		
		/* 어린 청소년 어린이  */
		var adult = parseInt('<c:out value="${adult}"/>');
		var teen = parseInt('<c:out value="${teen}"/>');
		var kid = parseInt('<c:out value="${kid}"/>');
		
		var total = adult+teen+kid;
		var adult_payment = parseInt('<c:out value="${bus_vo.payment}"/>')
		var teen_payment =  parseInt('<c:out value="${bus_vo.payment}"/>')*0.7;
		var kid_payment =   parseInt('<c:out value="${bus_vo.payment}"/>')*0.5;
		 var total_payment = (adult*adult_payment)+(teen*teen_payment)+(kid*kid_payment);
		$('#adult').find('option').eq(adult).attr({
			'selected':'selected'
		});
		$('#teen').find('option').eq(teen).attr({
			'selected':'selected'
		});
		$('#kid').find('option').eq(kid).attr({
			'selected':'selected'
		});
		
	
		$('.adult').text(adult+"명"+adult_payment*adult+"원");
		$('.teen').text(teen+"명"+teen_payment*teen+"원");
		$('.kid').text(kid+"명"+kid_payment*kid+"원");
		$('.total').text(total_payment+"원"); 
		
		//드롭다운기준
		$('#adult').dropdown({
			direction : 'down',
			duration : 700,
			onChange : function(value, text, $choice) {
				var value = parseInt(value);
				if(adult<=value){
					adult=adult+value-adult;
				}else if (value==0) {
					adult=0;
				}else{
					adult=adult+adult-value;
				}
				total=adult+teen+kid;
				alert("변경된 어른수 : "+adult);
				alert("변경된 총인원수 : "+total);
				$('.adult').text(adult+"명"+adult_payment*adult+"원");
				$('.teen').text(teen+"명"+teen_payment*teen+"원");
				$('.kid').text(kid+"명"+kid_payment*kid+"원");
				total_payment=(adult*adult_payment)+(teen*teen_payment)+(kid*kid_payment);
				$('.total').text(total_payment+"원"); 
				
			}
		});
		$('#teen').dropdown({
			direction : 'down',
			duration : 700,
			onChange : function(value, text, $choice) {
				var value = parseInt(value);
				if(teen<=value){
					teen=teen+value-teen;
				}else if (value==0) {
					teen=0;
				}else{
					teen=teen+adult-teen;
				}
				total=adult+teen+kid;
				alert("변경된 청소년수 : "+teen);
				alert("변경된 총인원수 : "+total);
				$('.adult').text(adult+"명"+adult_payment*adult+"원");
				$('.teen').text(teen+"명"+teen_payment*teen+"원");
				$('.kid').text(kid+"명"+kid_payment*kid+"원");
				total_payment=(adult*adult_payment)+(teen*teen_payment)+(kid*kid_payment);
				$('.total').text(total_payment+"원"); 
				
			}
		});
		$('#kid').dropdown({
			direction : 'down',
			duration : 700,
			onChange : function(value, text, $choice) {
				var value = parseInt(value);
				alert(value);
				if(kid<=value){
					kid=kid+value-kid;
				}else if (value==0) {
					kid=0;
				}
				else{
					kid=kid+adult-kid;
				}
				total=adult+teen+kid;
				alert("변경된 아동수 : "+kid);
				alert("변경된 총인원수 : "+total);
				$('.adult').text(adult+"명"+adult_payment*adult+"원");
				$('.teen').text(teen+"명"+teen_payment*teen+"원");
				$('.kid').text(kid+"명"+kid_payment*kid+"원");
				total_payment=(adult*adult_payment)+(teen*teen_payment)+(kid*kid_payment);
				$('.total').text(total_payment+"원"); 
				
			}
			
		});
		//자리 선택시 
		$(".seat a").on("click" ,function(e){
			e.preventDefault();
			
			alert($(this).attr("href")+"번 자리를 선택하셨습니다.");
			var seat_num=$(this).attr("href");
				parseInt(seat_num);
				alert("선택한좌석"+ seat_num);
			var line_num=seat_num/4.0;
			/* 라인을 구함 */
			var line=Math.ceil(line_num);
			/* 자리를 구함 */
			var seat;
			if(seat_num%4===0){
				seat=seat_num%4+3;
				
			}else{
				seat=seat_num%4-1;
			}

			alert("선택한 좌석개수  : "+count +"할수있는 총 좌석"+total);
			switch (line) {
			case 1:
				if($('.line1').find('img').eq(seat).prop('src')=='http://localhost:8080/Project_BusBooking/images/seat_on.png'){
					$('.line1').find('img').eq(seat).attr('src','../images/seat_off.png');
					delete seat[seat_num-1];
					count--;
					break;
				}else if (total<=count) {
					alert("선택할수 있는 좌석의 개수를 초과하였습니다.");
					return false;
				}else{
					$('.line1').find('img').eq(seat).attr('src','../images/seat_on.png');
					count++;
					seat[seat_num-1]=seat_num;
				}
				
				break;
			case 2:
				if($('.line2').find('img').eq(seat).prop('src')=='http://localhost:8080/Project_BusBooking/images/seat_on.png'){
					$('.line2').find('img').eq(seat).attr('src','../images/seat_off.png');
					delete seat[seat_num-1];
					count--;
					break;
				}else if (total<=count) {
					alert("선택할수 있는 좌석의 개수를 초과하였습니다.");
					return false;
				}else{
					$('.line2').find('img').eq(seat).attr('src','../images/seat_on.png');
					count++;
					seat[seat_num-1]=seat_num;
					alert("선택한 좌석개수  : "+count);
				}
				
				break;
			case 3:
				if($('.line3').find('img').eq(seat).prop('src')=='http://localhost:8080/Project_BusBooking/images/seat_on.png'){
					$('.line3').find('img').eq(seat).attr('src','../images/seat_off.png');
					delete seat[seat_num-1];
					count--;
					break;
				}else if (total<=count) {
					alert("선택할수 있는 좌석의 개수를 초과하였습니다.");
					return false;
				}else{
					$('.line3').find('img').eq(seat).attr('src','../images/seat_on.png');
					count++;
					seat[seat_num-1]=seat_num;
					alert("선택한 좌석개수  : "+count);
				}
				break;
			case 4:
				if($('.line4').find('img').eq(seat).prop('src')=='http://localhost:8080/Project_BusBooking/images/seat_on.png'){
					$('.line4').find('img').eq(seat).attr('src','../images/seat_off.png');
					delete seat[seat_num-1];
					count--;
					break;
				}else if (total<=count) {
					alert("선택할수 있는 좌석의 개수를 초과하였습니다.");
					return false;
				}else{
					$('.line4').find('img').eq(seat).attr('src','../images/seat_on.png');
					count++;
					seat[seat_num-1]=seat_num;
					alert("선택한 좌석개수  : "+count);
				}
				break;
			case 5:
				if($('.line5').find('img').eq(seat).prop('src')=='http://localhost:8080/Project_BusBooking/images/seat_on.png'){
					$('.line5').find('img').eq(seat).attr('src','../images/seat_off.png');
					delete seat[seat_num-1];
					count--;
					break;
				}else if (total<=count) {
					alert("선택할수 있는 좌석의 개수를 초과하였습니다.");
					return false;
				}else{
					$('.line5').find('img').eq(seat).attr('src','../images/seat_on.png');
					count++;
					seat[seat_num-1]=seat_num;
					alert("선택한 좌석개수  : "+count);
				}
				break;
			case 6:
				if($('.line6').find('img').eq(seat).prop('src')=='http://localhost:8080/Project_BusBooking/images/seat_on.png'){
					$('.line6').find('img').eq(seat).attr('src','../images/seat_off.png');
					delete seat[seat_num-1];
					count--;
					break;
				}else if (total<=count) {
					alert("선택할수 있는 좌석의 개수를 초과하였습니다.");
					return false;
				}else{
					$('.line6').find('img').eq(seat).attr('src','../images/seat_on.png');
					count++;
					seat[seat_num-1]=seat_num;
					alert("선택한 좌석개수  : "+count);
				}
				break;
			case 7:
				if($('.line7').find('img').eq(seat).prop('src')=='http://localhost:8080/Project_BusBooking/images/seat_on.png'){
					$('.line7').find('img').eq(seat).attr('src','../images/seat_off.png');
					delete seat[seat_num-1];
					count--;
					break;
				}else if (total<=count) {
					alert("선택할수 있는 좌석의 개수를 초과하였습니다.");
					return false;
				}else{
					$('.line7').find('img').eq(seat).attr('src','../images/seat_on.png');
					count++;
					seat[seat_num-1]=seat_num;
					alert("선택한 좌석개수  : "+count);
				}
				break;
			case 8:
				if($('.line8').find('img').eq(seat).prop('src')=='http://localhost:8080/Project_BusBooking/images/seat_on.png'){
					$('.line8').find('img').eq(seat).attr('src','../images/seat_off.png');
					delete seat[seat_num-1];
					count--;
					break;
				}else if (total<=count) {
					alert("선택할수 있는 좌석의 개수를 초과하였습니다.");
					return false;
				}else{
					$('.line8').find('img').eq(seat).attr('src','../images/seat_on.png');
					count++;
					seat[seat_num-1]=seat_num;
				}
				break;
			case 9:
				if($('.line9').find('img').eq(seat).prop('src')=='http://localhost:8080/Project_BusBooking/images/seat_on.png'){
					$('.line9').find('img').eq(seat).attr('src','../images/seat_off.png');
					delete seat[seat_num-1];
					count--;
					break;
				}else if (total<=count) {
					alert("선택할수 있는 좌석의 개수를 초과하였습니다.");
					return false;
				}else{
					$('.line9').find('img').eq(seat).attr('src','../images/seat_on.png');
					count++;
					seat[seat_num-1]=seat_num;
				}
				break;
			case 10:
				if($('.line10').find('img').eq(seat).prop('src')=='http://localhost:8080/Project_BusBooking/images/seat_on.png'){
					$('.line10').find('img').eq(seat).attr('src','../images/seat_off.png');
					delete seat[seat_num-1];
					count--;
					break;
				}else if (total<=count) {
					alert("선택할수 있는 좌석의 개수를 초과하였습니다.");
					return false;
				}else{
					$('.line10').find('img').eq(seat).attr('src','../images/seat_on.png');
					count++;
					seat[seat_num-1]=seat_num;
				}
				break;
		
			}
			/* 	$('#menu2').find('a').val($(this).attr("href")); */
		});
		
		var actionform = $("#actionForm");
		$('#submit').on("click",function(e){
			e.preventDefault();
			if (total<count) {
				alert("선택할수 있는 좌석의 개수를 초과하였습니다.");
				return false;
			}
			//예약한 총 금액
			actionform.find("input[name='total_payment']").val(total_payment);
			//예약한 총좌석
			actionform.find("input[name='total_seat']").val(count);
			actionform.find("input[name='seat_no']").val(seat);
			alert("예약한 총 좌석 개수 : "+count +" 총금액"+total_payment+"예약한 좌석"+seat.toString());
			actionform.submit();
		});
		var tag;

		for(var i = 0 ; i <  count ; i++){

		  tag = "<input type='hidden' value="+seat[i]+"  name='data[ " + i + " ] ' />";

		  document.form.appendChild(tag);

		}
	});
</script>
</head>
<body>


	<div class="wrapper">
		<form role="form"  method="post" id="actionForm" action="#">
			<input type="hidden" name="bus_no" value="${bus_no}">
			<input type="hidden" name="seat_no" value="">
			<input type="hidden" name="total_payment" value="">
			<input type="hidden" name="total_seat" value="">
			
			<input type="hidden" name="start_tr" value="${bus_vo.start_tr}"> 
			<input type="hidden" name="end_tr" value="${bus_vo.end_tr}"> 
			<input type="hidden" name="adult"value="${adult}"> 
			<input type="hidden" name="teen" value="${teen}">
			<input type="hidden" name="kid" value="${kid}">
			<input type="hidden" name="arrive_time" value="${arrive_time}">
			<input type="hidden" name="arrive_day" value="${arrive_day}">
		</form>
		<div>
			<div class="column">
				<header>
					<h1>승차권 예매</h1>
					<ul class="level">
						<li>1.기초정보 입력</li>
						<li>2.배차 조회</li>
						<li id="mainli">매수 및 좌석선택</li>
						<li>4.카드 정보 입력</li>
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
						<div class="active item">가는편</div>

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
								<td width="500px"><ul>
										<li>출발날짜</li>
									</ul>${arrive_day}</td>
							</tr>
						</table>
					</div>
					<div id="buy_area">
						<ul>
							<li id="menu1"><span>매수 선택</span>
								<div>
									<table class="ui basic table">
										<thead>
											<tr>
												<td>어른</td>
												<td><select name="adult" class="ui dropdown" id="adult">
														<option value="0">0</option>
														<option value="1">1</option>
														<option value="2">2</option>
														<option value="3">3</option>
														<option value="4">4</option>
														<option value="5">5</option>
														<option value="6">6</option>
														<option value="7">7</option>
														<option value="8">8</option>
														<option value="9">9</option>
														<option value="10">10</option>
												</select></td>
											</tr>
											<tr>
												<td>청소년</td>
												<td><select name="teen" class="ui dropdown" id="teen">
														<option value="0">0</option>
														<option value="1">1</option>
														<option value="2">2</option>
														<option value="3">3</option>
														<option value="4">4</option>
														<option value="5">5</option>
														<option value="6">6</option>
														<option value="7">7</option>
														<option value="8">8</option>
														<option value="9">9</option>
														<option value="10">10</option>
												</select></td>
											</tr>
											<tr>
												<td>어린이</td>
												<td><select name="kid" class="ui dropdown" id="kid">
														<option value="0">0</option>
														<option value="1">1</option>
														<option value="2">2</option>
														<option value="3">3</option>
														<option value="4">4</option>
														<option value="5">5</option>
														<option value="6">6</option>
														<option value="7">7</option>
														<option value="8">8</option>
														<option value="9">9</option>
														<option value="10">10</option>
												</select></td>
											</tr>
										</thead>
									</table>
								</div></li>
							<li id="menu2"><span>좌석 선택</span>
								<div class="seat">
									<img src="../images/bg_seat.gif">
									<ul class="line1">
										<li class="1"><a href="1"> <img src="../images/seat_off.png">
												<span>01</span>
										</a></li>
										<li class="2"><a href="2"> <img src="../images/seat_off.png">
												<span>02</span>
										</a></li>
										<li class="3"><a href="3"> <img src="../images/seat_off.png">
												<span>03</span>
										</a></li>
										<li class="4"><a href="4"> <img src="../images/seat_off.png">
												<span>04</span>
										</a></li>
									</ul>
									<ul class="line2">
										<li class="5"><a href="5"> <img src="../images/seat_off.png">
												<span>05</span>
										</a></li>
										<li class="6"><a href="6"> <img src="../images/seat_off.png">
												<span>06</span>
										</a></li>
										<li class="7"><a href="7"> <img src="../images/seat_off.png">
												<span>07</span>
										</a></li>
										<li class="8"><a href="8"> <img src="../images/seat_off.png">
												<span>08</span>
										</a ></li>
									</ul>
									<ul class="line3">
										<li class="9"><a href="9"> <img src="../images/seat_off.png">
												<span>09</span>
										</a></li>
										<li class="10"><a href="10"> <img src="../images/seat_off.png">
												<span>10</span>
										</a></li>
										<li class="11"><a href="11"> <img src="../images/seat_off.png">
												<span>11</span>
										</a></li>
										<li class="12"><a href="12"> <img src="../images/seat_off.png">
												<span>12</span>
										</a></li>
									</ul>
									<ul class="line4">
										<li class="13"><a href="13"> <img src="../images/seat_off.png">
												<span>13</span>
										</a></li>
										<li class="14"><a href="14"> <img src="../images/seat_off.png">
												<span>14</span>
										</a></li>
										<li class="15"><a href="15"> <img src="../images/seat_off.png">
												<span>15</span>
										</a ></li>
										<li class="16"><a href="16"> <img src="../images/seat_off.png">
												<span>16</span>
										</a></li>
									</ul>
									<ul class="line5">
										<li class="17"><a href="17"> <img src="../images/seat_off.png">
												<span>17</span>
										</a></li>
										<li class="18"><a href="18"> <img src="../images/seat_off.png">
												<span>18</span>
										</a></li>
										<li class="19"><a href="19"> <img src="../images/seat_off.png">
												<span>19</span>
										</a></li>
										<li class="20"><a href="20"> <img src="../images/seat_off.png">
												<span>20</span>
										</a></li>
									</ul>
									<ul class="line6">
										<li class="21"><a href="21"> <img src="../images/seat_off.png">
												<span>21</span>
										</a></li>
										<li class="22"><a href="22"> <img src="../images/seat_off.png">
												<span>22</span>
										</a></li>
										<li class="23"><a href="23"> <img src="../images/seat_off.png">
												<span>23</span>
										</a></li>
										<li class="24"><a href="24"> <img src="../images/seat_off.png">
												<span>24</span>
										</a></li>
									</ul>
									<ul class="line7">
										<li class="25"><a href="25"> <img src="../images/seat_off.png">
												<span>25</span>
										</a></li>
										<li class="26"><a href="26"> <img src="../images/seat_off.png">
												<span>26</span>
										</a></li>
										<li class="27"><a href="27"> <img src="../images/seat_off.png">
												<span>27</span>
										</a></li>
										<li class="28"><a href="28"> <img src="../images/seat_off.png">
												<span>28</span>
										</a></li>
									</ul>
									<ul class="line8">
										<li class="29"><a href="29"> <img src="../images/seat_off.png">
												<span>29</span>
										</a></li>
										<li class="30"><a href="30"> <img src="../images/seat_off.png">
												<span>30</span>
										</a></li>
										<li class="31"><a href="31"> <img src="../images/seat_off.png">
												<span>31</span>
										</a></li>
										<li class="32"><a href="32"> <img src="../images/seat_off.png">
												<span>32</span>
										</a></li>
									</ul>
									<ul class="line9">
										<li class="33"><a href="33"> <img src="../images/seat_off.png">
												<span>33</span>
										</a></li>
										<li class="34"><a href="34"> <img src="../images/seat_off.png">
												<span>34</span>
										</a></li>
										<li class="35"><a href="35"> <img src="../images/seat_off.png">
												<span>35</span>
										</a></li>
										<li class="36"><a href="36"> <img src="../images/seat_off.png">
												<span>36</span>
										</a></li>
									</ul>
									<ul class="line10">
										<li class="37"><a href="37"> <img src="../images/seat_off.png">
												<span>37</span>
										</a></li>
										<li class="38"><a href="38"> <img src="../images/seat_off.png">
												<span>38</span>
										</a></li>
										<li class="39"><a href="39"> <img src="../images/seat_off.png">
												<span>39</span>
										</a></li>
										<li class="40"><a href="40"> <img src="../images/seat_off.png">
												<span>40</span>
										</a></li>
									</ul>
								</div></li>
							<li id="menu3">
								<table border="1px" style="width: 400px; height: 500px;">

									<tbody>
										<tr>
											<th colspan="2"><span>선택 매수 및 금액</span></th>
										</tr>
										<tr>
											<th rowspan="3">가는편</th>
											<td>어른 <span class="adult"></span>
											</td>
										</tr>
										<tr>

											<td>청소년 <span class="teen"></span>
											</td>
										</tr>
										<tr>
											<td>어린이 <span class="kid"></span>
											</td>
										</tr>
										<tr>
											<th>합계</th>
											<td><span class="total"></span></td>
										</tr>
										<tr>
											<th colspan="2"><button type="button" id="submit">다음</button></th>
										</tr>
									</tbody>
								</table>
							</li>
						</ul>

					</div>

				</div>

			</form>




		</div>
	</div>

	</div>

</body>
</html>