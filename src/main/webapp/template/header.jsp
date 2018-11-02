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
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

<!-- Site Properties -->
<title>Fixed Menu Example - Semantic</title>
</head>
<body>

	<div class="ui fixed inverted menu" style="height: 100px;">
		<div class="ui container">
			<a href="#" class="header item" width="300px"> <img class="logo"
				src="../assets/logo.png" width="100px" height="40px">
			</a> <a href="#" class="item">Home</a>

			<div class="ui simple dropdown item">
				<span> 예매</span><i class="dropdown icon"></i>
				<div class="menu">
					<a class="item" href="../booking/booking_inputForm.do">예매</a> 
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
					<a class="item" href="../info/infoBusBooking.do">승차권 예매 안내</a>
					<a class="item" href="../info/infoModyAndCancle.do">예매변경 및 취소 안내</a>
					<a class="item" href="../info/infoTrAndCompany.do">터미널 및 운수사 안내</a>
					<a class="item" href="../info/infoTax.do">현금영수증 안내</a>
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
					<a class="item" href="../board/boardFAQ.do">FAQ</a>
					<a class="item" href="../qboard/qboardWriteForm.do">고객의 소리</a>
					<!-- <div class="divider"></div>
					<div class="header">Header Item</div>
					<div class="item">
						<i class="dropdown icon"></i> Sub Menu
						<div class="menu">
							<a class="item" href="#">Link Item</a> <a class="item" href="#">Link
								Item</a>
						</div>
					</div>
					<a class="item" href="#">Link Item</a> -->
				</div>
			</div>

		</div>
	</div>


</body>

</html>

