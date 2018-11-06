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
<style type="text/css">

.ui.inverted.segment, .ui.primary.inverted.segment {
    border: 0px solid transparent;
    background:#051a2d;
}
.ui .stackable.inverted.divided.grid {
	margin-left: 185px;
}
.ui.inverted.header {
	background-color: #051a2d;
}
</style>

</head>
<body>
	<div class="ui inverted vertical footer segment">
		<div class="ui center aligned container">
			<div class="ui stackable inverted divided grid">
				<div class="three wide column">
					<h4 class="ui inverted header" >예매</h4>
					<div class="ui inverted link list" >
						<a href="../booking/booking_inputForm.do" class="item"> 예매</a> 
						<a href="#" class="item">예매조회/취소/변경</a> 
					</div>
				</div>
				<div class="three wide column">
					<h4 class="ui inverted header" >운행정보</h4>
					<div class="ui inverted link list" >
						<a href="../booking/booking_information_inquiry.do" class="item">노선/운행정보</a> 
					</div>
				</div>
				<div class="three wide column">
					<h4 class="ui inverted header" >이용안내</h4>
					<div class="ui inverted link list" >
						<a href="../info/infoBusBooking.do" class="item">승차권 예매 안내</a> 
						<a href="../info/infoModyAndCancle.do" class="item">예매변경 및 취소 안내</a> 
						<a href="../info/infoTrAndCompany.do" class="item">터미널 및 운수사 안내</a>
						<a href="../info/infoTax.do" class="item">현금영수증 안내</a>
					</div>
				</div>
				<div class="three wide column">
					<h4 class="ui inverted header" >고객지원</h4>
					<div class="ui inverted link list" >
						<a href="../board/boardList.do" class="item">공지사항</a> 
						<a href="../board/boardFAQ.do" class="item">FAQ</a> 
						<a href="../qboard/qboardWriteForm.do" class="item">고객의 소리</a>
					</div>
				</div>
			</div>
			<div class="ui inverted section divider"></div>
			<div class="ui horizontal inverted small divided link list">
				<a class="item" href="#">이용약관</a> 
				<a class="item" href="#">개인정보 처리방침</a> 
				<a class="item" href="#">이메일 무단수집 거부</a><br>
				<p class="item">Copyright© 2018 Bus Smart Card Co.,Ltd_All Rights Reserved.</p>
			</div>
		</div>
	</div>
</body>

</html>

