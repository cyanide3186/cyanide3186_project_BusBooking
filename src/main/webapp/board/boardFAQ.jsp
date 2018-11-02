<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/base.css">
<script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		
		$("#logo1").click(function() {
			$("#tab2,#tab3,#tab4,#tab5").hide();
			$("#tab2>div,#tab3>div,#tab4>div,#tab5>div").hide();
			$("div#tab1").fadeIn();
		});

		$("#tab1 > a:eq(0)").click(function() {
			$("#tab1 > div:eq(0)").slideToggle();
			//$(this).children("div#answer").slideToggele();
		});
			$("#tab1 > a:eq(1)").click(function() {
			$("#tab1 > div:eq(1)").slideToggle();
		});	
			
			$("#tab1 > a:eq(2)").click(function() {
			$("#tab1 > div:eq(2)").slideToggle();
		});
			$("#tab1 > a:eq(3)").click(function() {
			$("#tab1 > div:eq(3)").slideToggle();
		});
			$("#tab1 > a:eq(4)").click(function() {
			$("#tab1 > div:eq(4)").slideToggle();
		});
			$("#tab1 > a:eq(5)").click(function() {
			$("#tab1 > div:eq(5)").slideToggle();
		});
			$("#tab1 > a:eq(6)").click(function() {
			$("#tab1 > div:eq(6)").slideToggle();
		});
			$("#tab1 > a:eq(7)").click(function() {
			$("#tab1 > div:eq(7)").slideToggle();
		});
			$("#tab1 > a:eq(8)").click(function() {
			$("#tab1 > div:eq(8)").slideToggle();
		});

		//});
	});
	$(function() {
		$("#logo2").click(function() {
			$("#tab1,#tab3,#tab4,#tab5").hide();
			$("#tab1>div,#tab3>div,#tab4>div,#tab5>div").hide();
			$("div#tab2").fadeIn();
			
			$("#tab2 > a:eq(0)").click(function() {
			$("#tab2 > div:eq(0)").slideToggle();
			});
			
			$("#tab2 > a:eq(1)").click(function() {
			$("#tab2 > div:eq(1)").slideToggle();
			});
		});
	});
	
	$(function() {
		$("#logo3").click(function() {
			$("#tab1,#tab2,#tab4,#tab5").hide();
			$("#tab1>div,#tab2>div,#tab4>div,#tab5>div").hide();
			$("div#tab3").fadeIn();
			
			$("#tab3 > a:eq(0)").click(function() {
			$("#tab3 > div:eq(0)").slideToggle();
			});
			
			$("#tab3 > a:eq(1)").click(function() {
			$("#tab3 > div:eq(1)").slideToggle();
			});
		});
	});
	$(function() {
		$("#logo4").click(function() {
			$("#tab1,#tab2,#tab3,#tab5").hide();
			$("#tab1>div,#tab2>div,#tab3>div,#tab5>div").hide();
			$("div#tab4").fadeIn();
			
			$("#tab4 > a:eq(0)").click(function() {
			$("#tab4 > div:eq(0)").slideToggle();
			});
			
			$("#tab4 > a:eq(1)").click(function() {
			$("#tab4 > div:eq(1)").slideToggle();
			});
		});
	});
	
	$(function() {
		$("#logo5").click(function() {
			$("#tab1,#tab2,#tab3,#tab4").hide();
			$("#tab1>div,#tab2>div,#tab3>div,#tab4>div").hide();
			$("div#tab5").fadeIn();
			
			$("#tab5 > a:eq(0)").click(function() {
			$("#tab5 > div:eq(0)").slideToggle();
			//$(this).children("div#answer").slideToggele();
			});
			
			$("#tab5 > a:eq(1)").click(function() {
			$("#tab5 > div:eq(1)").slideToggle();
			});
		});
	});
</script>
<style type="text/css">
a {text-decoration: none; cursor: pointer;}
#answer {display: none;}
#question {
	font-weight: 900;
	text-align: center;
}
#tab2,#tab3,#tab4,#tab5 {display: none; margin: 20px;}
input {
	width: 120px;
	height: 50px;
	margin-left: 43px;
	margin-right: 70px;
}
.clicked{background-color: white;}
table {
	margin-top: 40px;
	margin-bottom: 30px;
	cursor: pointer;
}
#logo {
	margin-left: 150px;
}
#menulogo {
	position: relative;
	top: -10px;
}
table#menu {
	margin-left: 85px;
	margin-top: 20px;
	text-align: center;
	font-size: 25px;
	font-weight: 700;
	cursor: pointer;
}
#logo1:hover {background-color: #FAC87D; text-decoration: none;}
#logo2:hover {background-color: #FAC87D; text-decoration: none;}
#logo3:hover {background-color: #FAC87D; text-decoration: none;}
#logo4:hover {background-color: #FAC87D; text-decoration: none;}
#logo5:hover {background-color: #FAC87D; text-decoration: none;}
</style> 
</head>
<body>
<div class="wrapper">
<p id="notice_txt" >FAQ</p>
<hr id="headline">
	<form id="form">
	
	<table id="menu" cellspacing="18">
		<tr>
			<td id="logo1" width="200" height="70">
			<img src="../images/logo1.png" width="60" height="60">
			<a id="menulogo">승차권 예약</a></td>
			<td id="logo2" width="180">
			<img src="../images/logo2.png" width="60" height="60">
			<a id="menulogo">홈티켓</a></td>
			<td id="logo3" width="180">
			<img src="../images/logo3.png" width="60" height="60">
			<a id="menulogo">대금결제</a></td>
			<td id="logo4" width="220">
			<img src="../images/logo4.png" width="60" height="60">
			<a style="font-size: 23px; font-weight: 900;" id="menulogo">홈페이지 예약</a></td>
			<td id="logo5" width="180">
			<img src="../images/logo5.png" width="60" height="60">
			<a id="menulogo">기타</a></td>
		</tr>
	</table>
	</form>

	<div id="tab1">
		<img src="../images/qna.png" width="35" height="35">
			<a id="question">승차권 예약은 언제까지 가능한가요? </a><br><hr>
		<div id="answer" style="margin-left: 20px;" >
		<img src="../images/line.png" width="20" height="20">
		시외버스 승차권의 예약기간은 특별히 정해져 있는 것은 아니고, 해당 노선의 배차정보가 입력된 일자까지 가능합니다.<br>
		배차정보의 입력은 출발지 터미널에서 처리하고 있으며, 일반적으로 현재일을 기준으로 1개월 이후의 배차정보가 입력되어 운영되고 있습니다.<br>
		"조회 가능한 내역이 없습니다." 고 나오면 출발지 터미널로 문의하시기 바랍니다. <hr></div>

		<img src="../images/qna.png" width="35" height="35">
			<a id="question">승차권 예약시 지정한 좌석과 실제 이용 시 좌석이 다른 경우는 왜 그런가요? </a><br><hr>
		<div id="answer" style="margin-left: 20px;" >
		<img src="../images/line.png" width="20" height="20">
		예약시 나오는 좌석배치도는 대부분의 시외버스가 갖고 있는 일반적인 형태의 좌석배치도입니다.<br>
		버스의 종류에 따라 좌우측이 바뀌는 경우 등으로 인해 예약시 좌석배치도와 실제 좌석배치도가 다를 수도 있습니다. <hr></div>
		
		<img src="../images/qna.png" width="35" height="35">
			<a id="question">승차권을 예약한 경우 발권은 어떻게 하나요? </a><br><hr>
		<div id="answer" style="margin-left: 20px;" >
		<img src="../images/line.png" width="20" height="20">
		터미널 매표창구에 예약한 신용카드를 제시하고 예약한 사항이 있다고 말씀하시면 됩니다.<br>
		출발 당일뿐만 아니라 그 이전에도 출발시간 이전이면 터미널 매표업무 시간내 언제든지 발권이 가능합니다.<br>
		매표업무 시간은 터미널 별로 차이가 있을 수 있으니 해당 터미널로 문의하시기 바랍니다. <hr></div>
		
		<img src="../images/qna.png" width="35" height="35">
			<a id="question">신용카드를 지참하지 않고 터미널 매표창구에서 예약한 승차권을 발권받을 수 있나요? </a><br><hr>
		<div id="answer" style="margin-left: 20px;" >
		<img src="../images/line.png" width="20" height="20">
		예약할때 사용하신 신용카드 번호를 매표창구에 제시하시거나 생년월일, 휴대폰 번호로 예매 내역 조회 후 발권이 가능합니다.<br>
		예약한 카드를 분실하거나 재발급 받은 경우에도 동일합니다. <hr></div>
		
		<img src="../images/qna.png" width="35" height="35">
			<a id="question">계좌이체로 예약이 가능한가요? </a><br><hr>
		<div id="answer" style="margin-left: 20px;" >
		<img src="../images/line.png" width="20" height="20">
		현재 본 홈페이지에서는 계좌이체를 통한 예약은 불가능합니다.<br>
		계좌이체 예약 건이 적은 금융기관의 경우 예약사항 취소 시 취소대금이 입금되기까지 수일이 소요되는 경우가 많아 적잖은 고객불편을 초래할 수 있습니다. <hr></div>
		
		<img src="../images/qna.png" width="35" height="35">
			<a id="question">ARS 또는 상담원과의 전화로 예약이 가능한가요? </a><br><hr>
		<div id="answer" style="margin-left: 20px;" >
		<img src="../images/line.png" width="20" height="20">
		ARS 또는 상담원과의 전화로는 예약을 하실 수 없습니다.<br>
		예약은 인터넷으로 본인이 직접하셔야 합니다. <hr></div>
		
		<img src="../images/qna.png" width="35" height="35">
			<a id="question">승차권 예약하고 변경, 취소했는데 카드사에서는 취소가 확인되지 않습니다.</a><br><hr>
		<div id="answer" style="margin-left: 20px;" >
		<img src="../images/line.png" width="20" height="20">
		승차권 예약취소 시 당일예약 후 당일전체 취소시에만 실시간 취소가 이루어지고 그 외의 경우에는 실시간으로 이루어지지는 않으며, <br>
		카드사에 따라 주말을 제외하고 영업일 기준 2~3일 후에 처리가 됩니다. <hr></div>
		
		<img src="../images/qna.png" width="35" height="35">
			<a id="question">예약을 하다가 오류가 발생해서 다시 예약을 하는데 선택했던 좌석이 예약된 좌석처럼 선택할 수 없도록 되어있는데 예약이 된 건가요? </a><br><hr>
		<div id="answer" style="margin-left: 20px;" >
		<img src="../images/line.png" width="20" height="20">
		예약 시 좌석선택 Step에서 좌석을 선택하면 동시에 같은 좌석을 예약하는 것을 방지하기 위해서 <br>
		예약완료 여부와 무관하게 해당 좌석을 5분간 막아두는 기능(좌석선점)이 적용되어 있습니다.  <br>
		꼭 해당 좌석으로 예약하셔야되면 5분 정도 후에 시도하세요. <br>
		예약완료 여부는 예약조회 메뉴를 통해 확인하실 수 있습니다. <hr></div>
	</div>
	
	<div id="tab2">
		<img src="../images/qna.png" width="35" height="35">
			<a id="question">승차권을 예약했는데 홈티켓이 출력되지 않은 경우에는 어떻게 하나요?</a><br><hr>
		<div id="answer" style="margin-left: 20px;" >
		<img src="../images/line.png" width="20" height="20">
		홈티켓 발권 시 티켓이 정상적으로 출력되지 않은 경우에는 횟수에 제한 없이 홈티켓 재발행을 시도할 수 있습니다.<br>
		그럼에도 홈티켓이 출력되지 않은 경우에는 홈티켓 발권에 사용한 카드를 지참하고 터미널 매표창구에 홈티켓을 발권받지 못했다고 말씀하시면 티켓을 재발행해드립니다.<hr></div>
		
		<img src="../images/qna.png" width="35" height="35">
			<a id="question">홈티켓 발권 후 사용하지 못한 승차권의 환불은 어떻게 하나요?</a><br><hr>
		<div id="answer" style="margin-left: 20px;" >
		<img src="../images/line.png" width="20" height="20">
		승차일로부터 2일 이내에 홈티켓을 지참하고 출발지 터미널 매표창구로 방문하시면 됩니다.<hr></div>
	</div>
	
	<div id="tab3">
		<img src="../images/qna.png" width="35" height="35">
			<a id="question">예약도중 시스템 에러 등의 이유로 예약이 안 된 것으로 알고 있었는데 나중에 부도위약금이 청구되었습니다.</a><br><hr>
		<div id="answer" style="margin-left: 20px;" >
		<img src="../images/line.png" width="20" height="20">
		본 홈페이지를 통한 시외버스 승차권 예약은 실시간 온라인 처리가 되므로 승차권 예약 시 회선장애나 기타 통신장애로 인해, <br>
		예약성공여부를 확인하지 못한 경우에는 반드시 예약조회 메뉴를 통해 예약성공여부를 확인하셔야 합니다.<br>
		본인이 확인하지 않은 사항에 대해 부과된 부도위약금에 대해서는 책임지지 않습니다. <hr></div>

		<img src="../images/qna.png" width="35" height="35">
			<a id="question">시스템 장애로 인해 예약 취소 또는 승차권발권을 하지 못해서 발생한 수수료에 대한 처리는 어떻게 되나요? </a><br><hr>
		<div id="answer" style="margin-left: 20px;" >
		<img src="../images/line.png" width="20" height="20">
		먼저 해당 건과 관련된 로그데이터를 분석하고 시스템장애로 인하여 취소수수료 또는 부도위약금이 청구된 것으로 판명되면,<br>
		 부당하게 청구된 수수료에 대해서는 책임지고 보전해 드립니다.<hr></div>
	</div>

 	<div id="tab4">
		<img src="../images/qna.png" width="35" height="35">
			<a id="question">홈페이지 이용 시 페이지오류(스크립트 오류)가 발생합니다. </a><br><hr>
		<div id="answer" style="margin-left: 20px;" >
		<img src="../images/line.png" width="20" height="20">
		페이지 오류(스크립트 오류)가 발생하는 것은 웹브라우저의 문제입니다.<br>
		인터넷 익스플로어의 경우 가끔식 원인을 알 수 없는 페이지 오류가 발생하는데 이런 경우에는 현재 실행중인 창을 닫은 후에 다시 접속해 보시기 바랍니다. <hr></div>

		<img src="../images/qna.png" width="35" height="35">
			<a id="question">현재까지 본인이 이용한 내역을 조회할 수 있는 방법은 없나요? </a><br><hr>
		<div id="answer" style="margin-left: 20px;" >
		<img src="../images/line.png" width="20" height="20">
		본 홈페이지는 회원가입을 받고 있지 않습니다.<br>
		따라서 현재까지 본인이 이용한 내역을 조회할 수 있는 메뉴는 없으며,<br>
		해당 내역이 꼭 필요하신 경우에는 고객센터로 연락을 주시면 해당 카드번호로 조회한 내역을 보내드릴 수 있습니다. <hr></div>
	</div> 

	<div id="tab5">
		<img src="../images/qna.png" width="35" height="35">
			<a id="question">버스구분, 운행시간에 따라 소요시간에 차이가 있나요?</a><br><hr>
		<div id="answer" style="margin-left: 20px;" >
		<img src="../images/line.png" width="20" height="20">
		버스구분에 따른 소요시간의 차이는 거의 없습니다.<br>
		야간 운행의 경우 규정속도보다 10% 감속운행을 하므로 소요시간이 길어질 수 있습니다. <hr></div>

		<img src="../images/qna.png" width="35" height="35">
			<a id="question">임시배차의 운행은 어떻게 결정되나요? </a><br><hr>
		<div id="answer" style="margin-left: 20px;" >
		<img src="../images/line.png" width="20" height="20">
		임시배차는 해당 터미널에서 이용승객폭주, 사고발생, 차량고장, 기상이변에 의한 연착, 지연 등이 발생할 경우에 <br>
		정규배차 이외에 터미널 차고에 보관중인 차량을 바로 투입하는 것을 말합니다. <br>
		이러한 임시배차는 운수업자가 상황에 따라 결정하며 대부분 출발당일에 결정됩니다. <br>
		이에 대한 자세한 사항은 해당 터미널로 문의하시기 바랍니다. <hr></div>

	</div>
	<hr id="footline">
	</div>

</div>

<!-- 짤림방지용 텍스트 -->

</html>
</body>
