<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/style.css?d">
<style type="text/css">
.sq {
    color: white;
    background-color: rgb(175, 198, 220);
    padding: 3rem;
    border-radius: 15px;
}
.sq-item-anchor-title {
    color: white;
    border-radius: 30px;
    font-weight: 600;
    font-size: 25px;
    font-family: sans-serif;
}
.ticket {
	 font-family: sans-serif; 
	 font-size: 20px; 
	 text-align: center;
	 margin-top: 30px;
}
.notification{
	font-family: sans-serif; 
	 font-size: 15px; 
	 text-align: center;
	 margin-top: 60px;
}
.sq-item.sq-item-large,.sq-item,
.sq-item.sq-item-long.sq-item-float-right,.sq-item.sq-item-wide{border-radius: 40px;}
.sq-item-anchor {
	/*그 부모안에서 절대 좌표형식 */
	opacity: 1;
	font-family: 'Roboto Slab', serif;
	border-radius:10px;
	margin: 20px;
}
.sq-item.sq-item-large {
	background: #2c77af;
	width: 45%;
	margin-right: 5px;
	margin-bottom: 5px;
}
.sq-item{
	margin-left: 10px;
	margin-bottom: 5px;
	float: center;
}
.sq-item-long {padding-top: 50%;}
.sq-item-anchor:hover {
	color: white;
	margin: 100;
	z-index: 0;
	border-width: 10px;
	opacity: 1;
	font-size: 3rem;
	box-shadow: 0 0 0 0 rgba(0,0,0,0);
}
</style>
</head>
<body>
<div class="wrapper">
		<ul class="sq clearfix">
			<li class="sq-item sq-item-large" >
				<a class="sq-item-anchor" href="../booking/booking_inputForm.do"> 
				<img class="sq-item-anchor-cover" src="../images/section_image5.png"  width="200" height="200" style="margin:140px;">
				<span class="sq-item-anchor-title" style=" text-align: center; font-size: 40px;">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;승차권 예매</span>
				<hr style="margin-top: 300px;" >
				<p class="ticket">시외버스 예매 시스템으로 <br>안전하고 편리하게 여행하세요</p>
			</a></li>
			<li class="sq-item" style="background-color:#aa4cab; margin-right: 10px;">
				<a class="sq-item-anchor" href="../booking/booking_information_inquiry.do"> 
				<img class="sq-item-anchor-cover" src="../images/section_image4.png" width="110" height="110" style="margin: 65px; margin-top: 90px;"> 
				<span class="sq-item-anchor-title" style="font-size: 28px;">노선/운행정보</span>
			</a></li>
			<li class="sq-item" style="background-color: #532982; ">
				<a class="sq-item-anchor" href="../booking/booking_modifyForm.do"> 
				<img class="sq-item-anchor-cover" src="../images/section_image9.png" width="70" height="70" style="margin: 20px;"> 
				<span class="sq-item-anchor-title" style="font-size: 20px; ">
				<br><br><br><br>예매조회/변경/취소</span>
				<img class="sq-item-anchor-cover" src="../images/section_image10.png" width="75" height="75" style="margin: 150px;">
			</a></li>
			<li class="sq-item" style="background-color: #532982;  margin-right: 10px; ">
				<a class="sq-item-anchor" href="../info/infoBusBooking.do""> 
				<img class="sq-item-anchor-cover" src="../images/section_image15.png" width="100" height="100" style="margin-top: 80px; margin-left: 70px;"> 
				<span class="sq-item-anchor-title" style="font-size: 23px;">승차권 예매 안내</span>
			</a></li>
			<li class="sq-item" style="background-color: #aa4cab;  margin-right: 10px; ">
				<a class="sq-item-anchor" href="../qboard/qboardWriteForm.do"> 
				<img class="sq-item-anchor-cover" src="../images/section_image14.png" width="110" height="110" style="margin: 70px;"> 
				<span class="sq-item-anchor-title" style="font-size: 24px;">&nbsp;&nbsp;&nbsp;고객의 소리</span>
			</a></li>
			<li class="sq-item sq-item-long sq-item-float-right" style="background-color:#2c77af; width: 27%; height: 35%;">
				<a class="sq-item-anchor" href="../board/boardList.do"> 
				<img class="sq-item-anchor-cover" src="../images/section_image3.png" width="50" height="50" style="margin: 30px; margin-left: 100px;"> 
				<hr style="margin-top: 80px; margin-bottom: 30px;">
				<span class="sq-item-anchor-title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;공지사항</span>
				<p class="notification">환영합니다!<br><br>승차권 예매 및 터미널 관련<br><br>새소식을 전해드립니다.</p>
				<hr style="margin-top: 110px; ">
			</a></li>
			<li class="sq-item" style="background-color:#532982;  width: 35%;">
			<a class="sq-item-anchor" href="../info/terminal.do"> 
				<img class="sq-item-anchor-cover" src="../images/section_image2.png" width="120" height="120" style="margin: 90px; margin-left: 110px;"> 
				<span class="sq-item-anchor-title" style="font-size: 30px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;터미널 안내</span>
			</a></li>
			<li class="sq-item" style="background-color: #aa4cab;   width: 35%;">
			<a class="sq-item-anchor" href="../info/company_info.do"> 
				<img class="sq-item-anchor-cover" src="../images/section_image1.png" width="120" height="120" style="margin: 90px; margin-left: 110px;"> 
				<span class="sq-item-anchor-title" style="font-size: 30px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;운수사 안내</span>
			</a></li>
			<li class="sq-item" style="background-color: #aa4cab;   width: 35%;">
			<a class="sq-item-anchor" href="../info/infoModyAndCancle.do"> 
				<img class="sq-item-anchor-cover" src="../images/section_image8.png" width="120" height="120" style="margin: 90px; margin-left: 110px;"> 
				<span class="sq-item-anchor-title" style="font-size: 29px;">&nbsp;&nbsp;&nbsp;예매변경/취소 안내</span>
			</a></li>
			<li class="sq-item" style="background-color:#532982;   width: 35%;">
			<a class="sq-item-anchor" href="../info/infoTax.do"> 
				<img class="sq-item-anchor-cover" src="../images/section_image6.png" width="120" height="120" style="margin: 90px; margin-left: 120px;"> 
				<span class="sq-item-anchor-title" style="font-size: 30px;">&nbsp;&nbsp;&nbsp;현금영수증 안내</span>
			</a></li>
		</ul>
	</div>
</body>
</html>