<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/base.css">
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
$(function() {
	$("div#reserve a").click(function() {
		alert("클릭");
		$("div#reserve a div#answer").slideToggle();
		
		//$("#slide > #reserve").slideToggle();
	});
});
</script>
<style type="text/css">
a {
	text-decoration: none;
	cursor: pointer;
}

#slide div {

}
#answer {
	display: none;
}
</style>
</head>
<body>

<div id=header>
	<jsp:include page="../template/header.jsp" />
</div>

	<div class="wrapper">
	<p id="notice_txt" >FAQ</p>
	<hr id="headline">
		<form id="form">
		
	<div style="width:800px;" height: 600px;">
	<div id="slide">
	
	<a>승차권 예약</a>
		<div id="reserve" >
			<a>승차권 예약은 언제까지 가능한가요? </a>
				<div id="answer">aaa</div>
				</div>
			<a>승차권 예약시 지정한 좌석과 실제 이용시 좌석이 다른 경우는 왜 그런가요?</a>
			<a>승차권을 예약한 경우 발권은 어떻게 하나요?</a>
			<a>신용카드를 지참하지 않고 터미널 매표창구에서 예약한 승차권을 발권받을 수 있나요?</a>
			<a>계좌이체로 예약이 가능한가요?</a>
			<a>ARS 또는 상담원과의 전화로 예약이 가능한가요?</a>
			<a>승차권 예약하고 변경, 취소했는데 카드사에서는 취소가 확인되지 않습니다.</a>
			<a>예약을 하다가 오류가 발생해서 다시 예약을 하는데 선택했던 좌석이 예약된 좌석처럼 선택할 수 없도록 되어있는데 예약이 된 건가요?</a>
			<a>승차권 요금 중에 아동은 몇 살까지 적용되나요?</a>
				<div id="answer">aaa</div>
				</div>
	<a>홈티켓</a>
		<div id="home" >
			<a>승차권을 예약했는데 </a>
		</div>
	
	<a>대금결제</a>
	<a>홈페이지 예약</a>
	<a>기타</a>


	<div>
		<img alt="" src="img/3.jpg" width="300px" height="200">
	</div>
	
	</div>
<div>
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		<hr id="footline">
		</form>
	</div>
<div id=footer>
	<jsp:include page="../template/footer.jsp" />
</div>
</body>
</html>