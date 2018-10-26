<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>승차권 예매</title>

<link rel="stylesheet" type="text/css" href="../css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="../css/daterangepicker.css" />
<link rel="stylesheet" type="text/css" href="../css/base.css">
<link rel="stylesheet" type="text/css" href="../semantic/semantic.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"
	integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
	crossorigin="anonymous"></script>
<script src="../semantic/semantic.js"></script>
<script type="text/javascript" src="../js/moment.js"></script>
<script type="text/javascript" src="../js/daterangepicker.js"></script>

<script type="text/javascript">
	$(function() {
		var dt = new Date();
		var month = dt.getMonth() + 1;
		var day = dt.getDate();
		var year = dt.getFullYear();
		var today = year + '-' + month + '-' + day;
		$('input[name="arrive_day"]').daterangepicker({
			format : 'YYYY-MM-DD',
			minDate : today,
			startDate : today,
			singleDatePicker : true
		}, function(start, end, label) {
			alert('선택한 출발 날짜: ' + start.format('YYYY-MM-DD'));
		});

		$('#start_tr').click(function() {
			//출발지 버튼 클릭시 일어나는 기능
			$(".start_bus").fadeIn(300);

			$("#glayLayer").fadeIn(300);
			return false;
		});

		$('#end_tr').click(function() {
			//출발지 버튼 클릭시 일어나는 기능
			$(".end_bus").fadeIn(300);
			$("#glayLayer").fadeIn(300);
			return false;
		});
		$('#start').dropdown({
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

		$('#end_tr').click(function() {
			//도착지 버튼 클릭시 일어나는 기능
			$(".end_bus").fadeIn(300);
			$("#glayLayer").fadeIn(300);
			return false;
		});
		$('#end').dropdown({
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

	});
</script>
<style type="text/css">
p {
	padding: 3rem;
	text-align: left;
}

.start_bus {
	display: none;
	background-color: orange;
	width: 1000x;
	height: 300px;
	position: fixed;
	top: 20%;
	left: 45%;
	z-index: 2;
	border-radius: 20px;
	border: 5px solid #999;
	background-color: orange;
}

.end_bus {
	display: none;
	background-color: orange;
	width: 800x;
	height: 300px;
	position: fixed;
	top: 20%;
	left: 45%;
	z-index: 2;
	border-radius: 20px;
	border: 5px solid #999;
	background-color: orange;
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
</style>
</head>
<body>
	<div id="glayLayer"></div>

	<div class="start_bus">
		<h3>출발 터미널 선택</h3>
		<table>
			<tr>
				<td colspan="2"><select name="start" class="ui dropdown"
					id="start">
						<option value="">주요 터미널</option>
						<option value="동서울">동서울</option>
						<option value="인천공항1터미널">인천공항1터미널</option>
						<option value="성남">성남</option>
						<option value="수원">수원</option>
				</select></td>

			</tr>
			<tr>
				<td>터미널 검색</td>
				<td><input type="text"></td>
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

	<div class="end_bus">
		<h3>도착 터미널 선택</h3>
		<table>
			<tr>
				<td colspan="2"><select name="end" class="ui dropdown" id="end">
						<option value="">주요 터미널</option>
						<option value="동서울">동서울</option>
						<option value="인천공항1터미널">인천공항1터미널</option>
						<option value="성남">성남</option>
						<option value="수원">수원</option>
				</select></td>

			</tr>
			<tr>
				<td>터미널 검색</td>
				<td><input type="text"></td>
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


	<div class="wrapper">

		<div>
			<div class="column">
				<header>
					<h1>승차권 예매</h1>
					<ul class="level">
						<li>1.기초 정보 입력 2.배차 조회 3.매수 및 좌석 선택 4.카드 정보 입력</li>
					</ul>
				</header>
			</div>

		</div>
		<div>





			<form action="../booking/booking_bus.do" method="post"
				name="bus_input">
				<div class="column">
					<table border="1px solid" align="center">
						<tr>
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
											placeholder="Date/Time" name="arrive_day">
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td>출발 시각</td>
							<td><select name="arrive_time" class="ui dropdown"
								id="arrive_time">
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
							</select>
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
							</select>
						</tr>
						<tr>
							<td colspan="2"><input type="submit" value="조회"></td>
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