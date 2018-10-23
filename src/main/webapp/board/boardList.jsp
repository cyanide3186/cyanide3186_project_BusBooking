<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
#notice {
	text-align: center;
	font-size: 30px;
}
.table {
	border: 2px solid #ccc;
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
<p id="voc" >공지사항</p>

<form action="../qboard/qboardWrite.do" name="qboardWriteForm" method="post">
<table class="table">

</table>
</form>
</div>
<hr>
<div id="footer">
</div>

</body>
</html>