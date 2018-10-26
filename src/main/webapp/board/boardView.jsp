<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/base.css">
<style type="text/css">
.table {
	text-align: center;
	border-radius: 5px;
	border: 1px solid #ccc;
	margin-left: 120px;
}

.form {
	margin-top: 30px;
	margin-bottom: 40px;
}

#notice_txt {
	text-align: center;
	font-size: 35px;
	font-weight: bold;
}

#new {
	margin-left: 100px;
}

#p {
	font-size: 15px;
	font-weight: 800;
}

#text {
	margin-left: 170px;
	font-weight: 800;
}

.subject {
	border-bottom: 1px solid #ccc;
	border-right: 1px solid #ccc;
}

.line {
	border-bottom: 1px solid #ccc;
	border-right: 1px solid #ccc;
}

#font {
	text-align: left;
	font-size: 15px;
	font-weight: 800;
}
</style>

</head>
<body>
	<div class="wrapper">
		<p id="notice_txt">공지사항</p>
		<hr>
		<div class="form">
			<p id="p">
				<img src="../images/new.png" width="70" id="new">&nbsp;&nbsp;&nbsp;[새
				소식 알림]
			</p>
			<p id="text">&nbsp;&nbsp;&nbsp;승차권 예매 및 터미널 관련 새 소식을 전해드립니다.</p>
		</div>
		<table class="table" cellpadding="5">
			<tr>
				<td width="120" height="40" class="subject"
					style="font-weight: 800;">제목</td>
				<td width="720" colspan="3" style="border-bottom: 1px solid #ccc;"
					id="font"><font>${boardVO.subject}</font></td>
			</tr>
			<tr height="40">
				<td width="220" class="line" style="font-weight: 800;">NO.</td>
				<td width="220" class="line">${boardVO.board_no}</td>
				<td width="220" class="line" style="font-weight: 800;">등록일</td>
				<td width="220" style="border-bottom: 1px solid #ccc;">
					${boardVO.writeday}</td>
			</tr>
			<tr>
				<td colspan="4" width="850" height="400" id="content">${boardVO.content}</td>
			</tr>
			<td colspan="4" align="right"><input id="button" type="button"
				value="목록" onclick="location.href='../board/boardList.do?pg=${pg}'"></td>
		</table>
		<hr>
	</div>

</body>
</html>