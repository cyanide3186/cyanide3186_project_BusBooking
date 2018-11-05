<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/base.css">
<style type="text/css">
.table {
	border-bottom: 1px solid black;
	border-top: 1px solid black;
	margin-left: 120px;
	margin-bottom: 50px;
}
.form {
	margin-top: 30px;
	margin-bottom: 40px;
}
#new { margin-left: 100px;}
#p {
	font-size: 15px;
	font-weight:800;
}
#text { margin-left: 170px; font-weight:800;}
.subject {
	font-weight: 800;
	border-bottom: 1px solid #ccc;
	border-right: 1px solid #ccc;
	text-align: center;
}
.line {
	text-align: center;
	border-bottom: 1px solid #ccc;
	border-right: 1px solid #ccc;
}
.line2 {
	border-bottom: 1px solid #ccc;
	text-align: center;
}
#font {
	text-align: center;
	font-size: 15px;
	font-weight: 800;
}
#content {
	padding-top: 20px;
	padding-left: 20px;
}
#button {
	width: 90px;
	height: 40px;
	background-color: #282828;
	color: white;
	border-radius: 10px;
}
</style>

</head>
<body>
<div class="wrapper">
<p id="notice_txt" >공지사항</p>
<hr>
<div class="form">
<p id="p" ><img src="../images/new.png" width="70" id="new">[새 소식 알림]</p>
<p id="text" >승차권 예매 및 터미널 관련 새 소식을 전해드립니다.</p>
</div>
<table class="table" cellpadding="5" >
   <tr>
      <td width="120" height="40" class="subject" >제목</td>
      <td width="720" colspan="3" style="border-bottom: 1px solid #ccc;" id="font" >
      <font >${boardVO.subject}</font>
      </td>
   </tr>
   <tr height="40" >
     <td width="220" class="line" style="font-weight: 800;">NO.</td>
    <td width="220" class="line"> ${boardVO.board_no}</td>
     <td width="220" class="line" style="font-weight: 800;">등록일 </td>
     <td width="220" class="line2"> ${boardVO.writeday}</td>
   </tr>
   <tr>
   	 <td colspan="4" width="850" height="400" id="content" valign="top">${boardVO.content}</td>
   </tr>
	<td colspan="4" align="right"><input id="button" type="button" value="목록" 
onclick="location.href='../board/boardList.do?pg=${pg}'"></td>
</table>
<hr>
</div>

</body>
</html>