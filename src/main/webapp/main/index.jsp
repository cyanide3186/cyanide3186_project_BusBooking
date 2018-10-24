<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

</style>
</head>
<body>
	<div id=header>
		<jsp:include page="../template/header.jsp" />
	</div>

	<div id="section">
		<c:if test="${main==null}">
			<jsp:include page="body.jsp" />
		</c:if>

		<c:if test="${main!=null}">
			<jsp:include page="${main}" />
		</c:if>
	</div>
	<div id=footer>
		<jsp:include page="../template/footer.jsp" />
	</div>

</body>
</html>