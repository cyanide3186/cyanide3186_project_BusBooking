<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div id=header>
	<a href="../qboard/qboardWriteForm.do">고객의 소리</a>
</div>

<div id="section">
	<c:if test="${main==null}">
	<jsp:include page="body.jsp"/>
	</c:if>
	
	<c:if test="${main!=null}">
		<jsp:include page="${main}"/>
	</c:if>
</div>


</body>
</html>