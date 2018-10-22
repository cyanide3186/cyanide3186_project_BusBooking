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

<link rel="stylesheet" type="text/css"
	href="semantic/components/reset.css">
<link rel="stylesheet" type="text/css"
	href="semantic/components/site.css">
<link rel="stylesheet" type="text/css"
	href="semantic/components/container.css">
<link rel="stylesheet" type="text/css"
	href="semantic/components/grid.css">
<link rel="stylesheet" type="text/css"
	href="semantic/components/header.css">
<link rel="stylesheet" type="text/css"
	href="semantic/components/image.css">
<link rel="stylesheet" type="text/css"
	href="semantic/components/menu.css">
<link rel="stylesheet" type="text/css"
	href="semantic/components/divider.css">
<link rel="stylesheet" type="text/css"
	href="semantic/components/list.css">
<link rel="stylesheet" type="text/css"
	href="semantic/components/segment.css">
<link rel="stylesheet" type="text/css"
	href="semantic/components/dropdown.css">
<link rel="stylesheet" type="text/css"
	href="semantic/components/icon.css">

<link rel="stylesheet" type="text/css" href="semantic/semantic.css">
<link rel="stylesheet" type="text/css" href="css/style.css">

<script src="https://code.jquery.com/jquery-3.1.1.min.js"
	integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
	crossorigin="anonymous"></script>
<script src="semantic/semantic.js"></script>
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
				src="assets/logo.png" width="100px" height="50px">

			</a> <a href="#" class="item">Home</a>

			<div class="ui simple dropdown item">
				<span> 예매</span><i class="dropdown icon"></i>
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
				<span>고객지원</span> <i class="dropdown icon"></i>
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

		</div>
	</div>


	<div class="wrapper">
		<ul class="sq clearfix">
			<li class="sq-item sq-item-large"><a class="sq-item-anchor"
				href=""> <img class="sq-item-anchor-cover"
					src="images/crepe.png"> <%-- <jsp:include page="test.jsp"></jsp:include>  --%>
					<span class="sq-item-anchor-title">Crepe</span>
			</a></li>
			<li class="sq-item"><a class="sq-item-anchor" href=""> <img
					class="sq-item-anchor-cover" src="images/cookie.png"> <span
					class="sq-item-anchor-title">Cookie</span>
			</a></li>
			<li class="sq-item"><a class="sq-item-anchor" href=""> <img
					class="sq-item-anchor-cover" src="images/choco.png"> <span
					class="sq-item-anchor-title">Choco</span>
			</a></li>
			<li class="sq-item"><a class="sq-item-anchor" href=""> <img
					class="sq-item-anchor-cover" src="images/cream.png"> <span
					class="sq-item-anchor-title">Cream</span>
			</a></li>
			<li class="sq-item sq-item-long sq-item-float-right"><a
				class="sq-item-anchor" href=""> <img
					class="sq-item-anchor-cover" src="images/cake.png"> <span
					class="sq-item-anchor-title">Cake</span>
			</a></li>
			<li class="sq-item"><a class="sq-item-anchor" href=""> <img
					class="sq-item-anchor-cover" src="images/candy.png"> <span
					class="sq-item-anchor-title">Candy</span>
			</a></li>
			<li class="sq-item"><a class="sq-item-anchor" href=""> <img
					class="sq-item-anchor-cover" src="images/coke.png"> <span
					class="sq-item-anchor-title">Coke</span>
			</a></li>
			<li class="sq-item"><a class="sq-item-anchor" href=""> <img
					class="sq-item-anchor-cover" src="images/cheeze.png"> <span
					class="sq-item-anchor-title">Cheeze</span>
			</a></li>
			<li class="sq-item sq-item-wide"><a class="sq-item-anchor"
				href=""> <img class="sq-item-anchor-cover"
					src="images/cinnamon.png"> <span class="sq-item-anchor-title">Cinnamon</span>
			</a></li>
			<li class="sq-item"><a class="sq-item-anchor" href=""> <img
					class="sq-item-anchor-cover" src="images/chili.png"> <span
					class="sq-item-anchor-title">Chili</span>
			</a></li>
		</ul>
	</div>

	<div class="ui inverted vertical footer segment">
		<div class="ui center aligned container">
			<div class="ui stackable inverted divided grid">
				<div class="three wide column">
					<h4 class="ui inverted header">Group 1</h4>
					<div class="ui inverted link list">
						<a href="#" class="item">Link One</a> <a href="#" class="item">Link
							Two</a> <a href="#" class="item">Link Three</a> <a href="#"
							class="item">Link Four</a>
					</div>
				</div>
				<div class="three wide column">
					<h4 class="ui inverted header">Group 2</h4>
					<div class="ui inverted link list">
						<a href="#" class="item">Link One</a> <a href="#" class="item">Link
							Two</a> <a href="#" class="item">Link Three</a> <a href="#"
							class="item">Link Four</a>
					</div>
				</div>
				<div class="three wide column">
					<h4 class="ui inverted header">Group 3</h4>
					<div class="ui inverted link list">
						<a href="#" class="item">Link One</a> <a href="#" class="item">Link
							Two</a> <a href="#" class="item">Link Three</a> <a href="#"
							class="item">Link Four</a>
					</div>
				</div>
				<div class="seven wide column">
					<h4 class="ui inverted header">Footer Header</h4>
					<p>Extra space for a call to action inside the footer that
						could help re-engage users.</p>
				</div>
			</div>
			<div class="ui inverted section divider"></div>
			<img src="assets/images/logo.png" class="ui centered mini image">
			<div class="ui horizontal inverted small divided link list">
				<a class="item" href="#">Site Map</a> <a class="item" href="#">Contact
					Us</a> <a class="item" href="#">Terms and Conditions</a> <a
					class="item" href="#">Privacy Policy</a>
			</div>
		</div>
	</div>
</body>

</html>

