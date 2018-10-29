<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<!-- Standard Meta -->
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- Site Properties -->
<title>Fixed Menu Example - Semantic</title>

<link rel="stylesheet" type="text/css"
	href="/Project_BusBooking/semantic/components/reset.css">
<link rel="stylesheet" type="text/css"
	href="/Project_BusBooking/semantic/components/site.css">
<link rel="stylesheet" type="text/css"
	href="/Project_BusBooking/semantic/components/container.css">
<link rel="stylesheet" type="text/css"
	href="/Project_BusBooking/semantic/components/grid.css">
<link rel="stylesheet" type="text/css"
	href="/Project_BusBooking/semantic/components/header.css">
<link rel="stylesheet" type="text/css"
	href="/Project_BusBooking/semantic/components/image.css">
<link rel="stylesheet" type="text/css"
	href="/Project_BusBooking/semantic/components/menu.css">
<link rel="stylesheet" type="text/css"
	href="/Project_BusBooking/semantic/components/divider.css">
<link rel="stylesheet" type="text/css"
	href="/Project_BusBooking/semantic/components/list.css">
<link rel="stylesheet" type="text/css"
	href="/Project_BusBooking/semantic/components/segment.css">
<link rel="stylesheet" type="text/css"
	href="/Project_BusBooking/semantic/components/dropdown.css">
<link rel="stylesheet" type="text/css"
	href="/Project_BusBooking/semantic/components/icon.css">

<link rel="stylesheet" type="text/css" href="../semantic/semantic.css">

<script src="https://code.jquery.com/jquery-3.1.1.min.js"
	integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
	crossorigin="anonymous"></script>
<script src="/Project_BusBooking/semantic/semantic.js"></script>
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

	<div class="ui fixed inverted menu" style="height: 100px;">
		<div class="ui container">
			<a href="#" class="header item" width="300px"> <img class="logo"
				src="../assets/logo.png" width="100px" height="50px">

			</a> <a href="#" class="item">Home</a>

			<div class="ui simple dropdown item">
				<span> 예매</span><i class="dropdown icon"></i>
				<div class="menu">
					<a class="item" href="../booking/booking_input.do">예매</a> 
					<a class="item" href="#">LinkItem</a>
					<div class="divider"></div>
					<div class="header">Header Item</div>
					<div class="item">
						<i class="dropdown icon"></i> Sub Menu
						<div class="menu">
							<a class="item" href="#">Link Item</a> <a class="item" href="#">Link
								Item</a>
						</div>
					</div>
					<a class="item" href="#">Link Item</a>
				</div>
			</div>

			<div class="ui simple dropdown item">
				<span>운행정보 </span><i class="dropdown icon"></i>
				<div class="menu">
					<a class="item" href="#">Link Item</a> <a class="item" href="#">Link
						Item</a>
					<div class="divider"></div>
					<div class="header">Header Item</div>
					<div class="item">
						<i class="dropdown icon"></i> Sub Menu
						<div class="menu">
							<a class="item" href="#">Link Item</a> <a class="item" href="#">Link
								Item</a>
						</div>
					</div>
					<a class="item" href="#">Link Item</a>
				</div>
			</div>

			<div class="ui simple dropdown item">
				<span>이용안내 </span><i class="dropdown icon"></i>
				<div class="menu">
					<a class="item" href="../info/bus_booking_info.jsp">승차권 예매 안내</a>
					<a class="item" href="../info/modify_and_cancelation_info.jsp">예매변경 및 취소 안내</a>
					<a class="item" href="../info/tr_and_company_info.jsp">터미널 및 운수사 안내</a>
					<a class="item" href="../info/tax_info.jsp">현금영수증 안내</a>
				<!--  
					<div class="divider"></div>
					<div class="header">Header Item</div>
					<div class="item">
						<i class="dropdown icon"></i> Sub Menu
						<div class="menu">
							<a class="item" href="#">Link Item</a> <a class="item" href="#">Link
								Item</a>
						</div>
					</div>
					<a class="item" href="#">Link Item</a>
				 -->		
				</div>
			</div>

			<div class="ui simple dropdown item">
				<span>고객지원</span> <i class="dropdown icon"></i>
				<div class="menu">
					<a class="item" href="../board/boardList.do">공지사항</a> 
					<a class="item" href="../qboard/qboardWriteForm.do">고객의 소리</a>
					<div class="divider"></div>
					<div class="header">Header Item</div>
					<div class="item">
						<i class="dropdown icon"></i> Sub Menu
						<div class="menu">
							<a class="item" href="#">Link Item</a> <a class="item" href="#">Link
								Item</a>
						</div>
					</div>
					<a class="item" href="#">Link Item</a>
				</div>
			</div>

		</div>
	</div>


</body>

</html>

