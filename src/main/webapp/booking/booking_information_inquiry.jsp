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
	
<!--<link rel="stylesheet" type="text/css"
	href="/Project_BusBooking/semantic/semantic.css">  -->
	
<link rel="stylesheet" type="text/css"
	href="/Project_BusBooking/css/calendar.min.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"
	integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
	crossorigin="anonymous"></script>
<script src="/Project_BusBooking/semantic/semantic.js"></script>
<script src="/Project_BusBooking/js/calendar.js"></script>

<link rel="stylesheet" type="text/css" href="/Project_BusBooking/css/alertify.core.css" />
<link rel="stylesheet" type="text/css" href="/Project_BusBooking/css/alertify.default.css" id="toggleCSS" />
<script src="/Project_BusBooking/js/alertify.min.js"></script>
<script type="text/javascript">


	$(document)
			.ready(
					function arrive_time() {
						var formObj = $("form");//form태그를 객체 선언

						//출발지 선택의 검색 기능 
						$("#start_text")
								.keyup(
										function() {
											var k = $(this).val();
											$("#result_terminal > tr").hide();
											var temp = $("#result_terminal > tr > td:contains('"
													+ k + "')");
											$(temp).parent().show();
										})
						//도착지 선택의 검색 기능 
						$("#end_text")
								.keyup(
										function() {
											var k = $(this).val();
											$("#result_terminal_end > tr")
													.hide();
											var temp = $("#result_terminal_end > tr > td:contains('"
													+ k + "')");
											$(temp).parent().show();
										})

						//조회 클릭시 날짜 형식을 재배열해서 보내는 jquery
						$("#okbutton").on("click", function(e) {
							e.preventDefault();
							if(document.bus_input.start_tr.value == "") {
								alertify.alert("출발지를 선택해주세요");
							} else if(document.bus_input.end_tr.value == "") {
								alertify.alert("도착지를 선택해주세요");
							} else if(document.bus_input.arrivedate.value == "") {
								alertify.alert("출발일자를 선택해주세요");
							} else if(document.bus_input.arrive_time.value == "") {
								alertify.alert("출발시각을 선택해주세요");
							}  else {
							var date = null;
							var arrivedate = $("#arrivedate").val();
							if (arrivedate.indexOf(" ", 1) == 1) {
								var day = "0" + arrivedate.substring(0, 1);
								var month = arrivedate.substring(2, 4);
								var year = arrivedate.substring(6, 11);

								var date = year + "-" + month + "-" +  day;
							} else {
								var day = arrivedate.substring(0, 2);
								var month = arrivedate.substring(3, 5);
								var year = arrivedate.substring(7, 12);
								var date = year + "-" + month + "-" + day;
							}
							$("#real_arrivedate").attr('value', date);
							var value = $("#arrivedate").attr("value");
							formObj.submit();
						}
							
						});

					});
	/*출발터미널의 지역목록 선택후 기능  */
	$(document).on(
			"click",
			".start_terminal",
			function() {
				var startterminal = $(
						'input:radio[name="chk_terminal"]:checked').val();
				//var startterminal=$('input:radio[name="chk_terminal"]').val();
				alertify.alert(startterminal + "을(를) 선택하셨습니다.");
				$("#start_tr").attr({
					placeholder : startterminal,
					value : startterminal,
					readonly : "true"
				});
				$(".start_bus").fadeOut(200);
				$("#glayLayer").fadeOut(300)

			});
	/*도착터미널의 지역목록 선택후 기능  */
	$(document).on("click", ".end_terminal", function() {
		var endterminal = $('input:radio[name="chk_terminal"]:checked').val();
		alertify.alert(endterminal + "을(를) 선택하셨습니다.");
		$("#end_tr").attr({
			placeholder : endterminal,
			value : endterminal,
			readonly : "true"
		});
		$(".end_bus").fadeOut(200);
		$("#glayLayer").fadeOut(300)

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
				alertify.alert(value + "을(를) 출발지로 선택하셨습니다.");
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

		$('#local_start')
				.dropdown(
						{
							//출발지 지역선택 드롭다운 의 기능
							direction : 'down',
							duration : 700,
							onChange : function(value, text, $choice) {
								/* 지역선택에따른 jons 으로 터미널 목록 생성 */
								var local = value;//드롭박스에서 선택한 값을 가져옴 
								$("#result_terminal").empty();
								//ajax실행 
								$
										.ajax({
											url : "booking_input_TerminalJson.do",
											type : "post",
											data : {
												"local" : local
											},
											dataType : "json",
											success : function(data) {
												$
														.each(
																data.items,
																function(index,
																		item) {
																	var tr = $("<tr>");
																	var td = $("<td>");
																	var td2 = $("<td>");
																	var label = $("<label>");
																	var input = $(
																			"<input name='chk_terminal' class='start_terminal' type='radio'>",
																			{
																				value : item.name
																			});
																	input
																			.attr(
																					"value",
																					item.name);
																	label
																			.html(item.name);
																	td
																			.append(label)
																	td2
																			.append(input);
																	tr
																			.append(td);
																	tr
																			.append(td2);
																	$(
																			"#result_terminal")
																			.append(
																					tr);

																});

											},
											error : function(xhr, textStatus,
													errorThrown) {
												$("div").html(
														"<div>" + textStatus
																+ "(HTTP-)"
																+ xhr.status
																+ "/"
																+ errorThrown
																+ ")</div>");

											}

										});

							}
						});

		$('#local_end')
				.dropdown(
						{
							//도착지 지역선택 드롭다운 의 기능
							direction : 'down',
							duration : 1000,
							onChange : function(value, text, $choice) {
								/* 지역선택에따른 jons 으로 터미널 목록 생성 */
								/* 지역선택에따른 jons 으로 터미널 목록 생성 */
								var local = value;//드롭박스에서 선택한 값을 가져옴 
								$("#result_terminal").empty();
								alertify.alert(local);
								//ajax실행 
								$.ajax({
											url : "booking_input_TerminalJson.do",
											type : "post",
											data : {
												"local" : local
											},
											dataType : "json",
											success : function(data) {$.each(
																data.items,
																function(index,
																		item) {
																	var tr = $("<tr>");
																	var td = $("<td>");
																	var td2 = $("<td>");
																	var label = $("<label>");
																	var input = $(
																			"<input name='chk_terminal' class='end_terminal' type='radio'>",
																			{
																				value : item.name,
																			});
																	input
																			.attr(
																					"value",
																					item.name);
																	label
																			.html(item.name);
																	td
																			.append(label)
																	td2
																			.append(input);
																	tr
																			.append(td);
																	tr
																			.append(td2);
																	$(
																			"#result_terminal_end")
																			.append(
																					tr);

																});

											},
											error : function(xhr, textStatus,
													errorThrown) {
												$("div").html(
														"<div>" + textStatus
																+ "(HTTP-)"
																+ xhr.status
																+ "/"
																+ errorThrown
																+ ")</div>");

											}

										});
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
				alertify.alert(value + "을 도착지로 선택하셨습니다.");
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

		$('#arrive_time').dropdown({
			direction : 'down',
			duration : 700,
			onChange : function(value, text, $choice) {
				alertify.alert("출발시간은" + value + "입니다");
			}
		});
		/* 전체 터미널 목록 Json */
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
		$
				.ajax({
					url : "booking_input_TerminalSearchJson.do",
					type : "post",
					data : {},
					dataType : "json",
					success : function(data) {
						$
								.each(
										data.items,
										function(index, item) {
											var tr = $("<tr>");
											var td = $("<td>");
											var td2 = $("<td>");
											var label = $("<label>");
											var input = $(
													"<input name='chk_terminal' class='start_terminal' type='radio'>",
													{
														value : item.name
													});
											input.attr("value", item.name);
											label.html(item.name);
											td.append(label)
											td2.append(input);
											tr.append(td);
											tr.append(td2);
											$("#result_terminal").append(tr);
										});

					},
					error : function(xhr, textStatus, errorThrown) {
						$("div").html(
								"<div>" + textStatus + "(HTTP-)" + xhr.status
										+ "/" + errorThrown + ")</div>");

					}

				});
		$
				.ajax({
					url : "booking_input_TerminalSearchJson.do",
					type : "post",
					data : {},
					dataType : "json",
					success : function(data) {
						$
								.each(
										data.items,
										function(index, item) {
											var tr = $("<tr>");
											var td = $("<td>");
											var td2 = $("<td>");
											var label = $("<label>");
											var input = $(
													"<input name='chk_terminal' class='end_terminal' type='radio'>",
													{
														value : item.name
													});
											input.attr("value", item.name);
											label.html(item.name);
											td.append(label)
											td2.append(input);
											tr.append(td);
											tr.append(td2);
											$("#result_terminal_end")
													.append(tr);
										});

					},
					error : function(xhr, textStatus, errorThrown) {
						$("div").html(
								"<div>" + textStatus + "(HTTP-)" + xhr.status
										+ "/" + errorThrown + ")</div>");

					}

				});

	});
</script>
<style type="text/css">
#okbutton,#resetbutton {
	border-radius: 10px;
	background-color: #0489B1;
	color: white;
	width: 80px;
	height: 40px;
}
p {
	padding: 3rem;
	text-align: left;
}
.start_bus {
	display: none;
	background-color: #368D9C;
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
	background-color: #368D9C;
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
	border: 1px solid #00003F;
	border-radius: 10px;
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
#logo {
	margin-top: 50px;
	margin-left: 150px;
	font-size: 20px;
	font-weight: 900;
}
#infodiv {
	margin-left: 190px;
	margin-top: 20px;
	width: 770px;
	background-color: #D0EEFC;
	border: 1px solid gray;
	border-radius: 10px;
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

		<div id="terminal_scroll"
			style="width: 100%; height: 300px; overflow: auto">
			<table id="result_terminal" width="100%" border="0" cellspacing="0"
				cellpadding="0">

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
		<div style="width: 100%; height: 300px; overflow: auto">
			<table width="100%" border="0" cellspacing="0" cellpadding="0"
				id="result_terminal_end">

			</table>
		</div>


	</div>



	<div class="wrapper">

		<div>
			<div class="column">
				<header>
					<h1>노선/운행정보</h1>

					<hr>
				</header>
			</div>

		</div>
		<div>
			<form role="form" action="../booking/booking_bus.do" method="post"
				name="bus_input">
				<input type="hidden" value="" name="arrive_day" id="real_arrivedate">
				<div class="column">
					<table border="1px solid" align="center" id="booking_table"  style="text-align: center; ">
						<tr>
							<td rowspan="8" style="background-color: #A9E2F3; padding: 7px;">
							<img
								src="/Project_BusBooking/assets/logo.png"
								style="width: 50px; height: 50px; ">
								<h2 style="text-align: center; font-weight: bold;">운행정보조회</h2>
								시외버스 및 일부 고속버스 운행정보 조회</td>
							<td style="font-weight: 900; padding: 7px;">출발지</td>
							<td style="padding: 7px;">
								<div class="ui input">
									<input type="text" placeholder="출발지선택" id="start_tr"
										name="start_tr" >
								</div>
							</td>
						</tr>
						<tr>
							<td style="font-weight: 900; padding: 7px;">도착지</td>
							<td style="padding: 7px;"><div class="ui input">
									<input type="text" placeholder="도착지선택" id="end_tr"
										name="end_tr" >
								</div></td>
						</tr>
						<tr>
							<td style="font-weight: 900; padding: 7px;">가는 일시</td>
							<td style="padding: 7px;">

								<div class="ui calendar" id="example1">
									<div class="ui input left icon">
										<i class="calendar icon"></i> 
										<input type="text" 
											placeholder="Date/Time" id="arrivedate">
									</div>
							</td>
						</tr>
						<tr>
							<td style="font-weight: 900; padding: 7px;">출발 시각</td>
							<td style="padding: 7px;">
							<select name="arrive_time" class="ui dropdown"
								id="arrive_time" >
									<option value="">출발시각</option>
									<option value="0000">00:00</option>
									<option value="0100">01:00</option>
									<option value="0200">02:00</option>
									<option value="0300">03:00</option>
									<option value="0400">04:00</option>
									<option value="0500">05:00</option>
									<option value="0600">06:00</option>
									<option value="0700">07:00</option>
									<option value="0800">08:00</option>
									<option value="0900">09:00</option>
									<option value="1000">10:00</option>
									<option value="1100">11:00</option>
									<option value="1200">12:00</option>
									<option value="1300">13:00</option>
									<option value="1400">14:00</option>
									<option value="1500">15:00</option>
									<option value="1600">16:00</option>
									<option value="1700">17:00</option>
									<option value="1800">18:00</option>
									<option value="1900">19:00</option>
									<option value="2000">20:00</option>
									<option value="2100">21:00</option>
									<option value="2200">22:00</option>
									<option value="2300">23:00</option>
							</select></td>
						</tr>

						<tr>
							<input type="hidden" name="is_bus_info"
								value="booking_infomation_list">
							<td colspan="2" align="right" style="padding: 7px;">
							<button type="submit" id="okbutton">조회</button>
							<button  type="reset" id="resetbutton">취소</button></td>
						</tr>

					</table>

				</div>
			</form>
		</div>
				<div id="logo" >
				<img src="../images/line.png" id="imglabel"> &nbsp;예매 변경 주의사항(매수 변경)</div>
			
		<div id="infodiv">
		<img src="../images/businfo.png" width="28" height="28" style="margin: 10px; height: 50;">
		운행정보 메뉴에서는 시외버스 및 일부 고속버스 운행정보 조회를 서비스 하고 있습니다.</div>
		
		<div id="infodiv" style="height: 50;">
		<img src="../images/businfo.png" width="28" height="28" style="margin: 10px;">
		운행정보 조회기간은 해당 노선의 배차정보가 입력된 일자까지 가능합니다.</div>
	
		<div id="infodiv">
		<img src="../images/businfo.png" width="28" height="28" style="margin: 10px; height: 50;">
		배차정보의 입력은 출발지 터미널에서 처리하고 있으며,현재 기준으로 1개월 이후의 배차정보가 입력되고있습니다.</div>
	
		<div id="infodiv" style="height: 50;">
		<img alt="안내" src="../images/businfo.png" width="28" height="28" style="margin: 10px;">
		“조회 가능한 내역이 없습니다.”라고 나오면 출발지 터미널로 문의하시기 바랍니다.</div>
	
	<div style="margin-left: 150px; 	margin-top: 30px; ">
	<a style="font-size: 20px; color: black;" href="https//:www.busterminal.or.kr" >
	운행정보가 없는 노선의 경우 아래 사이트를 참조하세요.<br>
	▶ www.busterminal.or.kr</a></div>
	</div>
		

</body>
</html>