<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>승차권 예매</title>

<link rel="stylesheet" type="text/css"
	href="/Project_BusBooking/css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="/Project_BusBooking/css/daterangepicker.css" />
<link rel="stylesheet" type="text/css"
	href="/Project_BusBooking/css/base.css">
<link rel="stylesheet" type="text/css"
	href="/Project_BusBooking/semantic/semantic.css">
<link rel="stylesheet" type="text/css"
	href="/Project_BusBooking/css/calendar.min.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"
	integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
	crossorigin="anonymous"></script>
<script src="/Project_BusBooking/semantic/semantic.js"></script>

</head>


<script type="text/javascript">
	$(function() {

	});
</script>
<style type="text/css">
p {
	padding: 3rem;
	text-align: left;
}

header {
	height: 100px;
	text-align: center;
}

.level {
	display: inline-block;
	height: 100px;
	vertical-align: middle;
}

li {
	margin: 0 0;
	list-style: none;
}

.level>li {
	margin: 0 0;
	font-size: 1.5rem;
	float: left;
	margin-right: 1rem;
	border: 1px solid white;
	border-radius: 20px;
	padding: 1px 2px;
	color: white;
	vertical-align: middle;
	background-color: #0489B1;
	line-height: 1.2;
	list-style: none;
	line-height: 1.2;
}

#mainli {
	list-style: none;
	margin: 0 0;
	font-size: 1.5rem;
	float: left;
	margin-right: 1rem;
	line-height: 50px;
	border: 3px solid yellow;
	border-radius: 20px;
	background-color: #0489B1;
}

table {
	margin-top: 40px;
	background-color:
}

h1 {
	border-bottom: 2px solid #01A9DB;
}

div#page_button {
	margin: 50px auto;
	width: 30%;
}

div#page_button button {
	padding: 5px;
	width: 50%;
	height: 100%;
}

#menu1 {
	float: left;
	width: 350px;
}

#menu2 {
	margin-left: 200px;
	float: left;
	width: 400px;
	height: 300px;
}

}
#menu3 {
	margin-top: 670px;
	clear:both;
	width: 340px;
}

.seat {
	display: block;
	width: 500px;
}

.seat li {
	position: relative;
	float: left;
}

.buy_area>ul>li {
	float: left;
	vertical-align: middle;
	width: 340px;
}



.seat ul span {
	position: relative;
	right: 40px;
	top: -10px;
}

.seat .line1 {
	position: absolute;
	left: 973px;
	top: 650px;
}

.seat>ul {
	position: absolute;
	left: 820px;
	top: 900px;
}
</style>
</head>
<body>

	<div class="wrapper">

		<div>
			<div class="column">
				<header>
					<h1>승차권 예매</h1>
					<ul class="level">
						<li>1.기초정보 입력</li>
						<li>2.배차 조회</li>
						<li id="mainli">3.매수 및 좌석 선택</li>
						<li>4.카드 정보 입력</li>
					</ul>
					<hr>
				</header>
			</div>

		</div>
		<div>

			<form action="../booking/booking_bus.do" method="post"
				name="bus_input">
				<div class="column">
					<div class="ui top attached tabular menu">
						<div class="active item">가는편</div>

					</div>
					<div class="ui bottom attached active tab segment" align="center">
						<table border="1px solid black">
							<tr>
								<td width="500px" height="100px">가는편</td>
								<td width="500px">가는날짜</td>
							</tr>
						</table>
					</div>
					<div id="buy_area">
						<ul>
							<li id="menu1"><span>매수 선택</span>
								<div>
									<table class="ui basic table">
										<thead>
											<tr>
												<td>어른</td>
												<td><select name="adult" class="ui dropdown" id="adult">
														<option value="0">0</option>
														<option value="1">1</option>
														<option value="2">2</option>
														<option value="3">3</option>
														<option value="4">4</option>
														<option value="5">5</option>
														<option value="6">6</option>
														<option value="7">7</option>
														<option value="8">8</option>
														<option value="9">9</option>
														<option value="10">10</option>
												</select></td>
											</tr>
											<tr>
												<td>청소년</td>
												<td><select name="teen" class="ui dropdown" id="teen">
														<option value="0">0</option>
														<option value="1">1</option>
														<option value="2">2</option>
														<option value="3">3</option>
														<option value="4">4</option>
														<option value="5">5</option>
														<option value="6">6</option>
														<option value="7">7</option>
														<option value="8">8</option>
														<option value="9">9</option>
														<option value="10">10</option>
												</select></td>
											</tr>
											<tr>
												<td>어린이</td>
												<td><select name="kid" class="ui dropdown" id="kid">
														<option value="0">0</option>
														<option value="1">1</option>
														<option value="2">2</option>
														<option value="3">3</option>
														<option value="4">4</option>
														<option value="5">5</option>
														<option value="6">6</option>
														<option value="7">7</option>
														<option value="8">8</option>
														<option value="9">9</option>
														<option value="10">10</option>
												</select></td>
											</tr>
										</thead>
									</table>
								</div></li>
							<li id="menu2"><span>좌석 선택</span>
								<div class="seat">
									<img src="../images/bg_seat.gif">
									<ul class="line1">
										<li><a href="#"> <img src="../images/seat_off.png">
												<span>1</span>
										</a></li>
										<li><a href="#"> <img src="../images/seat_off.png">
												<span>2</span>
										</a></li>
										<li><a href="#"> <img src="../images/seat_off.png">
												<span>3</span>
										</a></li>
										<li><a href="#"> <img src="../images/seat_off.png">
												<span>4</span>
										</a></li>
									</ul>
									<ul class="line2">
										<li><a href="#"> <img src="../images/seat_off.png">
												<span>5</span>
										</a></li>
										<li><a href="#"> <img src="../images/seat_off.png">
												<span>6</span>
										</a></li>
										<li><a href="#"> <img src="../images/seat_off.png">
												<span>7</span>
										</a></li>
										<li><a href="#"> <img src="../images/seat_off.png">
												<span>8</span>
										</a></li>
									</ul>
									<ul class="line3">
										<li><a href="#"> <img src="../images/seat_off.png">
												<span>9</span>
										</a></li>
										<li><a href="#"> <img src="../images/seat_off.png">
												<span>10</span>
										</a></li>
										<li><a href="#"> <img src="../images/seat_off.png">
												<span>11</span>
										</a></li>
										<li><a href="#"> <img src="../images/seat_off.png">
												<span>12</span>
										</a></li>
									</ul>
									<ul class="line4">
										<li><a href="#"> <img src="../images/seat_off.png">
												<span>13</span>
										</a></li>
										<li><a href="#"> <img src="../images/seat_off.png">
												<span>14</span>
										</a></li>
										<li><a href="#"> <img src="../images/seat_off.png">
												<span>15</span>
										</a></li>
										<li><a href="#"> <img src="../images/seat_off.png">
												<span>16</span>
										</a></li>
									</ul>
									<ul class="line5">
										<li><a href="#"> <img src="../images/seat_off.png">
												<span>17</span>
										</a></li>
										<li><a href="#"> <img src="../images/seat_off.png">
												<span>18</span>
										</a></li>
										<li><a href="#"> <img src="../images/seat_off.png">
												<span>19</span>
										</a></li>
										<li><a href="#"> <img src="../images/seat_off.png">
												<span>20</span>
										</a></li>
									</ul>
									<ul class="line6">
										<li><a href="#"> <img src="../images/seat_off.png">
												<span>21</span>
										</a></li>
										<li><a href="#"> <img src="../images/seat_off.png">
												<span>22</span>
										</a></li>
										<li><a href="#"> <img src="../images/seat_off.png">
												<span>23</span>
										</a></li>
										<li><a href="#"> <img src="../images/seat_off.png">
												<span>24</span>
										</a></li>
									</ul>
									<ul class="line7">
										<li><a href="#"> <img src="../images/seat_off.png">
												<span>25</span>
										</a></li>
										<li><a href="#"> <img src="../images/seat_off.png">
												<span>26</span>
										</a></li>
										<li><a href="#"> <img src="../images/seat_off.png">
												<span>27</span>
										</a></li>
										<li><a href="#"> <img src="../images/seat_off.png">
												<span>28</span>
										</a></li>
									</ul>
									<ul class="line8">
										<li><a href="#"> <img src="../images/seat_off.png">
												<span>29</span>
										</a></li>
										<li><a href="#"> <img src="../images/seat_off.png">
												<span>30</span>
										</a></li>
										<li><a href="#"> <img src="../images/seat_off.png">
												<span>31</span>
										</a></li>
										<li><a href="#"> <img src="../images/seat_off.png">
												<span>32</span>
										</a></li>
									</ul>
									<ul class="line9">
										<li><a href="#"> <img src="../images/seat_off.png">
												<span>33</span>
										</a></li>
										<li><a href="#"> <img src="../images/seat_off.png">
												<span>34</span>
										</a></li>
										<li><a href="#"> <img src="../images/seat_off.png">
												<span>35</span>
										</a></li>
										<li><a href="#"> <img src="../images/seat_off.png">
												<span>36</span>
										</a></li>
									</ul>
									<ul class="line10">
										<li><a href="#"> <img src="../images/seat_off.png">
												<span>37</span>
										</a></li>
										<li><a href="#"> <img src="../images/seat_off.png">
												<span>38</span>
										</a></li>
										<li><a href="#"> <img src="../images/seat_off.png">
												<span>39</span>
										</a></li>
										<li><a href="#"> <img src="../images/seat_off.png">
												<span>40</span>
										</a></li>
									</ul>
								</div></li>
							<li id="menu3">
								<table border="1px" style="width: 400px;height: 500px;">
								
									<tbody>
										<tr>
											<th colspan="2"><span>선택 매수 및 금액</span></th>
										</tr>
										<tr>
											<th rowspan="3">가는편</th>
											<td>어른 <span class="adult"></span>명</td>
										</tr>
										<tr>

											<td>청소년 <span class="teen"></span>명</td>
										</tr>
										<tr>
											<td>어린이 <span class="kids"></span>명</td>
										</tr>
										<tr>
											<th>합계</th>
											<td><span class="total"></span>명</td>
										</tr>
									</tbody>
								</table></li>
						</ul>

					</div>

				</div>

			</form>




		</div>
	</div>

	</div>

</body>
</html>