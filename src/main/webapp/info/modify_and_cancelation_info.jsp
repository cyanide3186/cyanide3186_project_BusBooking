<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/base.css">
<style type="text/css">
#request {margin-left: 70px;}
.info {
	border: 1px solid #ccc;
	border-radius: 10px;
	margin-left: 150px;
	margin-top: 40px;
	width: 200;
	height: 100;
}
#img {
	border-right : 1px solid black;	
	border-right-style: dashed;
	border-right-color: #a0a0a0;
}
#text {
	font-weight: 800;
	font-size: 15px;
}
#step {
	margin-left: 50px;
	width: 100px;
	height: 40px;
	text-align: center;
	border-radius: 10px;
}
#steptable {
	margin-left: 250px;
	margin-top: 30px;
	margin-bottom: 20px;

}
#content {
	border-bottom: 1px solid;
	border-color: #a0a0a0;
 	padding-top: 20px;
	padding-bottom: 20px; 
}
#refer {
	font-size: 13px; 
	text-align: left;
	margin-left: 150px;
	font-weight: 800;
}
#check {
	width: 25;
	height: 25;
	margin-left: 20px;
	margin-right: 10px;

}
#logo {
	margin-left: 150px;}
#imglabel {
	width: 25px;
	height: 25px;
}
#label {
	font-size: 18px;
	font-weight: 900;
}
#undertable {
	text-align: center;
	padding: 5px;
	margin-left: 150px; 
	margin-bottom: 30px;
}
#uppertable{
	padding: 5px;
	margin-left: 150px;
	border-bottom: 1px solid black;
	border-top: 1px solid black;
	text-align: center;
	margin-top: 20px;
}
#info_image{
	background-color: #FFD2D2;
	align-content: center;
	border-bottom : 1px solid gray;
	border-top : 1px solid gray;
	border-left: 1px solid gray;
	border-right: 1px dotted gray;
	border-radius: 15px 0px 0px 15px;
} 
#info_content{
	background-color: #FFD2D2;
	border-bottom : 1px solid gray;
	border-top : 1px solid gray;
	border-left: 1px solid gray;
	border-right: 1px solid gray;
	border-radius: 10px 10px 10px 10px;
	height: 20px;
}
#infomation {
	width: 800px;
	margin-left: 180px;
	border-spacing: 0 15px;
}
#content_line {
	border-right: 1px solid #ccc; 
	border-bottom: 1px solid #ccc; 
	text-align: left; 
	padding: 8px;
}
</style> 
</head>
<body>
<div id=header>
	<jsp:include page="../template/header.jsp" />
</div>

<div class="wrapper">
<p id="notice_txt" >예매 변경 및 취소 안내</p>
<hr id="headline">
	<form id="form">
	
	<table class="info" >
		<tr id="notice">
		<td width="200" id="img"><img src="../images/cancel.png" id="request" width="60" height="60"></td>
		<td width="700" id="text">
		예매 변경 및 취소가 필요한 경우에는 "시외버스 예매 > 예매조회/취소/변경" 에서 처리가 가능합니다.</td>
		</tr>
	</table>

	<table id="steptable" cellspacing="20px">
	<tr>
	<td id="step" style="background-color: #FFB6C1;">1단계</td>
	<td id="content" width="500" height="30">"시외버스 예매 > 예매조회/취소/변경" 페이지에서 예매한 승차권 조회를 합니다.</td>
	</tr>
	<tr>
	<td id="step" style="background-color: #FF7A85;">2단계</td>
	<td  id="content" width="500" height="30">예매내역을 확인한 후, "상세" 버튼을 클릭하여 예매 상세페이지로 이동합니다.</td>
	</tr>
	<tr>
	<td id="step" style="background-color: #FF5675;" >3단계</td>
	<td id="content" width="500" height="30">예매내역 상세 페이지에서 예매한 승차권을 확인한 후에 하단의 "예매취소" 혹은 "변경(매수변경 / 시간변경)"을 클릭하여, 예매변경이나 취소를 할 수 있습니다.</td>
	</tr>
	</table>
	
	<br>
	<hr style="color: #ccc; border-style: dotted">
	<br>
	<p id="refer" style="color: red; margin-top: 20px;">※ 예매 변경 및 취소를 하게 될 경우 취소 수수료가 발생하거나 기존 할인 금액이 변경될 수 있습니다.</p>
	<p id="refer" style="margin-left: 800px;">상세한 규정은 아래의 내용에서 확인할 수 있습니다.</p>
	
	<br>
	<div id="logo"><p id="label"><img src="../images/line.png" id="imglabel">
	&nbsp;예매 변경 주의 사항(매수 변경)</p></div>
	<br>
	
			<table cellpadding="10" id="infomation">
			<tr>
				<td id="info_content">
				<img src="../images/check2.png" width="20px" height="20px">
				"변경 > 매수변경 "버튼을 선택하여 예매한 승차권을 변경할 수 있습니다. 단, 매수 변경은 감소만 가능합니다.
				</td>
			</tr>
			<tr>
				<td id="info_content">
				<img src="../images/check2.png" width="20px" height="20px">
				매수 감소는 편도예매에서만 가능하며, 왕복예매에서는 불가능합니다.<br>&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;왕복예매의 매수 감소 시에는 예매를 전체 취소 후, 다시 예매를 하셔야 합니다.
				</td>
			</tr>
			<tr>
				<td id="info_content">
				<img src="../images/check2.png" width="20px" height="20px">
				매수 변경을 하게 되면, “기존 승차권”에 대한 전체 취소가 발생되며, “변경 승차권”은 재결제를 합니다.<br>&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;( ex, 5매 예매를 4매로 변경할 경우 : 5매 전체 예매 취소 후,
				변경 된 4매에 대해서 다시 결제가 진행됩니다. )
				</td>
			</tr>
			<tr>
				<td id="info_content">
				<img src="../images/check2.png" width="20px" height="20px">
				매수 감소 시에는 예매한 승차권의 일자, 시간, 좌석 등의 변경이 불가합니다. 
				</td>
			</tr>
			<tr>
				<td id="info_content">
				<img src="../images/check2.png" width="20px" height="20px">
				예매 시간의 변경이 필요한 경우에는 시간 변경 버튼을 클릭하여 변경할 수 있습니다.
				</td>
			</tr>
			<tr>
				<td id="info_content">
				<img src="../images/check2.png" width="20px" height="20px">
				예매한 승차권의 좌석 변경이 필요한 경우에는 예매한 승차권 전체를 취소한 후 다시 예매하실 수 있습니다.
				</td>
			</tr>
			<tr>
				<td id="info_content">
				<img src="../images/check2.png" width="20px" height="20px">
				"변경 > 매수변경 "버튼을 선택하여 예매한 승차권을 변경할 수 있습니다. 단, 매수 변경은 감소만 가능합니다.
				</td>
			</tr>
			<tr>
				<td id="info_content">
				<img src="../images/check2.png" width="20px" height="20px">
				매수 감소 시에는 기존에 적용되었던 할인 혜택이 변경될 수 있습니다.<br>&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;사전 할인 혜택을 받은 경우에는 기존 할인 혜택이 그대로 유지됩니다.<br>&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;단체예매 할인이나 뒷좌석 할인의 경우에는 매수 감소로 인해서 할인 조건이 맞지 않는 경우,<br>&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;할인혜택이 적용되지 않을 수 있습니다.
				</td>
			</tr>
		</table>
	
	
	<br>
	<div id="logo"><p id="label"><img src="../images/line.png" id="imglabel">
	&nbsp;예매 변경 주의 사항(시간 변경)</p></div>
	<br>
	<table cellpadding="10"  id="infomation">
		<tr>
			<td id="info_content">
			<img src="../images/check2.png" width="20px" height="20px">
			"변경 > 시간 변경" 버튼을 선택하여 예매한 승차권을 변경할 수 있습니다. 
			</td>
		</tr>
		<tr>
			<td id="info_content">
			<img src="../images/check2.png" width="20px" height="20px">
			단, 시간 변경의 경우, 기존에 예매한 사항은 모두 취소가 되며, 다시 한번 카드 결제가 이루어집니다.
			</td>
		</tr>
		<tr>
			<td id="info_content">
			<img src="../images/check2.png" width="20px" height="20px">
			시간 변경은 편도예매와 왕복예매 모두 가능합니다.
			</td>
		</tr>
		<tr>
			<td id="info_content">
			<img src="../images/check2.png" width="20px" height="20px">
			시간 변경 시에는 매수 변경, 좌석 변경도 가능합니다.
			</td>
		</tr>
		<tr>
			<td id="info_content">
			<img src="../images/check2.png" width="20px" height="20px">
			“기존 승차권”에 대한 결제 취소는 신용카드와 체크카드에 따라서 3~5일 가량의 처리 시간이 소요됩니다.
			</td>
		</tr>
		<tr>
			<td id="info_content">
			<img src="../images/check2.png" width="20px" height="20px">
			시간 변경 시에는 기존에 애매한 사항은 모두 취소가 됨으로 기존에 적용되었던 할인 혜택은 모두 삭제되며,<br>&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;변경 시에 선택한 시간, 매수 수량, 좌석 선택에 따라 할인 혜택이 적용됩니다.
			</td>
		</tr>
		<tr>
			<td id="info_content">
			<img src="../images/check2.png" width="20px" height="20px">
			"변경 > 매수변경 "버튼을 선택하여 예매한 승차권을 변경할 수 있습니다. 단, 매수 변경은 감소만 가능합니다.
			</td>
		</tr>
	</table>
			
			

	<br>
	<div id="logo"><p id="label"><img src="../images/line.png" id="imglabel">
	&nbsp;예매 취소 주의 사항</p></div>
	<br>
	
	<table cellpadding="10" id="infomation">
		<tr>
			<td id="info_content">
			<img src="../images/check2.png" width="20px" height="20px">
			"예매취소" 버튼을 클릭하면, 예매한 승차권을 취소할 수 있습니다.<br>&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp; 다만, 취소한 경우, 출발일자에 따라 취소 수수료가 부과될 수 있습니다.
			</td>
		</tr>
		<tr>
			<td id="info_content">
			<img src="../images/check2.png" width="20px" height="20px">
			예매된 상태에서 발권 또는 취소를 하지 않고 출발시간이 지난 경우<br>&nbsp;&nbsp;&nbsp;&nbsp;
		 	&nbsp;&nbsp;&nbsp;&nbsp;부도 취소 수수료(차량 출발후 6시간 이전 승차권요금의 30%, 차량 출발후 6시간 이후 승차권요금의 100%)가 청구됩니다.
			</td>
		</tr>
		<tr>
			<td id="info_content">
			<img src="../images/check2.png" width="20px" height="20px">
			승차권 예매 취소 시, 결제 취소는 신용카드와 체크카드에 따라서 3~5일 가량의 처리 시간이 소요되며,<br>&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;이후 해당 카드사에 문의하시면 취소 여부를 확인할 수 있습니다.
			</td>
		</tr>
	</table>


	<br>
	<div id="logo"><p id="label"><img src="../images/line.png"id="imglabel">
	&nbsp;공항버스 한정면허(서울시) 취소수수료 안내</p></div>
	<br>
	<p style="margin-left: 150px; font-weight: 900; color: #323232;">* 승차권 발권 전 취소 또는 승차권 발권 후 환불</p>
	<p style="margin-left: 800px;">(취소 수수료는 100만원 미만은 절사)</p>

	<table id="uppertable" >
	<tr style="font-weight: 1000; ">
		<td width="220">구분</td>
		<td width="510">취소 시기</td>
		<td width="120">수수료</td>
	</tr>
	</table>
	<table id="undertable" style="border-bottom: 1px solid black;">
	<tr>
		<td rowspan="6" style="width: 220px; border-right: 1px solid #ccc;">취소 수수료</td>
		<td id="content_line">
		<ui><li>차량 출발일 2일(48시간) 전까지 취소 시</li>
			<li>(당일 포함) 구매(예매)시점 기준 1시간 이내이면서 출발 1시간 이전까지 취소 시</li></ui>
		</td>
		<td style="border-bottom: 1px solid #ccc;">수수료 없음</td>
	</tr>
	<tr>
		<td id="content_line">
		<ui><li>차량 출발일 2일(48시간) 이내이며 구매시점 기준 1시간 경과 후<br>
		 차량 출발 1시간 이전까지 취소 시</li></ui></td>
		<td style="border-bottom: 1px solid #ccc;">승차권 요금의 10%</td>
	</tr>
	<tr>
		<td id="content_line">
		<ui><li>차량 출발 1시간 이내부터 차량 출발 15분 이전까지 취소 시</li></ui></td>
		<td style="border-bottom: 1px solid #ccc;">승차권 요금의 20%</td>
	</tr>
	<tr>
		<td id="content_line">
		<ui><li>차량 출발 15분 이내부터 차량 출발 전까지 취소 시</li></ui></td>
		<td style="border-bottom: 1px solid #ccc;">승차권 요금의 30%</td>
	</tr>
	<tr style="color: red;">
		<td id="content_line">
		<ui ><li>차량 출발 후 3시간 이전 취소 시</li></ui></td>
		<td style="border-bottom: 1px solid #ccc;">승차권 요금의 50%</td>
	</tr>
	<tr style="color: red;">
		<td style=" border-right: 1px solid #ccc; text-align: left; padding: 8px;">
		<ui><li>차량 출발 후 3시간 이후 (취소 불가)</li></ui>
			<ui><li>차량 출발 후 3시간 이후에는 예매한 승차권을 자동취소(부도처리)</li></ui></td>
		<td>승차권 요금의 100%</td>
	</tr>
	</table>
	<p>

	<div style="margin-left: 150px;">※ 대상 운수사 : 공항리무진, 서울공항리무진, KAL리무진, 한국도심공항 (4개사)<br>
	※ 구매시점이란 승객이 승차권을 결제한 시점을 의미합니다.</div>
	<br><br>
	
	<div id="logo"><p id="label"><img src="../images/line.png" id="imglabel">시외버스 취소 수수료 안내</p></div>
	<p style="margin-left: 800px;">(최수 수수료는 100만원 미만은 절사)</p>
	
	<table id="uppertable" >
		<tr style=" font-weight: 1000; width: 40px;">
		<td width="220">구분</td>
		<td width="510">취소 시기</td>
		<td width="120">수수료</td>
		</tr>
	</table>
	<table id="undertable" style="border-bottom: 1px solid black;">
		<tr>
		<td rowspan="5" style="width: 220px; border-right: 1px solid #ccc;">승차권(모바일승차권 포함)<br>
		발권 후 예매 후</td>
		<td id="content_line" style="width: 510px;"><ui><li>지정차 출발 2일 전까지</li></ui>
			<ui><li>승차권 발권 시점(예매 후 발권은 제외) 기준 1시간 이내 <br>
			또는 예매시점 기준 1시간 이내. 단, 지정차 출발 전에 한함</li></ui></td>
		<td style=" width:120px; border-bottom: 1px solid #ccc;">없음</td>
		</tr>
		<tr>
		<td id="content_line">
		<ui><li>지정차 출발 1일전 ~ 1시간 이전까지</li></ui></td>
		<td  style="border-bottom: 1px solid #ccc;">5%</td>
		</tr>
		<tr>
		<td id="content_line">
		<ui><li>지정차 출발 1시간 이내 ~ 출발 직전까지</li></ui></td>
		<td style=" border-bottom: 1px solid #ccc;">10%</td>
		</tr>
		<tr style="color: red;">
		<td id="content_line"><ui><li>지정차 출발 후 6시간 이전까지</li></ui></td>
		<td style=" border-bottom: 1px solid #ccc;">30%</td>
		</tr>
		<tr style="color: red;">
		<td style="text-align: left; border-right: 1px solid #ccc; padding: 8px;"><ui><li>지정차 출발 후 6시간 이후<br>
		* 예매 및 모바일 승차권의 경우는 출발 6시간 이후 자동취소(부도처리)</li></ui></td>
		<td >100%</td>
		</tr>
	</table>

	
	<hr id="footline">
</form>
</div>

<!-- 짤림방지용 텍스트 -->

</html>
</body>
