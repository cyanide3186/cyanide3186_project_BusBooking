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
#logo:hover { background-color:#AAB9FF; color: white;}
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
.line {
	border-bottom: 1px solid #ccc; 
	border-right: 1px solid #ccc;
}
.linebuttom{
	border-bottom: 1px solid #ccc;
}
.company_table {
	margin-left: 120px;
	border-bottom: 1px solid black;
	border-top: 1px solid black;
	text-align: center;
	margin-top: 30px;
}
.table {margin-left: 120px; margin-bottom: 100px; }
#currentPaging {
	font-weight: 1000; 
	color: black;
	font-size: 20px; 
	margin-right: 8px;
}
#paging {font-size: 20px; margin-right: 8px;}
#search_text {
	border-radius: 10px;
	margin-top: 80px;
	margin-left: 750px;
	width:220px; 
	height:30px;
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
			<img src="../images/terminal.png" width="80" height="80">
			<a href="../info/infoTrAndCompany.do" id="taga"  >터미널 안내</a></td>
			<td width="350"  id="logo">
			<img src="../images/bus.png" width="80" height="80">
			<a href="../info/company_info.do?pg=1" id="taga">운수사 안내</a></td>
			</tr>
		</table>

		
		<form method="post" action="../info/company_info.do">
			<input type="text" id="search_text" name="word" placeholder="검색어를 입력하세요">
			<input id="button" type="submit" value="검색" >
		</form>
		
		<table class="company_table">
		<tr height="50">
			<th width="220">구/회사명</th>
			<th width="170">전화번호</th>
			<th width="520">주소</th>
		</tr>
		</table>
		
	<table class="table" style="border-bottom: 1px solid black;">
 	<c:forEach var="companyVO" items="${list}">
		<tr align="center" height="50">
			<td width="220" class="line">
			${companyVO.name}</td>
			<td width="170" class="line">
			${companyVO.tel}</td>
			<td width="520" class="linebuttom">
			${companyVO.addr}</td>
		</tr>
	</c:forEach> 
    <tr>
       <td colspan="5" align="center" height="70px;">
       <c:if test="${startPage > 10 }">
       <a class="paging" href="../info/company_info.do?pg=${startPage -1 }" >이전</a>
      </c:if>
         
		<c:forEach var="i" begin="${startPage}" end="${endPage}" step="1">
			<c:if test="${pg == i}">
				<a id="currentPaging" href="../info/company_info.do?pg=${i}"><img src=>${i}</a>
			</c:if>
			<c:if test="${pg != i}">
				<a id="paging" href="../info/company_info.do?pg=${i}">${i}</a>
			</c:if>		
		</c:forEach>
		
		<c:if test="${endPage < totalP}">
			<a id="paging" href="../info/company_info.do?pg=${endPage + 1}">다음</a>		
		</c:if>
		</td>
	</tr>
	</table>

	
</div>
<hr>
</div>
</body>
</html>