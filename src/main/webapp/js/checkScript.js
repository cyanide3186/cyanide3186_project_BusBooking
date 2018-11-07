function check() {
	if(document.bus_input.start_tr.value == "") {
		alert("출발지를 선택해주세요");
		document.bus_input.start_tr.focus();
	} else if(document.bus_input.end_tr.value == "") {
		alert("도착지를 선택해주세요");
		document.bus_input.end_tr.focus();
	} else if(document.bus_input.arrivedate.value == "") {
		alert("출발일자를 선택해주세요");
		document.bus_input.arrivedate.focus();
	} else if(document.bus_input.arrive_time.value == "") {
		alert("출발시각을 선택해주세요");
		document.bus_input.arrive_time.focus();
	} else if(document.bus_input.adult.value == 0 && document.bus_input.teen.value == 0 && document.bus_input.kid.value == 0) {
		alert("선택하신 티켓 매수가 0장입니다, 1장이상 선택해주세요.");
		document.bus_input.arrive_time.focus();
	} else {
		document.bus_input.submit();
	}
}






