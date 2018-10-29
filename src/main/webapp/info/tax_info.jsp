<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>현금영수증 안내</title>
<link rel="stylesheet" type="text/css" href="../css/base.css">
<style type="text/css">
table{
	width: 800px;
	margin-left: 220px;
	border-spacing: 0 15px;
}
td{
	background-color: #D0EEFC;
}

#info_image{
	align-content: center;
	border-bottom : 1px solid gray;
	border-top : 1px solid gray;
	border-left: 1px solid gray;
	border-right: 1px dotted gray;
	border-radius: 15px 0px 0px 15px;
} 
#info_content{
	border-bottom : 1px solid gray;
	border-top : 1px solid gray;
	border-right: 1px solid gray;
	border-radius: 0px 15px 15px 0px;
}

</style>
</head>
<body>
<div class="wrapper">
	<p id="notice_txt">현금영수증 안내</p>
	<hr id="headline">
	<form id="taxInfo">
		<table cellpadding="15" id="textInfo">
			<tr>
				<td id="info_image">
					<img alt="안내" src="../images/check.png" width="35px" height="35px">
				</td>
				<td id="info_content">
					&nbsp;시외버스 터미널에서 승차권 발권 시 고객님이 현금영수증 등록을 요청하지 않아도 국세청이 지정한 코드(010-000-1234)로 현금영수증을 자진발급하며, 차후에 고객님이 현금영수증 처리를 원할 경우 현금영수증 홈페이지에서 자진발급분 소비자 등록을 할 수 있습니다.
				</td>
			</tr>
			<tr>
				<td id="info_image">
					<img alt="안내" src="../images/check.png" width="35px" height="35px">
				</td>
				<td id="info_content">
					&nbsp;타인의 자진발급 현금영수증을 부당 수취하여 등록하는 경우에는 조세범 처벌법에 의하여 처벌받을 수 있습니다.
				</td>
			</tr>
			<tr>
				<td id="info_image">
					<img alt="안내" src="../images/check.png" width="35px" height="35px">
				</td>
				<td id="info_content">
					&nbsp;현금영수증 자진발급분 소비자 등록 방법
				</td>
			</tr>
		</table>
		<div class="how_to_tax">
		
		</div>	
	</form>
</div>
</body>
</html>