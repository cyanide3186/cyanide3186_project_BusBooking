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
#logo:hover { background-color: #AAB9FF; }
#taga:hover {color: white;}
#logo {
	border: 1px solid white;
	border-radius: 10px;
}
#taga {
	position: relative;
	top: -20px;
	font-size: 30px;
}
a { cursor: pointer;
	margin: 20px;
}
table#tab {
	margin-left: 250px;
	margin-top: 40px;
	text-align: center;
	font-size: 25px;
	font-weight: 900;
	cursor: pointer;
}
table#tab_area {
	margin-left: 140px;
	font-size: 20px;
	margin-bottom: 30px;
	margin-top: 60px;
	text-align: center;
	cursor: pointer;
}
#area{
	background-color:#C8D7FF;
	border-radius: 10px;
}
.line {
	border-bottom: 1px solid #ccc; 
	border-right: 1px solid #ccc;
}
.linebuttom{
	border-bottom: 1px solid #ccc;
}
.terminal_table{
	margin-left: 150px;
	border-bottom: 1px solid black;
	border-top: 1px solid black;
	text-align: center;
	margin-top: 20px;
}
.table {margin-left: 150px; margin-bottom: 100px; }
#currentPaging {
	font-weight: 1000; 
	color: black;
	font-size: 20px; 
	margin-right: 8px;
}
#paging {font-size: 20px; margin-right: 8px;}
#search_text {
	margin-left: 800px;
	width:220px; 
	height:30px;
	border-radius: 10px;
}
#button {
	width: 60px;
	height: 30px;
	background-color: #282828;
	color: white;
	border-radius: 10px;
}
</style>

<script type="text/javascript">
	$(function() {
		$("#logo1").click(function() { //터미널안내 클릭
			$("#tab1").fadeIn(); 	//터미널안내 테이블
		});
		
		$(".tabA",".tabB",".tabC",".tabD",".tabE"
		,".tabF",".tabG",".tabH",".tabI",".tabJ"
		,".tabK",".tabL",".tabM",".tabN",".tabO",".tabP").click(function() {
		$(".terminal_table").fadeIn();
		});
	});

</script>
</head>
<body>

<div class="wrapper">
		<p id="notice_txt">터미널 및 운수사 안내</p>
			<hr>
			<div class="form">

		<table id="tab">
			<tr>
			<td width="350" id="logo" >
			<img src="../images/terminal.png" width="60" height="80">
			<a href="../info/infoTrAndCompany.do" id="taga"  >터미널 안내</a></td>
			<td width="350"  id="logo">
			<img src="../images/bus.png" width="60" height="80">
			<a href="../info/company_info.do?pg=1" id="taga">운수사 안내</a></td>
			</tr>
		</table>
		
		<!-- 터미널 인포 -->
		<table id="tab_area" cellspacing="20px">
		<tr>
			<td width="200" height="60" class="tabA" id="area">
			<a href="../info/terminal.do?region=서울특별시&pg=1">서울특별시</a></td>
			<td width="200" class="tabB"  id="area">
			<a href="../info/terminal.do?region=경기도&pg=1">경기도</a></td>
			<td width="200" class="tabC" id="area">
			<a href="../info/terminal.do?region=인천광역시&pg=1">인천광역시</a></td>
			<td width="200" class="tabD" id="area">
			<a href="../info/terminal.do?region=강원도&pg=1">강원도</a></td>
		</tr>
		<tr>
			<td width="200" height="60" class="tabE" id="area">
			<a href="../info/terminal.do?region=충청북도&pg=1">충청북도</a></td>
			<td width="200" class="tabF" id="area">
			<a href="../info/terminal.do?region=대전광역시&pg=1">대전광역시</a></td>
			<td width="200" class="tabG" id="area">
			<a href="../info/terminal.do?region=충청남도&pg=1">충청남도</a></td>
			<td width="200" class="tabH" id="area">
			<a href="../info/terminal.do?region=세종특별자치시&pg=1">세종특별자치시</a></td>
		</tr>
		<tr>
			<td width="180" height="60" class="tabI"  id="area">
			<a href="../info/terminal.do?region=전라북도&pg=1">전라북도</a></td>
			<td width="180" class="tabJ" id="area">
			<a href="../info/terminal.do?region=전라남도&pg=1">전라남도</a></td>
			<td width="180" class="tabK" id="area">
			<a href="../info/terminal.do?region=광주광역시&pg=1">광주광역시</a></td>
			<td width="180" class="tabL" id="area">
			<a href="../info/terminal.do?region=경상북도&pg=1">경상북도</a></td>
		</tr>
		<tr>
			<td width="200" height="60" class="tabM" id="area">
			<a href="../info/terminal.do?region=대구광역시&pg=1">대구광역시</a></td>
			<td width="200" class="tabN" id="area">
			<a href="../info/terminal.do?region=경상남도&pg=1">경상남도</a></td>
			<td width="200" class="tabO" id="area">
			<a href="../info/terminal.do?region=울산광역시&pg=1">울산광역시</a></td>
			<td width="200" class="tabP" id="area">
			<a href="../info/terminal.do?region=부산광역시&pg=1">부산광역시</a></td>
		</tr>
	</table>
		<form method="post" action="../info/terminal.do?region=${region}">
				<input type="text" id="search_text" name="word" placeholder="검색어를 입력하세요">
				<input id="button" type="submit" value="검색">
		</form>
			
	<table class="terminal_table" >
	<tr height="50">
		<th width="160">구/군</th>
		<th width="460">명칭(전화번호),주소</th>
		<th width="210">홈페이지</th>
		<th width="90">약도</th>
	</tr>
	</table>
	<table class="table" style="border-bottom: 1px solid black;">
	<c:forEach var="terminalVO" items="${list_terminal}">
	<tr align="center" height="50" >
		<td width="160" class="line">
		${terminalVO.city}</td>
		<td width="460" class="line">
		${terminalVO.name}&nbsp;${terminalVO.subtext}<br>
		${terminalVO.addr}</td>
		<td width="210" class="line">
		${terminalVO.homepage }</td>
		<td width="90" class="linebuttom">
		${terminalVO.map}</td>
	</tr>
	</c:forEach>	

	    <tr>
       <td colspan="5" align="center" height="30px;" >
       <c:if test="${startPage > 10 }">
       <a class="paging" href="../info/terminal.do?pg=${startPage -1 }" style="font-size: 25px;">이전</a>
      </c:if>
         
		<c:forEach var="i" begin="${startPage}" end="${endPage}" step="1">
			<c:if test="${pg == i}">
				<a id="currentPaging" href="../info/terminal.do?pg=${i}"><img src=>${i}</a>
			</c:if>
			<c:if test="${pg != i}">
				<a id="paging" href="../info/terminal.do?pg=${i}">${i}</a>
			</c:if>		
		</c:forEach>
		
		<c:if test="${endPage < totalP}">
			<a id="paging" href="../info/terminal.do?pg=${endPage + 1}" style="font-size: 25px;">다음</a>		
		</c:if>
		</td>
	</tr>
	</table>

</div>
<hr>
</div>
</body>
</html>