<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/base.css">

<style type="text/css">
.form {
	margin-top: 90px;
	margin-bottom: 90px;
}
#voc {
	text-align: center;
	font-size: 35px;
	font-weight: bold;
}
.table {
	border: 1px solid;
	margin-top: 10px;
	border-color: #a0a0a0;
 	border-radius: 10px;
}
#request {margin-left: 60px;}
#img {
	border-right : 1px solid black;	
	border-right-style: dashed;
	border-right-color: #a0a0a0;
}
#notice_font li{
	font-size: 14px;
	font-weight: 500;
	margin-left: 20px;
	margin-top: 5px;
	margin-bottom: 5px;
}
#text {
	border-bottom: 1px solid;
	border-radius: 3px;
	border-color: #a0a0a0;
}
#qboardWriteForm {margin-left: 140px;}

.wrap2 {
	border-top: 1px solid black;
	border-bottom: 1px solid black;
}
#line1 {
	border-right: 1px solid;
	border-bottom: 1px solid;
	border-color: #a0a0a0;
}
#line2 {
	border-bottom: 1px solid;
	border-color: #a0a0a0;
}

</style>
<script type="text/javascript" 
  src="../script/qboardScript.js?v=1"></script>
</head>
<body>
	<div class="wrapper">

		<p id="voc">고객의 소리</p>
			<hr>
			<form action="../qboard/qboardWrite.do" name="qboardWriteForm"
				method="post" id="qboardWriteForm">
			<div class="form">
				<table class="table" >
					<tr id="notice">
						<td width="250" id="img"><img src="../images/request.png" id="request"></td>
						<td width="630"><ui id="notice_font">
							<li><img src="../images/check.png">&nbsp;&nbsp;시외버스 예매 홈페이지는 언제나 고객님의 편리한 이용을 위해 최선을 다하고 있습니다.</li>
							<br>
							<li><img src="../images/check.png">&nbsp;&nbsp;시외버스를 이용하시는 고객님들께서는, 시외버스 이용에 대한 서비스 개선이나<br>
							좋은 아이디어 등이 있으시다면,  아래의 "고객의 소리" 에 작성하실 수 있습니다.</li>
							<br>
							<li><img src="../images/check.png">&nbsp;&nbsp;고객님의 의견을 적극 수렴하여 사용자 중심의 서비스를 제공할 수 있도록 노력하겠습니다.</li>
							</ui></td>
					</tr>
				</table>
				<br>
				<p style="color: red;" >[작성 시 유의사항]</p>
				<p >고객의 소리는 보안 정책 상 개인정보(주민번호, 이메일 등)를 수집하고 있지 않습니다.</p>
				<br>
				<table class="wrap2">
					<tr>
						<td width="200" height="45" align="center" id="line1">제목</td>
						<td id="line2"><input type="text" size="78" name="subject" id="text"></td>
					</tr>
					<tr>
						<td width="300" height="100" align="center" id="line1" >내용</td>
						<td id="line2"><textarea name="content" rows="10" cols="80"></textarea></td>
					</tr>
					<tr>
						<td colspan="2" align="right" height="40"><input type="button" value="확인"
							onclick="checkqboardWrite()"></td>
					</tr>
				</table>
						</div>
			</form>
		<hr>
		</div>

</body>
</html>