<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/base.css">
<style type="text/css">
.form {
	margin-top: 30px;
	margin-bottom: 40px;
}
#notice_txt {
	text-align: center;
	font-size: 35px;
	font-weight: bold;
}
.table {margin-left: 100px; margin-bottom: 100px;}
.tableline {
	margin-left: 100px;
	border-bottom: 1px solid black;
	border-top: 1px solid black;
	text-align: center;
	margin-top: 20px;
}
#new { margin-left: 100px;}
#p {
	font-size: 15px;
	font-weight:800;
}
#text { margin-left: 170px; font-weight:800;}
.line {border-bottom: 1px solid #ccc;}
.linecenter {
	border-bottom: 1px solid #ccc;
	border-left: 1px solid #ccc;
	border-right: 1px solid #ccc;
}
.wrap2 {
	border-top: 1px solid black;
	border-bottom: 1px solid black;
}
.button {
	margin-left: 480px; 
	margin-top: 30px;
	font-size: 30px;
	margin-bottom: 40px;
}
.bu {
 	width: 80px;
 	height: 50px;
 	color: white;
 	background-color: #8EE1D2;
	text-align: center;
	font-size: 23px;
}
#currentPaging {
	font-weight: 1000; 
	color: black;
	font-size: 30px; 
	margin-right: 8px;
}
#paging {font-size: 30px; margin-right: 8px;}
</style>

</head>
<body>
<div class="wrapper">
<p id="notice_txt" >공지사항</p>
<hr>
<form id="boardList">
<div class="form">
<p id="p" ><img src="../images/new.png" width="70" id="new">[새 소식 알림]</p>
<p id="text" >승차권 예매 및 터미널 관련 새 소식을 전해드립니다.</p>
</div>
<table class="tableline">
	<tr height="50">
		<th width="120">NO</th>
		<th width="620">제목</th>
		<th width="220">작성일</th>
	</tr>
</table>
<table class="table" style="border-bottom: 1px solid black;">
<c:forEach var="boardVO" items="${list}">
	<tr align="center" height="50" >
		<td width="120" class="line">${boardVO.board_no}</td>
		<td width="620" class="linecenter">
		<a id="subjectA" href="../board/boardView.do?board_no=${boardVO.board_no}&pg=${pg}">
		${boardVO.subject}</a></td>
		<td width="220" class="line">${boardVO.writeday}</td>
	</tr>
</c:forEach>	

    <tr>
       <td colspan="5" align="center" height="70px;">
       <c:if test="${startPage > 3 }">
       <a class="Paging" href="../board/boardList.do?pg=${startPage -1 }" style="font-size: 25px;">이전</a>
      </c:if>
         
		<c:forEach var="i" begin="${startPage}" end="${endPage}" step="1">
			<c:if test="${pg == i}">
				<a id="currentPaging" href="../board/boardList.do?pg=${i}"><img src=>${i}</a>
			</c:if>
			<c:if test="${pg != i}">
				<a id="paging" href="../board/boardList.do?pg=${i}">${i}</a>
			</c:if>		
		</c:forEach>
		
		<c:if test="${endPage < totalP}">
			<a id="paging" href="../board/boardList.do?pg=${endPage + 1}" style="font-size: 25px;">다음</a>		
		</c:if>
		</td>
	</tr>
	</table>
	</form>
	<hr>
</div>

</body>
</html>