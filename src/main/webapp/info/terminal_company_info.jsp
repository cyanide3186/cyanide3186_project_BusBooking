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
#logo1:hover {text-decoration: none; background-color: #87CEFA;}
#logo2:hover {text-decoration: none; background-color: #87CEFA;}
a { cursor: pointer;
	margin: 20px;
}
table#tab {
	border-top: 1px solid;
	border-bottom: 1px solid;
	margin-left: 300px;
	margin-top: 40px;
	text-align: center;
	font-size: 20px;
	font-weight: 900;
	cursor: pointer;
}
table#tab1 {
	margin-left: 300px;
	font-size: 20px;
	margin-bottom: 30px;
	margin-top: 30px;
	border-radius: 10px;
	border: 1px solid #ccc;
	text-align: center;
	cursor: pointer;
}
.seoul {
	margin-left: 150px;
	border-bottom: 1px solid black;
	border-top: 1px solid black;
	text-align: center;
	margin-top: 20px;
	display: none;
}
.table {margin-left: 100px; margin-bottom: 100px;}
.company_table {
	display: none;
	margin-left: 100px;
	border-bottom: 1px solid black;
	border-top: 1px solid black;
	text-align: center;
	margin-top: 20px;
}
.terminal_table{
/* 	display: none; */
}
</style>

<script type="text/javascript">
	$(function() {
		$("#logo1").click(function() { //터미널안내 클릭
			$("#tab2").hide(); 		//운수사안내 테이블
			$("#tab1").fadeIn(); 	//터미널안내 테이블
		});
		
		$("#tabA","#tabB","#tabC","#tabD","#tabE"
		,"#tabF","#tabG","#tabH","#tabI","#tabJ"
		,"#tabK","#tabL","#tabM","#tabN","#tabO","#tabP").click(function() {
			$(".terminal_table").fadeIn();
		});
	});
	
/*  	$(function() {
		$("#logo2").click(function() {	//운수사안내 클릭
			$("#tab1").hide();		//터미널안내 테이블
			$("#tab2").fadeIn();	//운수사안내 테이블
			$(".terminal_table").hide();
			$(".company_table").fadeIn();
			
		});
		
	}); */ 
</script>
</head>
<body>

<div class="wrapper">
		<p id="notice_txt">터미널 및 운수사 안내</p>
			<hr>
			<div class="form">

	<table id="tab" >
		<tr>
			<td id="logo1" width="400" height="80"><a>터미널 안내</a></td>
			<td id="logo2" width="400"><a href="../info/company_info.do?pg=1">운수사 안내</a></td>
		</tr>
	</table>
		<!-- 터미널 인포 -->
		<table id="tab1" >
		<tr style="border-bottom: 1px solid black;">
			<td width="200" height="60" id="tabA">
			<a href="../info/terminal.do?region='서울특별시'&pg=1">서울특별시</a></td>
			<td width="200" id="tabB">
			<a href="../info/terminal.do?region='경기도'&pg=1">경기도</a></td>
			<td width="200" id="tabC">
			<a href="../info/terminal.do?region='인천광역시'&pg=1">인천광역시</a></td>
			<td width="200" id="tabD">
			<a href="../info/terminal.do?region='강원도'&pg=1">강원도</a></td>
		</tr>
		<tr>
			<td width="200" height="60" id="tabE">
			<a href="../info/terminal.do?region='충청북도'&pg=1">충청북도</a></td>
			<td width="200" id="tabF">
			<a href="../info/terminal.do?region='대전광역시'&pg=1">대전광역시</a></td>
			<td width="200" id="tabG">
			<a href="../info/terminal.do?region='충청남도'&pg=1">충청남도</a></td>
			<td width="200" id="tabH">
			<a href="../info/terminal.do?region='세종특별자치시'&pg=1">세종특별자치시</a></td>
		</tr>
		<tr>
			<td width="180" height="60" id="tabI">
			<a href="../info/terminal.do?region='전라북도'&pg=1">전라북도</a></td>
			<td width="180" id="tabJ">
			<a href="../info/terminal.do?region='전라남도'&pg=1">전라남도</a></td>
			<td width="180" id="tabK">
			<a href="../info/terminal.do?region='광주광역시'&pg=1">광주광역시</a></td>
			<td width="180" id="tabL">
			<a href="../info/terminal.do?region='경상북도'&pg=1">경상북도</a></td>
		</tr>
		<tr>
			<td width="200" height="60" id="tabM">
			<a href="../info/terminal.do?region='대구광역시'&pg=1">대구광역시</a></td>
			<td width="200" id="tabN">
			<a href="../info/terminal.do?region='경상남도'&pg=1">경상남도</a></td>
			<td width="200" id="tabO">
			<a href="../info/terminal.do?region='울산광역시'&pg=1">울산광역시</a></td>
			<td width="200" id="tabP">
			<a href="../info/terminal.do?region='부산광역시'&pg=1">부산광역시</a></td>
		</tr>
	</table>
	
	<table class="terminal_table" border="1">
	<tr height="50">
		<th width="200">구/군</th>
		<th width="480">명칭(전화번호),주소</th>
		<th width="210">홈페이지</th>
		<th width="50">약도</th>
	</tr>
	<c:forEach var="terminalVO" items="${list_terminal}">
	<tr align="center" height="50" >
		<td width="120" class="line">${terminalVO.city}</td>
		<td width="620" class="linecenter">${terminalVO.name}(${terminalVO.subtext})<br>
		${terminalVO.addr}</td>
		<td>${terminalVO.homepage }</td>
		<td width="220" class="line">${terminalVO.map}</td>
	</tr>
	</c:forEach>	

	    <tr>
       <td colspan="5" align="center" height="70px;">
       <c:if test="${startPage > 10 }">
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

</div>
<hr>
</div>
</body>
</html>