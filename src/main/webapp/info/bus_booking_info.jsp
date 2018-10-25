<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>승차권 예매 안내</title>
<link rel="stylesheet" type="text/css" href="css/base.css">
<style type="text/css">
.form {
	margin-top: 30px;
	margin-bottom: 40px;
	align-content: center;
}
#notice_txt {
	text-align: center;
	font-size: 35px;
	font-weight: bold;
}
#info_image{
	align-content: center;
	border-right: 1px dotted gray;
} 
table{
	width: 800px;
	margin-left: 120px;
}

</style>
</head>
<body>
<div class="wrapper">
	<p id="notice_txt">승차권 예약 안내</p>
	<hr>
	<form id="bus_booking_info">
		<div class="form">
		<p id="center_image"></p>
			<table cellpadding="15">
				<tr>
					<td id="info_image">
						<img alt="안내" src="../images/request.png" width="50px" height="50px">
					</td>
					<td>
						&nbsp;본 홈페이지를 통한 시외버스 승차권 예매는 실시간 온라인 처리가 되므로 승차권 예매시 회선장애나 기타 통신장애로 인해 예매성공여부를 확인하지 못한 경우에는 반드시 예매조회 메뉴를 통해 예매성공여부를 확인하셔야 합니다.
					</td>
				</tr>
				<tr>
					<td id="info_image">
						<img alt="안내" src="../images/request.png" width="50px" height="50px">
					</td>
					<td>
						&nbsp;예매한 승차권 발권 시에는 반드시 예매한 카드를 지참하셔야 하며, 해당 터미널 매표 창구에 예매된 사항이 있다고 말씀하시고 카드를 제시하시면 승차권을 발권받으실 수 있습니다. 
						<br>(발권방법의 차이가 있는 터미널이 존재하며, 해당 터미널에 문의하시면 정확한 발권방법의 확인이 가능합니다.)
					<td>
				</tr>
				<tr>
					<td id="info_image">
						<img alt="안내" src="../images/request.png" width="50px" height="50px">
					</td>
					<td>
						&nbsp;출발시간이 지난 후에는 승차권을 발권받을 수 없습니다. 출발 당일 터미널 혼잡에 대비하여 출발 시간보다 여유있게 터미널에 도착하셔서 발권받으시기 바랍니다.
					</td>
				</tr>
				<tr>
					<td id="info_image">
						<img alt="안내" src="../images/request.png" width="50px" height="50px">
					</td>
					<td>
						&nbsp;일부 체크카드 및 일부 법인카드는 예매가 제한될 수 있습니다.
					<td>
				</tr>
				<tr>
					<td id="info_image">
						<img alt="안내" src="../images/request.png" width="50px" height="50px">
					</td>
					<td>
						&nbsp;예매한 카드를 분실하거나 재발급 받은 경우에는 예매할 때 사용하신 신용카드 번호를 매표창구에 제시하시면 발권이 가능합니다.
					</td>
				</tr>
				<tr>
					<td id="info_image">
						<img alt="안내" src="../images/request.png" width="50px" height="50px">
					</td>
					<td>
						&nbsp;승차권 왕복 예매 시 신용카드 승인은 2건으로 나뉘어 이루어지며, 승차권 발권 및 환불은 해당 승차권 출발지 터미널에서만 가능합니다.
					</td>
				</tr>
				
			</table>
		</div>
	</form>
</div>
</body>
</html>