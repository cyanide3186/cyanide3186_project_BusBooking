<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="../semantic/components/reset.css">
<link rel="stylesheet" type="text/css"
	href="../semantic/components/site.css">
<link rel="stylesheet" type="text/css"
	href="../semantic/components/container.css">
<link rel="stylesheet" type="text/css"
	href="../semantic/components/grid.css">
<link rel="stylesheet" type="text/css"
	href="../semantic/components/header.css">
<link rel="stylesheet" type="text/css"
	href="../semantic/components/image.css">
<link rel="stylesheet" type="text/css"
	href="../semantic/components/menu.css">
<link rel="stylesheet" type="text/css"
	href="../semantic/components/divider.css">
<link rel="stylesheet" type="text/css"
	href="../semantic/components/list.css">
<link rel="stylesheet" type="text/css"
	href="../semantic/components/segment.css">
<link rel="stylesheet" type="text/css"
	href="../semantic/components/dropdown.css">
<link rel="stylesheet" type="text/css"
	href="../semantic/components/icon.css">

<link rel="stylesheet" type="text/css" href="../semantic/semantic.css">

<script src="https://code.jquery.com/jquery-3.1.1.min.js"
	integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
	crossorigin="anonymous"></script>
<script src="../semantic/semantic.js"></script>
<style type="text/css">
body {
	background-color: #FFFFFF;
}

.ui.menu .item img.logo {
	margin-right: 1.5em;
}

.main.container {
	margin-top: 7em;
}

.wireframe {
	margin-top: 2em;
}

.ui.footer.segment {
	margin: 5em 0em 0em;
	padding: 5em 0em;
}

span {
	width: 200px;
	text-align: center;
}
</style>


</head>
<body>
	<div id=header>
		<jsp:include page="/template/header.jsp" />
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
		<jsp:include page="/template/footer.jsp" />
	</div>

</body>
</html>