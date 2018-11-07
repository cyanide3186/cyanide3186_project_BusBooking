<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/base.css">
<style type="text/css">
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
#info { margin-left: 150px;}
table{
	width: 900px;
	margin-left: 200px;
	border-spacing: 0 15px;
}
td{
	background-color: #D0EEFC;
}
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
</style>
</head>
<body>
<div class="wrapper" >
	<p id="notice_txt">이메일 무단수집 거부</p>
	<hr id="headline">
	<form>
		<div class="form">
		<table cellpadding="15" id="info">
				<tr>
					<td id="info_image">
						<img alt="안내" src="../images/logo5.png" width="50px" height="50px" style="margin-left: 20px;">
					</td>
					<td id="info_content">
						<p style="font-size: 18px; font-weight: 800;">“본 웹사이트는 이메일 주소 수집을 거부합니다.”</p>
						<p>본 사이트에 게시되어 있는 이메일 주소가 ‘이메일 수집 프로그램’이나 <br>
						그 밖의 기술적 장치를 사용하여 무단으로 수집되는 것을 거부하며,<br>
						위반 시 [정보통신망 이용촉진 및 정보보호 등에 관한 법률]에 의한 형사처벌 대상임을 알려드립니다.
					</td>
				</tr>
		</table>
		</div>
	</form>
	<hr id="footline">
</div>
</body>
</html>