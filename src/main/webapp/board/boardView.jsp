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
	border-radius: 3px;
	border: 2px solid #ccc;
	margin-left: 170px;
}

</style>

</head>
<div class="wrapper">
<p id="notice_txt" >공지사항</p>
<hr>

<body>
<table class="table" cellpadding="5">
   <tr>
      <td colspan="2">
       <font size="5">${boardVO.subject}</font>
      </td>
   </tr>
   <tr>
     <td width="150">NO. ${boardDTO.board_no}</td>
     <td width="150">등록일 : ${boardDTO.name}</td>
   </tr>
   <tr>
     <td colspan="2" height="200" valign="top">
         <pre>${boardVO.content}></pre>
     </td>
   </tr>
</table>

<input type="button" value="목록" onclick="location.href='../board/boardList.do?pg=${pg}'">

</div>

</body>
</html>