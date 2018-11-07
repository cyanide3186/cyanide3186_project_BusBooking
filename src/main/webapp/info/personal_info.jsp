<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/base.css">
<style type="text/css">
#info_image{
	align-content: center;
	border-bottom : 1px solid gray;
	border-top : 1px solid gray;
	border-left: 1px solid gray;
	border-right: 1px dotted gray;
	border-radius: 15px 0px 0px 15px;
} 
#info_content{
	border-bottom : 1px solid gray;
	border-top : 1px solid gray;
	border-right: 1px solid gray;
	border-radius: 0px 15px 15px 0px;
}
#info { margin-left: 150px;}
.form {
	margin-top: 30px;
	margin-bottom: 40px;
	align-content: center;
	margin-left: 30px;
}
#notice_txt {
	text-align: center;
	font-size: 35px;
	font-weight: bold;
}
.num {
	font-weight: 900;
	font-size: 20px;
}
.content {font-size: 15px;}
hr {margin: 10px;}
#line{ 
	border-bottom: 1px solid #ccc;
	border-right: 1px solid #ccc;
	border-top: 1px solid #ccc;
}
table {text-align: center;}
</style>
</head>
<body>
<div class="wrapper" >
	<p id="notice_txt">개인정보 처리방침</p>
	<hr id="headline">
	<form>
		<div class="form">
		<p class="num">1. 수집하는 개인정보 항목</p>
		<p class="content">㈜한국스마트카드(이하 ‘회사’라합니다)는 시외버스 승차권 예매, 부가서비스 제공 및 고객상담 등을 위해 아래와 같은 개인정보를 수집하고 있습니다.<br>
		▶ 승차권 예매 관련: (필수) 신용카드번호ㆍ유효기간ㆍ비밀번호 앞 2자리, 주민등록번호 앞 6자리<br>
		▶ 예매 조회 관련: (필수) 생년월일 6자리, 휴대전화번호, 로그인 비밀번호 4자리<br></p>
		<hr>
		<p class="num">2. 개인정보 수집방법</p>
		<p class="content">회사는 다음과 같은 방법으로 개인정보를 수집합니다.<br>
		▶ 회사의 홈페이지(승차권 예매, 상담 게시판 등)를 통한 온라인 상에서의 수집</p>
		<hr>
		<p class="num">3. 개인정보 수집 및 이용목적</p>
		<p class="content">회사는 다음과 같은 방법으로 개인정보를 수집합니다.<br>
		▶ 회사의 홈페이지(승차권 예매, 상담 게시판 등)를 통한 온라인 상에서의 수집</p>
		<hr>
		<p class="num">2. 개인정보 수집방법</p>
		<p class="content">회사는 다음과 같은 목적을 위하여 이용자의 개인정보를 수집하며, 그 목적 내에서만 수집한 개인정보를 이용하고 있습니다.<br>
		▶ 승차권의 예매 및 결제대금의 정산<br>
		▶ 분쟁 조정을 위한 기록보존, 이용자의 민원처리<br>
		▶ 서비스 관련 상담, 서비스 변경 또는 공지사항 등의 안내<br>
		▶ 서비스 관련 마케팅 및 프로모션 관련 정보의 전달</p>
		<hr>
		<p class="num">4. 개인정보 제3자 제공</p>
		<p class="content">회사는 이용자의 개인정보를 「개인정보 수집 및 이용목적」에서 고지한 범위 내에서 사용하며, 제3자에게 제공하지 않습니다. 다만 아래의 경우에는 예외로 합니다.<br>
		▶ 이용자가 사전에 동의 한 경우<br>
		▶ 법령의 규정에 의하거나, 수사 목적으로 법령에 정해진 절차와 방법에 따라 수사기관의 요구가 있는 경우<br>
		▶ 통계작성, 학술연구나 시장조사를 위하여 특정 개인을 식별할 수 없는 형태로 정부기관이나 연구단체 등에 제공하는 경우</p><br>
		<hr>
		<p class="num">5. 개인정보 처리 위탁</p>
		<p class="content">회사는 서비스 이행을 위해 아래와 같이 개인정보 처리 업무를 외부 전문업체에 위탁하여 운영하고 있으며,<br>
		 관계 법령에 따라 위탁 계약 시 개인정보가 안전하게 관리 될 수 있도록 필요한 사항을 규정하고 있습니다.<br>
		  회사의 개인정보 위탁 처리 기관 및 위탁 업무 내용은 아래와 같습니다.</p>
		
		<table style=" margin-bottom: 10px;">
			<tr style="font-weight: 1000; " >
			<td width="200" height="40" style="border-top: 1px solid black; border-right: 1px solid #ccc;">수탁업체</td>
			<td width="200" style="border-top: 1px solid black; border-right: 1px solid #ccc;">위탁 업무 내용</td>
			<td width="200" style="border-top: 1px solid black;">정보의 보유 및 이용기간</td>
			</tr>
			<tr>
			<td width="200" height="40" id="line">㈜한국스마트카드<br>
			CS파트너스</td>
			<td width="200" id="line">상담업무 효율성 제고를 위한 고객센터 운영대행</td>
			<td rowspan="2"  style="border-bottom: 1px solid black; border-top: 1px solid #ccc;">위탁 계약 종료시까지</td>
			</tr>
			<tr>
			<td width="200" height="40" style="border-bottom: 1px solid black;  border-right: 1px solid #ccc;">㈜아시아나IDT</td>
			<td width="200" style="border-bottom: 1px solid black;  border-right: 1px solid #ccc;">홈페이지 운영, 관리</td>
			</tr>
		</table>
		<p class="content">상기의 경우 이외에 회사는 이용자의 동의없이 이용자의 개인정보 처리를 외부 업체에 위탁하지 않습니다.<br>
		 향후 그러한 필요가 생길 경우, 위탁 대상자와 위탁 업무 내용에 대해 이용자에게 통지하고 사전 동의를 받도록 하겠습니다.</p>
		 <hr>
		<p class="num">6. 개인정보보유 및 이용기간</p>
		<p class="content">회사는 원칙적으로 개인정보의 수집 및 이용 목적이 달성된 후에는 해당 정보를 지체없이 파기합니다.<br>
		단 다음의 정보에 대해서는 아래의 이유로 명시한 기간 동안 보존 합니다.<br>
		
		* 내부 방침에 의한 정보 보유 사유 *<br><br>
		▶ 부정 이용 기록 <br>
		- 보존 이유 : 부정 이용 방지<br>
		- 보존 기간 : 1년 <br><br>

		* 관련 법령에 의한 정보 보유 사유 *<br><br>
		▶ 계약 또는 청약 철회 등에 관한 기록<br>
		- 보존 근거 : 전자상거래 등에서의 소비자 보호에 관한 법률<br>
		- 보존 기간 : 5년<br><br>

		▶ 소비자의 불만 또는 분쟁 처리에 관한 기록 <br>
		- 보존 근거 : 전자상거래 등에서의 소비자 보호에 관한 법률<br>
		- 보존 기간 : 3년<br></p>
		 <hr>
		<p class="num">7. 개인정보 파기절차 및 방법</p>
		<p class="content">회사는 원칙적으로 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다.<br>
		 파기절차 및 방법은 다음과 같습니다.<br><br>
		 
		 ▶ 파기 절차
		 이용자가 회사의 홈페이지 상에 입력한 정보 및 서비스 이용 과정이나 사업처리 과정에서 생성되어 수집된 정보,<br>
		  백업파일 등은 목적이 달성된 후 내부 방침 또는 기타 관련 법령에 의한 정보보호 사유에 따라<br>
		 (보유 및 이용기간 참조) 일정 기간 저장된 후 파기됩니다.<br><br>
		 
		 ▶ 파기 방법종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기하고<br>
		  전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다.</p>
		<hr>
		<p class="num">8. 개인정보 자동 수집 장치의 설치·운영 및 거부에 관한 사항</p>
		<p class="content">회사는 서비스와 관련하여 이용자의 정보를 수시로 저장하고 찾아내는 쿠키(cookie) 등<br>
		 개인정보를 자동으로 수집하는 장치를 사용하지 않습니다.</p>
		<hr>
		<p class="num">9. 이용자 및 법정대리인의 권리와 그 행사방법</p>
		<p class="content">이용자 및 법정대리인은 회사에게 다음 사항에 대한 열람이나 제공을 요구할 수 있고 오류가 있는 경우에는 그 정정을 요구할 수 있습니다.<br><br>
		▶ 회사가 보유하고 있는 이용자의 개인정보<br>
		▶ 회사가 이용자의 개인정보를 이용하거나 제3자에게 제공한 현황<br>
		▶ 개인정보 수집ㆍ이용ㆍ제공에 관하여 동의를 한 현황<br><br>

		개인정보의조회ㆍ수정이 필요할 경우 개인정보 보호 담당부서에게 서면, 전화 또는 이메일로 연락하시면 지체 없이 조치하겠습니다.<br>
		이용자가 개인정보 오류에 대한 정정을 요청한 경우 <br>
		회사는 오류의 정정을 완료하기 전까지 해당 개인정보를 이용 또는 제3자에게 제공하지 않습니다. <br>
		또한 잘못된 개인정보를 제3자에게 이미 제공한 경우에는 정정 처리결과를 제3자에게 지체 없이 통지하여 정정이 이루어지도록 하겠습니다.<br><br>

		회사는 이용자의 요청에 의해 삭제된 개인정보를 “개인정보 보유 및 이용기간”에 명시된 바에 따라 처리하고 <br>
		그 외의 용도로 열람하거나 이용하지 않습니다.<br><br>		

		이용자가 부정확한 정보를 입력함으로써 발생하는 사고의 책임은 이용자에게 있으며<br>
		 타인 정보의 도용 등 허위정보를 입력할 경우 서비스 이용이 제한 될 수 있습니다.<br><br></p>
		<hr>
		<p class="num">10. 개인정보 보호를 위한 기술 및 관리 대책</p>
		<p class="content">회사는 이용자의 개인정보를 처리함에 있어 개인정보가 분실, 도난, 누출, 변조 또는 훼손되지 않도록<br>
		 안전성 확보를 위하여 다음과 같은 기술적 대책을 강구하고 있습니다.<br><br>

		회사는 해킹이나 컴퓨터 바이러스 등에 의해 이용자의 개인정보가 유출되거나 훼손되는 것을 막기 위해 최선을 다하고 있습니다.<br>
		 개인정보의 훼손에 대비해서 자료를 수시로 백업하고 있고 최신 백신프로그램을 이용하여 이용자의 개인정보나 <br>
		 자료가 누출되거나 손상되지 않도록 방지하고 있으며 암호 알고리즘 등을 통하여 네트워크상에서 개인정보를 안전하게 전송할 수 있도록 하고 있습니다.<br>
		  그리고 침입차단시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있으며, <br>
		  기타 시스템적으로 안정성을 확보하기 위한 가능한 모든 기술적 장치를 갖추려 노력하고 있습니다.<br><br>

		회사는 이용자의 개인정보 관련 처리를 특정 담당자에 한정시키고 있고 이를 위한 별도의 비밀번호를 부여하여 정기적으로 갱신하고 있으며,<br>
		 담당자에 대한 수시 교육을 통하여 개인정보 처리방침의 준수를 항상 강조하고 있습니다.<br><br>
		  그리고 내부감사 조직 등을 통하여 개인정보 처리 및 관리 담당자의 개인정보 처리방침 준수여부를 확인하여 문제가 발견될 경우 <br>
		  즉시 수정하고 바로 잡을 수 있도록 노력하고 있습니다.<br><br>

		그러나 이용자 본인의 부주의로 개인정보가 유출되어 발생한 문제에 대해 회사는 일체의 책임을 지지 않습니다.<br></p>
		<hr>
		<p class="num">11. 개인정보 권익 침해 시 구제방법</p>
		<p class="content">개인정보의 침해와 관련하여 신고나 상담이 필요하신 경우에는 아래 기관에 문의하시기 바랍니다.<br>
		
		<table style="margin-bottom: 20px; font-weight: 900;" border="1">
			<tr>
				<td rowspan="2"  width="230" height="60">개인정보 침해신고센터</td>
				<td>홈페이지</td>
				<td><a href="http://privacy.kisa.or.kr">http://privacy.kisa.or.kr</a></td>
			</tr>
			<tr>
				<td>전화</td>
				<td>(국번없이)118</td>
			</tr>
			<tr>
				<td rowspan="2" width="230" height="60">개인정보 분쟁조정위원회</td>
				<td width="190">홈페이지</td>
				<td width="300"><a href="http://www.kopico.go.kr">http://www.kopico.go.kr</a></td>
			</tr>
			<tr>
				<td width="190">전화</td>
				<td width="300">1833-6972</td>
			</tr>
			<tr>
				<td rowspan="2" width="230" height="60">대검찰청 사이버범죄수사단</td>
				<td width="190">홈페이지</td>
				<td width="300"><a href="cid@spo.go.kr">cid@spo.go.kr</a><br>
					<a href="http://www.spo.go.kr">(http://www.spo.go.kr)</a></td>
			</tr>
			<tr>
				<td width="190">전화</td>
				<td width="300">(국번없이) 1301</td>
			</tr>
			<tr>
				<td rowspan="2" width="230" height="60">경찰청 사이버안전국</td>
				<td width="190">홈페이지</td>
				<td width="300"><a href="http://cyberbureau.police.go.kr">http://cyberbureau.police.go.kr</a></td>
			</tr>
			<tr>
				<td width="190">전화</td>
				<td width="300">(국번없이) 182</td>
			</tr>
		</table>
		</p>
		<hr>
		<p class="num">12. 개인정보 보호 책임자 및 담당 부서의 연락처</p>
		<p class="content">회사는 이용자의 개인정보를 보호하고 개인정보와 관련한 불만을 처리하기 위하여 <br>
		아래와 같이 개인정보 보호 책임자 및 담당 부서를 지정하고 있습니다.<br><br>
		
		▶ 개인정보 보호 책임자 <br>
		- 성명: 김준성<br>
		- 직책: IT이행부문 상무<br><br>

		개인정보 보호 담당 부서 <br>
		- 부서명: 아키텍처팀<br>
		- 전화번호: 1644-0088<br>
		- 이메일: ksccadmin@koreasmartcard.com<br><br>

		이용자는 회사의 서비스를 이용하며 발생하는 모든 개인정보보호 관련 민원을 개인정보 보호 책임자 혹은 담당부서로 신고할 수 있습니다. <br>
		회사는 이용자의 신고사항에 대해 신속하게 답변을 드릴 것입니다.<br><br>

		▶ 공고 일자 : 2018년 3월 7일<br>
		▶ 시행 일자 : 2018월 3월 14일<br><br></p>
		 
		 
		</div>
	</form>
	<hr id="footline">
</div>
</body>
</html>