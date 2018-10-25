<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/base.css">
<style type="text/css">

#notice_txt {
	text-align: center;
	font-size: 35px;
	font-weight: bold;
}

.table {
	text-align: center;
	border-radius: 3px;
	border: 2px solid #ccc;
	margin-left: 170px;
}
#new { margin-left: 100px;}
#p {
	font-size: 15px;
	font-weight:800;
}
#text { margin-left: 170px; font-weight:800;}
</style>

</head>
<div class="wrapper">
<p id="notice_txt" >공지사항</p>
<hr>

<p id="p" ><img src="../images/new.png" width="70" id="new">[새 소식 알림]</p>
<p id="text" >승차권 예매 및 터미널 관련 새 소식을 전해드립니다.</p>
<table class="table">
	<tr bgcolor="#37C3C3">
		<th width="100">NO</th>
		<th width="500">제목</th>
		<th width="300">작성일</th>
	</tr>

<c:forEach var="boardVO" items="${list}">
	<tr align="center">
		<td>${boardVO.board_no}</td>
		<td><a id="subjectA" href="#" 
			onclick="isLogin(${boardVO.board_no})">${boardVO.subject}</a></td>
		<td>${boardVO.writeday}</td>
	</tr>
</c:forEach>	

    <tr>
       <td colspan="5" align="center" >
       <c:if test="${startPage > 3 }">
       [<a class="Paging" href="../board/boardList.do?pg=${startPage -1 }">이전</a>]
      </c:if>
         
		<c:forEach var="i" begin="${startPage}" end="${endPage}" step="1">
			<c:if test="${pg == i}">
				[<a id="currentPaging" href="../board/boardList.do?pg=${i}">${i}</a>]
			</c:if>
			<c:if test="${pg != i}">
				[<a id="paging" href="../board/boardList.do?pg=${i}">${i}</a>]
			</c:if>		
		</c:forEach>
		
		<c:if test="${endPage < totalP}">
			[<a id="paging" href="../board/boardList.do?pg=${endPage + 1}">다음</a>]			
		</c:if>
		</td>
	</tr>

</table>
<hr>
</div>

</body>
</html>