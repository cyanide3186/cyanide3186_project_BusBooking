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
.company_table {
	margin-left: 100px;
	border-bottom: 1px solid black;
	border-top: 1px solid black;
	text-align: center;
	margin-top: 20px;
}
.table {margin-left: 100px; margin-bottom: 100px;}
#currentPaging {
	font-weight: 1000; 
	color: black;
	font-size: 20px; 
	margin-right: 8px;
}
#paging {font-size: 20px; margin-right: 8px;}
</style>

<script type="text/javascript">

</script>
</head>
<body>

<div class="wrapper">
		<p id="notice_txt">터미널 및 운수사 안내</p>
			<hr>
			<div class="form">

	<table id="tab" >
		<tr>
			<td id="logo1" width="400" height="80"><a href="../info/infoTrAndCompany.do">터미널 안내</a></td>
			<td id="logo2" width="400"><a href="../info/company_info.do?pg=1">운수사 안내</a></td>
		</tr>
	</table>

		<table class="company_table">
		<tr height="50">
			<th width="300">구/회사명</th>
			<th width="200">전화번호</th>
			<th width="590">주소</th>
		</tr>
		</table>
	<table class="table" style="border-bottom: 1px solid black;">
 	<c:forEach var="companyVO" items="${list}">
		<tr align="center" height="50" >
			<td width="300" class="line">${companyVO.name}</td>
			<td width="200" class="linecenter">${companyVO.tel}</td>
			<td width="590" class="line">${companyVO.addr}</td>
		</tr>
	</c:forEach> 
    <tr>
       <td colspan="5" align="center" height="70px;">
       <c:if test="${startPage > 10 }">
       <a class="Paging" href="../info/company_info.do?pg=${startPage -1 }" >이전</a>
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