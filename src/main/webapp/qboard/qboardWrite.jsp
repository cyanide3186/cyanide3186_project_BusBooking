<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload=function() {
		if(${su > 0}) {
			alert("작성하신 글이 저장되었습니다.");
			location.href="../qboard/qboardWriteForm.do";
		}else {
			alert("글을 다시 작성해주세요.");
			location.href="../qboard/qboardWriteForm.do";
		}
		
	}

</script>
</head>
<body>

</body>
</html>