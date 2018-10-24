<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
#voc {
	text-align: center;
	font-size: 30px;
}
.table {
	margin-top: 100px;
	margin-left: 600px;
}
#info {margin-left: 600px;}
</style>
<script type="text/javascript" 
  src="../script/qboardScript.js?v=1"></script>
</head>
<body>
<div id="header">
<br><br><br><br>
<hr>
</div>


<div id="section">
<p id="voc" >고객의 소리</p>

<form action="../qboard/qboardWrite.do" name="qboardWriteForm" method="post">
<table class="table" border="1" >
	<tr id="notice">
		<td width="250">이미지</td>
		<td width="630">
		<ui>
			<li>시외버스 예매 홈페이지는 언제나 고객님의 편리한 이용을 위해 최선을 다하고 있습니다.</li>
			<li>시외버스를 이용하시는 고객님들께서는, 시외버스 이용에 대한 서비스 개선이나 좋은 아이디어 등이 있으시다면, 아래의 "고객의 소리"에 작성하실 수 있습니다.</li>
			<li>고객님의 의견을 적극 수렴하여 사용자 중심의 서비스를 제공할 수 있도록 언제나 노력하겠습니다.</li>
		</ui>
		</td>
	</tr>
</table>
	<p id="info" style="color:red;">[작성 시 유의사항]</p>
	<p id="info">고객의 소리는 보안 정책 상 개인정보를 수집하고 있지 않습니다.</p>

<table class="table" border="1">
	<tr>
		<td width="200" height="20" align="center">제목</td>
		<td><input type="text" size="79" name="subject"></textarea></td>
	</tr>
	<tr>
		<td width="300" height="100" align="center">내용</td>
		<td><textarea type="text" name="content" rows="10" cols="80"></textarea></td>
	</tr>
	<tr>
		<td colspan="2" align="right">
		<input type="button" value="확인" onclick="checkqboardWrite()">
		</td>
	</tr>
</table>
</form>
</div>
<hr>
<div id="footer">
</div>

</body>
</html>