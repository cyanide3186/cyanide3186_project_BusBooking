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
	$(document)
			.ready(
					function() {
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
						$('button').on("click", function(e) {
							e.preventDefault();
							var date = null;
							var arrivedate = $("#arrivedate").val();
							//alert(arrivedate);
							if (arrivedate.indexOf(" ", 1) == 1) {
								var day = "0" + arrivedate.substring(0, 1);
								var month = arrivedate.substring(2, 4);
								var year = arrivedate.substring(6, 11);

								var date = year + "-" + month + "-" + day;
								//alert(date);
							} else {
								var day = arrivedate.substring(0, 2);
								var month = arrivedate.substring(3, 5);
								var year = arrivedate.substring(7, 12);
								var date = year + month + day;
								//alert(date);
							}
							$("#real_arrivedate").attr('value', date);
							var value = $("#arrivedate").attr("value");
							//alert(value+"값이 저장되었습니다.");
							formObj.submit();
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
				alert(startterminal + "을 선택하셨습니다.");
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
		alert(endterminal + "을 선택하셨습니다.");
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
								alert(local);
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
												alert("success");
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

		$('#arrive_time').dropdown({
			direction : 'down',
			duration : 700,
			onChange : function(value, text, $choice) {
				alert("출발시간은" + value + "입니다");
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
}
</style>
</head>
<body>




	<div class="wrapper">

		<div>
			<div class="column">
				<header>
					<h1>예매 조회/변경/취소</h1>

					<hr>
				</header>
			</div>

		</div>





		<div>
			<form role="form" action="../booking/booking_bus.do" method="post"
				name="bus_input">
				<input type="hidden" value="" name="arrive_day" id="real_arrivedate">
				<div class="column">
					<div class="ui top attached tabular menu">
						<div class="active item">휴대폰번호로 찾기</div>

					</div>
					<table class="ui single line table">
						<thead>
							<tr>
								<th>휴대폰 번호 입력</th>
								
							</tr>
						</thead>
						<tbody>
							
							<tr>
								<td><input type="text" name="hp"></td>
								
							</tr>
								<tr>
							<td colspan="2" align="right"><button
									class="ui teal basic button" type="submit" id="submit">조회</button>
								<button class="ui teal basic button" type="reset">취소</button></td>
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