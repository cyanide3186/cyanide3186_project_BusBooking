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
    padding: 1rem;
    border-radius: 15px;
}
.sq-item-anchor-title {
    color: white;
    border-radius: 15px;
    font-weight: 600;
    font-size: 25px;
}
.sq-item-anchor-cover {
	margin-top: 40px;
	margin: 80px;
}
 .sq-item-anchor:hover {
    z-index: 10;
    border-width: 10px;
}
.ticket {
	 font-family: sans-serif; 
	 font-size: 20px; 
	 text-align: center;
	 margin-top: 30px;
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
.ui.button {
	box-shadow: none;
}
.sq-item-anchor::after {
    content: ' ';
    position: absolute;
    left: 0;
    right: 0;
    top: 0;
    bottom: 0;
}
.sq-item.sq-item-large{
	background: #2c77af;
}
</style>
</head>
<body>
<div class="wrapper">
		<ul class="sq clearfix">
			<li class="sq-item sq-item-large">
				<a class="sq-item-anchor" href=""> 
				<img class="sq-item-anchor-cover" src="../images/section_image5.png"  width="200" height="200" style="margin:150px;">
				<span class="sq-item-anchor-title" style="font-family: sans-serif; text-align: center; font-size: 40px;">승차권 예매</span>
				<hr style="margin-top: 300px;" >
				<p class="ticket">시외버스 예매 시스템으로 <br>안전하고 편리하게 여행하세요</p>
			</a></li>
			<li class="sq-item" style="background-color: #d6ac32;">
				<a class="sq-item-anchor" href=""> 
				<img class="sq-item-anchor-cover" src="../images/section_image4." width="100" height="100" style="margin: 70px;"> 
				<span class="sq-item-anchor-title" style="font-family: sans-serif;">노선/운행정보</span>
			</a></li>
			<li class="sq-item" style="background-color: ">
				<a class="sq-item-anchor" href=""> 
				<img class="sq-item-anchor-cover" src="../images/section_image9.png" width="70" height="70" style="margin: 20px;"> 
				<span class="sq-item-anchor-title" style="font-family: sans-serif; font-size: 21px; font-weight: 800;">
				<br><br><br><br>예매조회/취소/변경</span>
				<img class="sq-item-anchor-cover" src="../images/section_image10.png" width="75" height="75" style="margin: 150px;">
			</a></li>
			<li class="sq-item" style="background-color: ">
				<a class="sq-item-anchor" href=""> 
				<img class="sq-item-anchor-cover" src="../images/section_image11." width="80" height="80" > 
				<span class="sq-item-anchor-title" style="font-family: sans-serif; font-size: 22px;">승차권 예매 안내</span>
			</a></li>
			<li class="sq-item sq-item-long sq-item-float-right" style="background-color: ">
				<a class="sq-item-anchor" href=""> 
				<img class="sq-item-anchor-cover" src="../images/section_image3.png" width="50" height="50" style="margin-left: 100px;"> 
				<hr style="margin-top: 130px;">
				<span class="sq-item-anchor-title" style="font-family: sans-serif;">&nbsp;&nbsp;&nbsp;&nbsp;공지사항</span>
			</a></li>
			<li class="sq-item" style="background-color: ">
			<a class="sq-item-anchor" href=""> 
				<img class="sq-item-anchor-cover" src="../images/section_image2.png" width="100" height="100"> 
				<span class="sq-item-anchor-title" style="font-family: sans-serif;">&nbsp;&nbsp;&nbsp;터미널 안내</span>
			</a></li>
			<li class="sq-item" style="background-color: ">
			<a class="sq-item-anchor" href=""> 
				<img class="sq-item-anchor-cover" src="../images/section_image1.png" width="100" height="100"> 
				<span class="sq-item-anchor-title" style="font-family: sans-serif;">&nbsp;&nbsp;&nbsp;운수사 안내</span>
			</a></li>
			<li class="sq-item" style="background-color: ">
			<a class="sq-item-anchor" href=""> 
				<img class="sq-item-anchor-cover" src="../images/section_image8.png" width="100" height="100"> 
				<span class="sq-item-anchor-title" style="font-family: sans-serif; font-size: 21px;">예매변경/취소 안내</span>
			</a></li>
			<li class="sq-item sq-item-wide" style="background-color: ">
				<a class="sq-item-anchor" href=""> 
				<img class="sq-item-anchor-cover" src="images/cinnamon.png"> 
				<span class="sq-item-anchor-title" style="font-family: sans-serif;">고객의 소리</span>
			</a></li>
			<li class="sq-item" style="background-color: ">
			<a class="sq-item-anchor" href=""> 
				<img class="sq-item-anchor-cover" src="../images/section_image6.png" width="100" height="100"> 
				<span class="sq-item-anchor-title" style="font-family: sans-serif;">현금영수증 안내</span>
			</a></li>
		</ul>
	</div>
</body>
</html>