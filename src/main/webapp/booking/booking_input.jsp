﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
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
	$(document).ready(function () {
		var formObj =$("form");
		
		$('button').on("click",function(e){
			e.preventDefault();
			var date =null;
			var arrivedate = $("#arrivedate").val();
			//alert(arrivedate);
			if(arrivedate.indexOf(" ",1)==1){
				var day="0"+arrivedate.substring(0,1);
				var month=arrivedate.substring(2,4);
				var year=arrivedate.substring(6,11);
					
				var date=year+"-"+month+"-"+day;
				//alert(date);
			}else{
				var day=arrivedate.substring(0,2);
				var month=arrivedate.substring(3,5);
				var year=arrivedate.substring(7,12);
				var date=year+month+day;
				//alert(date);
			}
				$("#arrivedate").attr('value',date);
				var value=$("#arrivedate").attr("value");
				//alert(value+"값이 저장되었습니다.");
				forObj.submit();
		});
	});
	
	$(function() {

		var dt = new Date();
		var month = dt.getMonth() + 1;
		var day = dt.getDate();
		var year = dt.getFullYear();
		var today;
		$('#example1').calendar(
				{
					type : 'date',
					today : true,
					minDate : dt,
					monthFirst : false,
					onChange : function(date, text, mode) {
						var month = date.getMonth() + 1;
						var day = date.getDate();
						var year = date.getFullYear();
						today = year + '-' + month + '-' + day;
					},
					text : {

						days : [ '일', '월', '화', '수', '목', '금', '토' ],
						months : [ '1', '2', '3', '4', '5', '6', '7', '8', '9',
								'10', '11', '12' ],
						monthsShort : [ '1', '2', '3', '4', '5', '6', '7', '8',
								'9', '10', '11', '12' ],
						today : '오늘'

					}

				});
		$('#start_tr').click(function() {
			//출발지 버튼 클릭시 일어나는 기능
			$(".start_bus").fadeIn(300);

			$("#glayLayer").fadeIn(300);
			$('#start_text').focus();

			return false;
		});

		$('#end_tr').click(function() {
			//도착지 버튼 클릭시 일어나는 기능
			$(".end_bus").fadeIn(300);
			$("#glayLayer").fadeIn(300);
			$('#end_text').focus();
			return false;
		});
		$('#all_tr').dropdown({
			//출발지선택 드롭다운 의 기능
			direction : 'down',
			duration : 700,
			onChange : function(value, text, $choice) {
				alert(value + "을 출발지로 선택하셨습니다.");
				var start = value;
				$("#start_tr").attr({
					placeholder : start,
					value : start,
					readonly : "true"
				});
				$(".start_bus").fadeOut(200);
				$("#glayLayer").fadeOut(300);
			}
		});

		$('#local_start').dropdown({
			//출발지 지역선택 드롭다운 의 기능
			direction : 'down',
			duration : 700,
			onChange : function(value, text, $choice) {
				/* 지역선택에따른 jons 으로 터미널 목록 생성 */
			}
		});
		$('#local_end').dropdown({
			//도착지 지역선택 드롭다운 의 기능
			direction : 'down',
			duration : 700,
			onChange : function(value, text, $choice) {
				/* 지역선택에따른 jons 으로 터미널 목록 생성 */
			}
		});

		$('#end_tr').click(function() {
			//도착지 버튼 클릭시 일어나는 기능
			$(".end_bus").fadeIn(300);
			$("#glayLayer").fadeIn(300);
			return false;
		});
		$('#all_end_tr').dropdown({
			//도착지선택 드롭다운 의 기능
			direction : 'down',
			duration : 700,
			onChange : function(value, text, $choice) {
				alert(value + "을 도착지로 선택하셨습니다.");
				var end = value;
				$("#end_tr").attr({
					placeholder : end,
					value : end,
					readonly : "true"
				});
				$(".end_bus").fadeOut(200);
				$("#glayLayer").fadeOut(300);
			}
		});

		$("#glayLayer").click(function() {
			//배경 레이어의 숨김
			$(this).fadeOut(300);
			$(".start_bus").fadeOut(200);
			$(".end_bus").fadeOut(200);

		});
		$(function() {
			$("#startDate").datepicker({
				minDate : 0,
				maxDate : "+12M +10D"
			});
		});
		$('#adult').dropdown({//어른 인원 드롭다운
			direction : 'down',
			duration : 700,
			onChange : function(value, text, $choice) {
				alert(value);
			}
		});
		$('#teen').dropdown({
			direction : 'down',
			duration : 700,
			onChange : function(value, text, $choice) {
				alert(value);
			}
		});
		$('#kid').dropdown({
			direction : 'down',
			duration : 700,
			onChange : function(value, text, $choice) {
				alert(value);
			}
		});
		$('#arrive_time').dropdown({
			direction : 'down',
			duration : 700,
			onChange : function(value, text, $choice) {
				alert("출발시간은" + value + "입니다");
			}
		});
		$.ajax({
			url : "booking_inputJson.do",
			type : "post",
			data : {},
			dataType : "json",
			success : function(data) {
				$.each(data.items, function(index, item) {
					var option = $("<option>", {
						value : item.end_tr,
						text : item.end_tr
					});

					$("#all_tr").append(option);
				});
				$.each(data.items, function(index, item) {
					var option = $("<option>", {
						value : item.end_tr,
						text : item.end_tr
					});

					$("#all_end_tr").append(option);
				});
			},
			error : function(xhr, textStatus, errorThrown) {
				$("div").html(
						"<div>" + textStatus + "(HTTP-)" + xhr.status + "/"
								+ errorThrown + ")</div>");

			}

		});
		$.ajax({
			url : "booking_RegionJson.do",
			type : "post",
			data : {},
			dataType : "json",
			success : function(data) {
				$.each(data.items, function(index, item) {
					var option = $("<option>", {
						value : item.region,
						text : item.region
					});

					$("#local_start").append(option);
				});
				$.each(data.items, function(index, item) {
					var option = $("<option>", {
						value : item.region,
						text : item.region
					});

					$("#local_end").append(option);
				});
			},
			error : function(xhr, textStatus, errorThrown) {
				$("div").html(
						"<div>" + textStatus + "(HTTP-)" + xhr.status + "/"
								+ errorThrown + ")</div>");

			}

		});

	});
</script>
<style type="text/css">
p {
	padding: 3rem;
	text-align: left;
}

.start_bus {
	display: none;
	background-color: #01A9DB;
	width: 1000x;
	height: 300px;
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
	width: 1000x;
	height: 300px;
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
</style>
</head>
<body>

	<div id="glayLayer"></div>

	<!-- 출발 터미널 선택 창 -->
	<div class="start_bus" style="color: white;">
		<h3 align="center" style="color: white">출발 터미널 선택</h3>
		<table>
			<tr>
				<td>전체 터미널 목록</td>
				<td><select name="start" class="ui dropdown" id="all_tr">
						<option value="">전체 터미널 목록</option>
						<!-- json으로 추가됨  -->
				</select></td>
			</tr>
			<tr>
				<td>지역별로 터미널 선택</td>
				<td><select name="local" class="ui dropdown" id="local_start">
						<option value="">지역별 선택</option>
						<!-- document.on 함수 참조 -->
				</select></td>
			</tr>
			<tr style="border-bottom: 1px solid white;">
				<td>터미널 검색</td>
				<td><div class="ui input focus">
						<input type="text" placeholder="Search..." id="start_text"
							size="70%">
					</div></td>
			</tr>

		</table>

		<div>
			<table>
				<tr>
					<!-- 검색전 (전체 터미널 목록) -->
					<!-- 검색후 (검색된 터미널 목록) -->
				</tr>

			</table>
		</div>
	</div>
	<!-- 출발 터미널 선택창 끝 -->
	<!-- 도착 터미널 선택창 -->
	<div class="end_bus" style="color: white;">
		<h3 align="center" style="color: white">도착 터미널 선택</h3>
		<table>
			<tr>
				<td>전체 터미널 목록</td>
				<td><select name="end" class="ui dropdown" id="all_end_tr">
						<option value="">전체 터미널 목록</option>
						<!-- json으로 목록 추가됨  -->
				</select></td>
			</tr>
			<tr style="border-bottom: 1px solid white;">
				<td>지역별로 터미널 선택</td>
				<td><select name="local" class="ui dropdown" id="local_end">
						<option value="">지역별 선택</option>
						<!-- document.on 함수 참조 -->
				</select></td>
			</tr>
			<tr style="border-bottom: 1px solid white;">
				<td>터미널 검색</td>
				<td><div class="ui input focus">
						<input type="text" placeholder="Search..." id="end_text"
							size="70%">
					</div></td>
			</tr>
		</table>



	</div>

	</div>


	<div class="wrapper">

		<div>
			<div class="column">
				<header>
					<h1>승차권 예매</h1>
					<ul class="level">
						<li id="mainli">1.기초정보 입력</li>
						<li>2.배차 조회</li>
						<li>3.매수 및 좌석 선택</li>
						<li>4.카드 정보 입력</li>
					</ul>
					<hr>
				</header>
			</div>

		</div>
		<div>





			<form role="form" action="../booking/booking_bus.do" method="post"
				name="bus_input">
				<input type="hidden" value="" name="arrive_day" id="real_arrivedate">
				<div class="column">
					<table border="1px solid" align="center">
						<tr>
							<td rowspan="8" style="background-color: #A9E2F3"><img
								alt="" src="/Project_BusBooking/assets/logo.png"
								style="width: 50px; height: 50px; margin-left: 40%;">
								<h2 style="text-align: center; font-weight: bold;">승차권 예매</h2>
								예매 시스템으로 안전하고 편리하게 여행하세요.</td>
							<td>출발지</td>
							<td>
								<div class="ui input">
									<input type="text" placeholder="출발지선택" id="start_tr"
										name="start_tr">
								</div>
							</td>
						</tr>
						<tr>
							<td>도착지</td>
							<td><div class="ui input">
									<input type="text" placeholder="도착지선택" id="end_tr"
										name="end_tr">
								</div></td>
						</tr>
						<tr>
							<td>가는 일시</td>
							<td>

								<div class="ui calendar" id="example1">
									<div class="ui input left icon">
										<i class="calendar icon"></i> <input type="text"
											placeholder="Date/Time"  id="arrivedate">
									</div>
							</td>
						</tr>
						<tr>
							<td>출발 시각</td>
							<td><select name="arrive_time" class="ui dropdown"
								id="arrive_time" >
									<option value="">출발시각</option>
									<option value="00:00">00:00</option>
									<option value="01:00">01:00</option>
									<option value="02:00">02:00</option>
									<option value="03:00">03:00</option>
									<option value="04:00">04:00</option>
									<option value="05:00">05:00</option>
									<option value="06:00">06:00</option>
									<option value="07:00">07:00</option>
									<option value="08:00">08:00</option>
									<option value="09:00">09:00</option>
									<option value="10:00">10:00</option>
									<option value="11:00">11:00</option>
									<option value="12:00">12:00</option>
									<option value="13:00">13:00</option>
									<option value="14:00">14:00</option>
									<option value="15:00">15:00</option>
									<option value="16:00">16:00</option>
									<option value="17:00">17:00</option>
									<option value="18:00">18:00</option>
									<option value="19:00">19:00</option>
									<option value="20:00">20:00</option>
									<option value="21:00">21:00</option>
									<option value="22:00">22:00</option>
									<option value="23:00">23:00</option>
							</select></td>
						</tr>
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
						<tr>

							<td colspan="2" align="right"><button
									class="ui teal basic button" type="submit">조회</button>
								<button class="ui teal basic button" type="reset">취소</button></td>
						</tr>
					</table>

				</div>
			</form>
		</div>
		<div>
			<div class="ui text container"
				style="text-align: left; margin: 2rem auto;">
				<p>
					1.당일 출발하는 차량은 출발시간 1시간 전까지 예매가 가능합니다.<br> <br> 2. 1회 최대
					예매 매수는 10매입니다. 10매 이상 예매를 원하시는 경우에는 중복예매 가능합니다.<br> <br>
					3. 예매한 승차권 발권 시에는 반드시 예약한 카드를 지참해야 하여, 해당 터미널 매표 창구에 예약된 사항이 있다고
					말씀하시고, 카드를 제시하시면 승차권을 발권받으실 수 있습니다. 단, 부득이하게 예약한 카드를 소지하지 못한 경우,
					예약한 카드 번호를 매표 창구에 제시하시면 승차권을 발급받을 수 있습니다. (발권 방법의 차이가 있는 터미널이 존재하며,
					해당 터미널에 문의하시면 정확한 발권 방법의 확인이 가능합니다.)<br> <br> 4. <span
						style="font-weight: bold;">시외우등형버스는 다음과 같은 할인조건에 따라서 요금할인이
						적용되며, 중복적용되지 않습니다. (노선에 따라 상이할 수 있음)<br> <br> * 할인은
						성인에게만 적용됩니다. (아동/중고생은 제외)<br> * 사전에 인터넷과 모바일 예매를 이용한 승객에게만
						적용됩니다. (터미널 현장발권은 대상에서 제외됩니다. 단, 뒤좌석 예매는 예외)<br> * 요금할인이 적용되는
						시외우등형버스는 결제시 할인율을 확인할 수 있습니다.
					</span> <br>
				</p>
			</div>

		</div>

	</div>

</body>
</html>