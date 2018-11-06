<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/style.css?c">
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
	margin: 80px;
}
.sq-item-anchor {

	/*그 부모안에서 절대 좌표형식 */
	position: absolute;
	left: 0;
	right: 0;
	top: 0;
	bottom: 0;
	margin: 1rem;
	padding: 2rem;
	font-size:2rem;
	opacity: 1;
	font-family: 'Roboto Slab', serif;
	border-radius:10px;
	border: 0px solid white;
}
.sq-item-anchor::after {
	content: ' ';
	position: absolute;
	left: 0;
	right: 0;
	top: 0;
	bottom: 0;
}

 .sq-item-anchor:hover {
    z-index: 30;
    border-width: 5px;
}


</style>
</head>
<body>
<!-- <h1 style="text-align: center;">메인 화면</h1>
<img alt="" src="../image/spongebob.png" width="200" height="200"
		onclick="location.href='../main/index.jsp'" 
			style="cursor: pointer"> -->
<div class="wrapper">
		<ul class="sq clearfix">
			<li class="sq-item sq-item-large"><a class="sq-item-anchor"
				href=""> <img class="sq-item-anchor-cover"
					src="images/crepe.png"> <%-- <jsp:include page="test.jsp"></jsp:include>  --%>
					<span class="sq-item-anchor-title" style="font-family: sans-serif; font: 30px; ">승차권 예매</span>
			</a></li>
			<li class="sq-item"><a class="sq-item-anchor" href=""> <img
					class="sq-item-anchor-cover" src="images/cookie.png"> <span
					class="sq-item-anchor-title" style="font-family: sans-serif;">노선/운행정보</span>
			</a></li>
			<li class="sq-item"><a class="sq-item-anchor" href=""> <img
					class="sq-item-anchor-cover" src="images/choco.png"> <span
					class="sq-item-anchor-title" style="font-family: sans-serif; font-size: 20px;">승차권 예매 안내</span>
			</a></li>
			<li class="sq-item"><a class="sq-item-anchor" href=""> <img
					class="sq-item-anchor-cover" src="images/cream.png"> <span
					class="sq-item-anchor-title" style="font-family: sans-serif; font-size: 20px;">예매조회/취소/변경</span>
			</a></li>
			<li class="sq-item sq-item-long sq-item-float-right"><a
				class="sq-item-anchor" href=""> <img
					class="sq-item-anchor-cover" src="images/cake.png"> <span
					class="sq-item-anchor-title" style="font-family: sans-serif;">Cake</span>
			</a></li>
			<li class="sq-item"><a class="sq-item-anchor" href=""> <img
					class="sq-item-anchor-cover" src="../images/section_image2." width="100" height="100"> <span
					class="sq-item-anchor-title" style="font-family: sans-serif;">터미널 안내</span>
			</a></li>
			<li class="sq-item"><a class="sq-item-anchor" href=""> <img
					class="sq-item-anchor-cover" src="../images/section_image1." width="100" height="100"> <span
					class="sq-item-anchor-title" style="font-family: sans-serif;">운수사 안내</span>
			</a></li>
			<li class="sq-item"><a class="sq-item-anchor" href=""> <img
					class="sq-item-anchor-cover" src="images/cheeze.png"> <span
					class="sq-item-anchor-title" style="font-family: sans-serif; font-size: 20px;">예매변경/취소 안내</span>
			</a></li>
			<li class="sq-item sq-item-wide"><a class="sq-item-anchor"
				href=""> <img class="sq-item-anchor-cover"
					src="images/cinnamon.png"> 
					<span class="sq-item-anchor-title" style="font-family: sans-serif;">공지사항</span>
			</a></li>
			<li class="sq-item"><a class="sq-item-anchor" href=""> <img
					class="sq-item-anchor-cover" src="images/chili.png"> <span
					class="sq-item-anchor-title" style="font-family: sans-serif;">현금영수증 안내</span>
			</a></li>
		</ul>
	</div>
</body>
</html>