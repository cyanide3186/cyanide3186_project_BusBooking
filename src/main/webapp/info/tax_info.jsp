<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>현금영수증 안내</title>
<link rel="stylesheet" type="text/css" href="../css/base.css">
<style type="text/css">
#textInfo{
	width: 900px;
	margin-left: 120px;
	border-spacing: 0 15px;
}
#info_tax{
	width: 900px;
	margin-left: 120px;
	margin-top: -55px;
	border: 1px solid gray;
	border-radius: 15px;
	display: table;
}

#info_image{
	padding: 20px 10px;
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
	padding : 0px 10px;
}
#info_no1{
	padding-bottom: 15px;
}
#info_taxUpper{
	vertical-align: middle;
	padding: 10px;
	border-bottom: 1px solid gray;
}
#info_taxBody{
	padding: 20px;
	
}
#taxText{
	text-align: left;
	padding-left: 30px;
}
.taxImage{
	align : center;
	padding: 3px;
	border: 0.3px solid gray;
	display:table-cell; 
}
#next{
	font-size : 50px;
	display:table-cell; 
	vertical-align: middle;
}

#tax_link:link { color: black; text-decoration: none;}
#tax_link:visited { color: black; text-decoration: none;}
#tax_link:hover { color: black; text-decoration: underline;}

출처: http://it77.tistory.com/126 [시원한물냉의 사람사는 이야기]
</style>
</head>
<body>
<div class="wrapper" >
	<p id="notice_txt">현금영수증 안내</p>
	<hr id="headline">
	<form id="taxInfo">
		<table id="textInfo" >
			<!-- 상단 안내 텍스트 -->
			<tr id="info_no1">
				<td id="info_image">
					<img alt="안내" src="../images/businfo.png" width="35px" height="35px">
				</td>
				<td id="info_content">
					&nbsp;시외버스 터미널에서 승차권 발권 시 고객님이 현금영수증 등록을 요청하지 않아도 국세청이 지정한 코드(010-000-1234)로 현금영수증을 자진발급하며, 차후에 고객님이 현금영수증 처리를 원할 경우 현금영수증 홈페이지에서 자진발급분 소비자 등록을 할 수 있습니다.
				</td>
			</tr>
			<tr id="info_no1">
				<td id="info_image">
					<img alt="안내" src="../images/businfo.png" width="35px" height="35px">
				</td>
				<td id="info_content">
					&nbsp;타인의 자진발급 현금영수증을 부당 수취하여 등록하는 경우에는 조세범 처벌법에 의하여 처벌받을 수 있습니다.
				</td>
			</tr>
			<tr id="info_no1">
				<td id="info_image">
					<img alt="안내" src="../images/businfo.png" width="35px" height="35px">
				</td>
				<td id="info_content">
					&nbsp;현금영수증 자진발급분 소비자 등록 방법
				</td>
			</tr>
			</table>
			<!-- 현금영수증 등록절차 -->
			<table id="info_tax">
			<tr>
				<td colspan="3" id="info_taxUpper">
					<img  alt="화살표오우" src="../images/line.png">
					<b >현금영수증 등록방법</b>
				</td>
			</tr>
			<tbody id="info_taxBody" align="center">
				<tr>
					<td colspan="3" id="taxText">
					<br><br>
					<b>1.</b>&nbsp;<a id="tax_link" href="https://www.hometax.go.kr/" target="blank">https://www.hometax.go.kr/</a>&nbsp;접속 (홈페이지 주소를 클릭하면 해당 페이지로 연결됩니다.)
					<br><br><br>
					</td>
				</tr>
				<tr>
					<td colspan="3" id="taxText">
					<b>2.</b>&nbsp;먼저 로그인합니다.<br><br>
				</tr>
				<tr>
					<td>	
						<img class="taxImage" alt="taxinfo01" src="../images/taxInfo01.jpg">
					</td>
					<td>	
						<b id="next">></b>
					</td>
					<td>	
						<img class="taxImage" alt="taxinfo02" src="../images/taxInfo02.jpg">
					</td>
				</tr>
				<br><br><br>
				<tr>
					<td colspan="3" id="taxText">
						<br><br><br>						
						<b>3.</b>&nbsp;[조회/발급] > [현금영수증] > [현금영수증 수정] > [자진발급분 소비자 등록]을 클릭합니다.<br><br>
					</td>
				</tr>
				<tr>
					<td>		
						<img class="taxImage" alt="taxinfo03" src="../images/taxInfo03.jpg">
					</td>
					<td>	
						<b id="next">></b>
					</td>
					<td>	
						<img class="taxImage" alt="taxinfo04" src="../images/taxInfo04.jpg">
					</td>
				</tr>
				<tr>
					<td colspan="3" id="taxText">
						<br><br><br>
						<b>4.</b>&nbsp;등록 전 자료 조회 : 승차권을 보고 필요정보를 입력 후 [조회하기] 버튼을 클릭합니다.<br><br>
					</td>
				</tr>
				<tr>
					<td>		
						<img class="taxImage" alt="taxinfo05" src="../images/taxInfo05.jpg">
					</td>
					<td>	
						<b id="next">></b>
					</td>
					<td>
						<img class="taxImage" alt="taxinfo06" src="../images/taxInfo06.jpg">
					</td>
				<tr>
					<td colspan="3" id="taxText">
						<br><br><br>	
						<b>5.</b>&nbsp;소비자 등록 : 조회된 내역을 확인하고 [등록하기] 버튼을 클릭합니다	
						<br><br>
					</td>
				</tr>
			</tbody>
		</table>
		<hr id="footline">
	</form>
</div>
</body>
</html>