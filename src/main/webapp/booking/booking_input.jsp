<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>승차권 예매</title>
<link rel="stylesheet" type="text/css" href="../css/base.css">
<link rel="stylesheet" type="text/css" href="../semantic/semantic.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"
	integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
	crossorigin="anonymous"></script>
<script src="../semantic/semantic.js"></script>
<script type="text/javascript">
	$(function() {

		$('#adult').dropdown({
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
		$('#start_tr').dropdown({
			direction : 'down',
			duration : 700,
			onChange : function(value, text, $choice) {
				alert(value);
			}
		});
	});
</script>
<style type="text/css">
p {
	padding: 3rem;
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
						<li>1.기초 정보 입력 2.배차 조회 3.매수 및 좌석 선택 4.카드 정보 입력</li>
					</ul>
				</header>
			</div>

		</div>
		<div>
			<form action="../booking/booking_bus.do" method="post">
				<div class="start_bus">
					<h3>터미널 선택</h3>
					<table>
						<tr>
							<td colspan="2"><select name="start_tr" class="ui dropdown"
								id="start_tr">
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
							</tr>>
						</table>
					</div>


				</div>
				<div class=""></div>
				<div class="column">
					<table border="1px solid">
						<tr>
							<td>출발지</td>
							<td><input type="button" value="선택"></td>
						</tr>
						<tr>
							<td>도착지</td>
							<td><input type="button" value="선택"></td>
						</tr>
						<tr>
							<td>가는 일시</td>
							<td><input type="button" value="선택"></td>
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