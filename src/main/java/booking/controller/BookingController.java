package booking.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import booking.bus.bean.BusVO;
import booking.bus.bean.SeatVO;
import booking.ticket.bean.TicketVO;
import info.terminal.bean.TerminalVO;

@Controller

public class BookingController {

	@Autowired
	BookingService bookingService;

	String[] arrivalTime_array;
	StringUtils utils = new StringUtils();

	@RequestMapping(value = "/booking/booking_modifyForm.do")
	public ModelAndView booking_modifyForm(ModelAndView modelAndView) {

		modelAndView.addObject("main", "../booking/booking_modifyForm.jsp");
		modelAndView.setViewName("../main/index.jsp");

		return modelAndView;
	}

	// 터미널 목록 json
	@RequestMapping(value = "/booking/booking_inputJson.do")
	public ModelAndView booking_Json(ModelAndView modelAndView) {
		List<BusVO> list = bookingService.busList();

		String rt = null;
		int total = list.size();
		if (total > 0) {
			rt = "OK";
		} else {
			rt = "FAIL";
		}
		JSONObject json = new JSONObject(); // 첫번째 중괄호
		json.put("rt", rt);
		json.put("total", total);
		if (total > 0) {
			JSONArray items = new JSONArray();
			for (int i = 0; i < list.size(); i++) {
				BusVO vo = list.get(i);
				JSONObject temp = new JSONObject();
				temp.put("end_tr", vo.getEnd_tr());
				items.put(i, temp);
			}
			json.put("items", items);
		}
		// System.out.println(json);
		modelAndView.addObject("json", json);
		modelAndView.setViewName("../booking/booking_inputJson_end.jsp");
		return modelAndView;
	}

	// 지역별 선택 드롭다운 목록 json
	@RequestMapping(value = "/booking/booking_RegionJson.do")
	public ModelAndView booking_RegionJson(ModelAndView modelAndView) {
		List<TerminalVO> list = bookingService.regionList();
		String rt = null;
		int total = list.size();
		if (total > 0) {
			rt = "OK";
		} else {
			rt = "FAIL";
		}
		JSONObject json = new JSONObject(); // 첫번째 중괄호
		json.put("rt", rt);
		json.put("total", total);
		if (total > 0) {
			JSONArray items = new JSONArray();
			for (int i = 0; i < list.size(); i++) {
				TerminalVO vo = list.get(i);
				JSONObject temp = new JSONObject();
				temp.put("region", vo.getRegion());
				items.put(i, temp);
			}
			json.put("items", items);
		}
		// System.out.println(json);
		modelAndView.addObject("json", json);
		modelAndView.setViewName("../booking/booking_input_regionJson.jsp");
		return modelAndView;
	}

	// 지역별 선택 드롭다운 목록 json
	@RequestMapping(value = "/booking/booking_input_TerminalJson.do")
	public ModelAndView booking_terminalJson(ModelAndView modelAndView, HttpServletRequest request) {
		System.out.println(request.getParameter("local"));
		String region = request.getParameter("local");
		List<TerminalVO> list = bookingService.terminalList(region);
		String rt = null;
		int total = list.size();
		if (total > 0) {
			rt = "OK";
		} else {
			rt = "FAIL";
		}
		JSONObject json = new JSONObject(); // 첫번째 중괄호
		json.put("rt", rt);
		json.put("total", total);
		if (total > 0) {
			JSONArray items = new JSONArray();
			for (int i = 0; i < list.size(); i++) {
				TerminalVO vo = list.get(i);
				JSONObject temp = new JSONObject();
				temp.put("name", vo.getName());/* 지역별터미널이름 */
				items.put(i, temp);
			}
			json.put("items", items);
		}
		// System.out.println(json);
		modelAndView.addObject("json", json);
		modelAndView.setViewName("../booking/booking_input_TerminalJson.jsp");
		return modelAndView;
	}

	// 검색을위한 터미널 목록
	@RequestMapping(value = "/booking/booking_input_TerminalSearchJson.do")
	public ModelAndView booking_terminalJson(ModelAndView modelAndView) {
		List<TerminalVO> list = bookingService.terminalAllList();
		String rt = null;
		int total = list.size();
		if (total > 0) {
			rt = "OK";
		} else {
			rt = "FAIL";
		}
		JSONObject json = new JSONObject(); // 첫번째 중괄호
		json.put("rt", rt);
		json.put("total", total);
		if (total > 0) {
			JSONArray items = new JSONArray();
			for (int i = 0; i < list.size(); i++) {
				TerminalVO vo = list.get(i);
				JSONObject temp = new JSONObject();
				temp.put("name", vo.getName());/* 지역별터미널이름 */
				items.put(i, temp);
			}
			json.put("items", items);
		}
		// System.out.println(json);
		modelAndView.addObject("json", json);
		modelAndView.setViewName("../booking/booking_input_TerminalSearchJson.jsp");
		return modelAndView;
	}

	// 버스 예약 - 기초정보 입력화면
	@RequestMapping(value = "/booking/booking_inputForm.do")
	public ModelAndView booking_inputForm(HttpServletRequest request) {

		ModelAndView modelAndView = new ModelAndView();

		modelAndView.addObject("main", "../booking/booking_input.jsp");
		modelAndView.setViewName("../main/index.jsp");

		return modelAndView;
	}

	// 버스 카드 결제 페이지 이동
	@RequestMapping(value = "/booking/booking_card.do")
	public ModelAndView booking_cardForm(HttpServletRequest request) {
		String arrive_day = request.getParameter("arrive_day");
		String arrive_time = request.getParameter("arrive_time");
		String start_tr = request.getParameter("start_tr");
		String end_tr = request.getParameter("end_tr");
		String bus_no = request.getParameter("bus_no");
		String adult = request.getParameter("adult");
		String teen = request.getParameter("teen");
		String kid = request.getParameter("kid");
		String total_payment = request.getParameter("total_payment");
		String arrive_day2 = utils.substringAfterLast(arrive_day, "-");
		String arrive_day1 = utils.substringBetween(arrive_day, "-", "-");
		ModelAndView modelAndView = new ModelAndView();
		String seatarr[] = request.getParameterValues("seat");
		ArrayList<String> seat= new ArrayList<>();
		for(int i =0 ; i<seatarr.length; i++) {
			if(seatarr[i]!=null) {
				seat.add(seatarr[i].toString());
				System.out.println(seatarr[i]);
			}
		}
		String arrive_time1;
		String arrive_time2;
		if(arrive_time.length()==3) {
			arrive_time1 = arrive_time.substring(0,1);
			arrive_time2 = arrive_time.substring(1,3);
		} else  {
			arrive_time1 = arrive_time.substring(0,2);
			arrive_time2 = arrive_time.substring(2,4);
		}

		modelAndView.addObject("start_tr", start_tr);  
		modelAndView.addObject("end_tr", end_tr);
		modelAndView.addObject("arrive_day1", arrive_day1);  
		modelAndView.addObject("arrive_day2", arrive_day2);  
		modelAndView.addObject("arrive_time1", arrive_time1);
		modelAndView.addObject("arrive_time2", arrive_time2);
		modelAndView.addObject("bus_no", bus_no);
		modelAndView.addObject("adult", adult);  
		modelAndView.addObject("teen", teen);
		modelAndView.addObject("kid", kid);
		modelAndView.addObject("seat", seat);
		modelAndView.addObject("total_payment", total_payment);
		modelAndView.addObject("main", "../booking/booking_card.jsp");
		modelAndView.setViewName("../main/index.jsp");
		return modelAndView;
	}

	// 버스 운행정보 조회 페이지 이동
	@RequestMapping(value = "/booking/booking_information_inquiry.do")
	public ModelAndView booking_information_inquiry(HttpServletRequest request) {

		ModelAndView modelAndView = new ModelAndView();

		modelAndView.addObject("main", "../booking/booking_information_inquiry.jsp");
		modelAndView.setViewName("../main/index.jsp");

		return modelAndView;
	}

	// 버스 배차조회
	@SuppressWarnings("static-access")
	@RequestMapping(value = "/booking/booking_bus.do")
	public ModelAndView booking_bus(HttpServletRequest request, ModelAndView modelAndView) {

		BusVO busVO = new BusVO();
		String is_bus_info = null;
		is_bus_info = request.getParameter("is_bus_info");
		String start_tr = request.getParameter("start_tr");
		String end_tr = request.getParameter("end_tr");
		String arrive_time = request.getParameter("arrive_time");
		String arrive_day = request.getParameter("arrive_day");
		String setArrive_day = utils.substringAfterLast(arrive_day, "-");
		String setArrive_month = utils.substringBetween(arrive_day, "-", "-");
		String adult = request.getParameter("adult");
		String teen = request.getParameter("teen");
		String kid = request.getParameter("kid");
		int pg = 1;
		String param_pg = request.getParameter("pg");
		if (param_pg != null)
			pg = Integer.parseInt(param_pg);

		int end_num = pg * 10; // 배차 조회 항목 수
		int start_num = end_num - 9; // 배차 조회 항목 수

		busVO.setStart_tr(start_tr);
		busVO.setEnd_tr(end_tr);
		busVO.setArrive_time(Integer.parseInt(arrive_time));
		busVO.setArrive_day(Integer.parseInt(setArrive_day));
		busVO.setArrive_month(Integer.parseInt(setArrive_month));

		int busListCount = bookingService.busListCount(busVO, Integer.parseInt(setArrive_day),
				Integer.parseInt(setArrive_month)); // 배차조회 목록 수

		int totalPage = (int) (Math.ceil(busListCount * 1.0) / 10);
		int endPage = (int) (Math.ceil(pg / 10.0)) * 10;
		int startPage = endPage - 9;
		if (endPage > totalPage)
			endPage = totalPage;
		List<BusVO> list = bookingService.busCheck(busVO, start_num, end_num); // 배차조회 결과 목록
		modelAndView.addObject("list", list);
		modelAndView.addObject("arrive_day", arrive_day);
		modelAndView.addObject("arrive_time", arrive_time);
		modelAndView.addObject("start_tr", start_tr);
		modelAndView.addObject("end_tr", end_tr);
		modelAndView.addObject("adult", adult);
		modelAndView.addObject("teen", teen);
		modelAndView.addObject("kid", kid);
		modelAndView.addObject("busListCount", busListCount);
		modelAndView.addObject("totalPage", totalPage);
		modelAndView.addObject("startPage", startPage);
		modelAndView.addObject("endPage", endPage);

		if (is_bus_info != null) {
			modelAndView.addObject("main", "../booking/booking_information_list.jsp");
		} else {
			modelAndView.addObject("main", "../booking/booking_bus.jsp");
		}
		modelAndView.setViewName("../main/index.jsp");

		return modelAndView;
	}

	// 예약하기 - 좌석 선택 화면
	@SuppressWarnings("static-access")
	@RequestMapping(value = "/booking/booking_seatCheck.do")
	public ModelAndView booking_seatCheck(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		SeatVO seatVO = new SeatVO();
		int teen;
		int adult;
		int kid;
		if (request.getParameter("adult") == null) {
			adult = 0;
		} else {
			adult = Integer.parseInt(request.getParameter("adult"));

		}
		if (request.getParameter("teen") == null) {
			teen = 0;
		} else {

			teen = Integer.parseInt(request.getParameter("teen"));
		}
		if (request.getParameter("kid") == null) {
			kid = 0;
		} else {

			kid = Integer.parseInt(request.getParameter("kid"));
		}

		String bus_no = request.getParameter("bus_no");
		// System.out.println("bus_no : "+bus_no);
		BusVO vo = bookingService.getBusInfo(bus_no);
		String arrive_day = request.getParameter("arrive_day");
		String setArrive_day = utils.substringAfterLast(arrive_day, "-");
		String setArrive_month = utils.substringBetween(arrive_day, "-", "-");
		seatVO.setBus_no(bus_no);
		seatVO.setArrive_month(Integer.parseInt(setArrive_month));
		seatVO.setArrive_day(Integer.parseInt(setArrive_day));
		
		List<SeatVO> seatList = bookingService.getSeatList(seatVO);

		ArrayList<Integer> seat_reservation = new ArrayList<>();
		for (int i = 0; i < seatList.size(); i++) {

			if (seatList.get(i).getTicket_no() != null) {
				// System.out.println("seatList :"+seatList.get(i).getTicket_no());
				// System.out.println("seatList :"+seatList.get(i).getBus_seat());
				seat_reservation.add(seatList.get(i).getBus_seat());

			}
		}
		
		modelAndView.addObject("adult", adult);
		modelAndView.addObject("teen", teen);
		modelAndView.addObject("kid", kid);
		modelAndView.addObject("seat_reservation", seat_reservation);
		modelAndView.addObject("arrive_day", arrive_day);
		modelAndView.addObject("seatList", seatList);
		modelAndView.addObject("bus_vo", vo);
		modelAndView.addObject("main", "../booking/booking_seatCheck.jsp");
		modelAndView.setViewName("../main/index.jsp");

		return modelAndView;
	}

	// 버스 예약기능
	@RequestMapping(value = "/booking/booking_insert.do")
	public ModelAndView booking_input(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();

		int adult = Integer.parseInt(request.getParameter("adult"));
		int teen = Integer.parseInt(request.getParameter("teen"));
		int kid = Integer.parseInt(request.getParameter("kid"));
		int hp = Integer.parseInt(request.getParameter("hp1") + (request.getParameter("hp2") + (request.getParameter("hp3"))));
		// 쿼리문 수행 후 예약 된 매수
		int adultResult = 0;
		int teenResult = 0;
		int kidResult = 0;

		if (adult > 0) {
			for (int i = 0; i <= adult; i++) {
				TicketVO ticketVO = new TicketVO();

				int age_group = 0;
				int totalpay = Integer.parseInt(request.getParameter("total_payment"));

				ticketVO.setAge_group(age_group);
				ticketVO.setTotalpay(totalpay);
				ticketVO.setHp(hp);
				adultResult += bookingFunction(request, ticketVO);
			}

		}
		if (kid > 0) {
			for (int i = 0; i <= kid; i++) {
				TicketVO ticketVO = new TicketVO();

				int age_group = 1;
				int totalpay = Integer.parseInt(request.getParameter("totalpay"));

				totalpay = (int) (totalpay * 0.5); // 어린이 요금 적용

				ticketVO.setAge_group(age_group);
				ticketVO.setTotalpay(totalpay);
				ticketVO.setHp(hp);

				teenResult += bookingFunction(request, ticketVO);
			}

		}
		if (teen > 0) {
			for (int i = 0; i <= teen; i++) {
				TicketVO ticketVO = new TicketVO();

				int age_group = 2;
				int totalpay = Integer.parseInt(request.getParameter("totalpay"));

				totalpay = (int) (totalpay * 0.3); // 청소년 요금 적용

				ticketVO.setAge_group(age_group);
				ticketVO.setTotalpay(totalpay);
				ticketVO.setHp(hp);

				kidResult += bookingFunction(request, ticketVO);
			}

		}

		modelAndView.addObject("adultResult", adultResult);
		modelAndView.addObject("teenResult", teenResult);
		modelAndView.addObject("kidResult", kidResult);
		modelAndView.addObject("main", "../main/index.jsp");

		modelAndView.setViewName("../main/index.jsp");

		return modelAndView;
	}

	// 버스 예약기능 함수
	@SuppressWarnings("static-access")
	public int bookingFunction(HttpServletRequest request, TicketVO ticketVO) {

		String ticket_no = null;
		String bus_no = request.getParameter("bus_no");
		String seatarr[] = request.getParameterValues("seat");
		ArrayList<String> seat = new ArrayList<>();
		ArrayList<Integer> seat_Int= new ArrayList<>();
		for(int i =0 ; i<seatarr.length; i++) {
			if(seatarr[i]!=null) {
				seat_Int.add(Integer.parseInt(seatarr[i]));
				System.out.println("seat_Int 로받은 좌석 : "+Integer.parseInt(seatarr[i]));
			}
		}
		int hp = Integer
				.parseInt(request.getParameter("hp1") + request.getParameter("hp2") + request.getParameter("hp3"));
		
		String arrive_day = request.getParameter("arrive_day");
		String arrive_time = request.getParameter("arrive_time");

		String setArrive_month = utils.substringBetween(arrive_day, "-", "-");
		String setArrive_day = utils.substringAfterLast(arrive_day, "-");
		// 예약번호 생성 (출발날짜 + 출발시간 + 버스번호 + 좌석번호)
		ticket_no = utils.remove(arrive_day, "-") + arrive_time + bus_no
				+ utils.leftPad(String.valueOf(seat_Int), 2, "0");

		ticketVO.setTicket_no(ticket_no);
		ticketVO.setBus_no(bus_no);
		for( int i:  seat_Int ) {
			
			ticketVO.setSeat_no(i);
		}
		ticketVO.setHp(hp);
		ticketVO.setArrive_day(arrive_day);

		int count = bookingService.booking(ticketVO);
		if (count > 0) {
			SeatVO seatVO = new SeatVO();
			seatVO.setBus_no(bus_no);
			for( int i:  seat_Int ) {
				
				seatVO.setBus_seat(i);

			}
			seatVO.setTicket_no(ticket_no);
			seatVO.setArrive_month(Integer.parseInt(setArrive_month));
			seatVO.setArrive_day(Integer.parseInt(setArrive_day));

			bookingService.seatBooking(seatVO);
		}
		return count;
	}

	// 예약하기 - 결과 화면
	@RequestMapping(value = "/booking/booking_result.do")
	public ModelAndView booking_result(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();

		modelAndView.addObject("main", "");
		modelAndView.setViewName("../main/index.jsp");

		return modelAndView;
	}

	// 예약 조회 기능
	@RequestMapping(value = "/booking/bookingCheck.do")
	public ModelAndView bookingCheck(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		TicketVO ticketVO = new TicketVO();
		SeatVO seatVO = new SeatVO();

		String ticket_no = request.getParameter("ticket_no");

		ticketVO = bookingService.bookingCheck(ticket_no);
		seatVO = bookingService.seatCheck(ticket_no);

		modelAndView.addObject("ticketVO", ticketVO);
		modelAndView.addObject("seatVO", seatVO);
		modelAndView.addObject("main", "");
		
		modelAndView.setViewName("../main/index.jsp");

		return modelAndView;
	}

	// 예약 취소 폼
	@RequestMapping(value = "/booking/bookingCancleForm.do")
	public ModelAndView bookingCancleForm(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		TicketVO ticketVO = new TicketVO();

		String ticket_no = request.getParameter("ticket_no");
		ticketVO = bookingService.bookingCheck(ticket_no);
		
		modelAndView.addObject("ticketVO", ticketVO);
		modelAndView.addObject("main", "");
		modelAndView.setViewName("../main/index.jsp");

		return modelAndView;
	}

	// 예약 취소 기능
	@RequestMapping(value = "/booking/bookingCancle.do")
	public ModelAndView bookingCancle(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();

		String ticket_no = request.getParameter("ticket_no");
		int count = bookingService.bookingCancel(ticket_no);

		if (count > 0)
			bookingService.seatCancle(ticket_no);
		

		modelAndView.addObject("ticket_no", ticket_no);
		modelAndView.addObject("count", count);
		modelAndView.addObject("main", "");
		modelAndView.setViewName("../main/index.jsp");

		return modelAndView;
	}

	// 예약 수정 폼
	@RequestMapping(value = "/booking/bookingModifyForm.do")
	public ModelAndView bookingModifyForm(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		TicketVO ticketVO = new TicketVO();

		String ticket_no = request.getParameter("ticket_no");
		ticketVO = bookingService.bookingCheck(ticket_no);

		modelAndView.addObject("ticketVO", ticketVO);

		modelAndView.setViewName("");

		return modelAndView;
	}

	// 예약 수정 기능
	@RequestMapping(value = "/booking/bookingModify.do")
	public ModelAndView bookingModify(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		TicketVO vo = new TicketVO();

		String ticket_no = request.getParameter("ticket_no");
		int hp = Integer.parseInt(request.getParameter("hp"));
		String payday = request.getParameter("payday");
		int totalpay = Integer.parseInt(request.getParameter("totalpay"));
		int age_group = Integer.parseInt(request.getParameter("kid"));
		String arrive_day = request.getParameter("arrive_day");

		vo.setArrive_day(arrive_day);
		vo.setHp(hp);
		vo.setPayday(payday);
		vo.setTotalpay(totalpay);
		vo.setAge_group(age_group);
		vo.setTicket_no(ticket_no);

		int count = bookingService.bookingModify(vo);

		modelAndView.addObject("count", count);
		modelAndView.addObject("main", "");

		modelAndView.setViewName("../main/index.jsp");

		return modelAndView;
	}

	// 버스 도착 예상시간에 좌석 초기화
	@Scheduled(cron = "0 * * * * *")
	public void seatReset() {
		List<BusVO> list = new ArrayList<>();
		list = bookingService.getBusList();

		arrivalTime_array = new String[list.size()]; // 버스번호와 시간 정보를 담을 배열

		// arrivalTime_array 배열에 버스번호+도착예상시간m:출발월d:출발일 의 모양으로 정보를 담는다
		for (int i = 0; i < list.size(); i++) {

			int arrive_time = list.get(i).getArrive_time();
			int time = list.get(i).getTime();

			String bus_no = list.get(i).getBus_no();

			if ((arrive_time / 10 % 10) + (time / 10 % 10) >= 6)
				time += 40;
			int arrivalTime = arrive_time + time; // 도착 예상시간

			if (arrivalTime >= 2400)
				arrivalTime -= 2400;

			arrivalTime_array[i] = bus_no + "+" + String.valueOf(arrivalTime) + "m:"
					+ String.valueOf(list.get(i).getArrive_month()) + "d:"
					+ String.valueOf(list.get(i).getArrive_day());

			// System.out.println(arrivalTime_array[i]);
			// System.out.println("m: 위치 = " + arrivalTime_array[i].indexOf("m:"));
			// System.out.println("d: 위치 = " + arrivalTime_array[i].indexOf("d:") + 1);
			// System.out.println(arrivalTime_array[i].substring(11, 13));
			// System.out.println(arrivalTime_array[i].substring(14));
		}

		// 날짜 포맷
		SimpleDateFormat sdf = new SimpleDateFormat("HHmm"); // 시간 ex : 오후 5시 10분 - > 1710
		SimpleDateFormat sdf2 = new SimpleDateFormat("MM"); // 월
		SimpleDateFormat sdf3 = new SimpleDateFormat("dd"); // 일

		Calendar cal = Calendar.getInstance();
		String currentTime = sdf.format(cal.getTime()); // 현재 시간
		String currentMonth = sdf2.format(cal.getTime()); // 현재 월
		String currentDay = sdf3.format(cal.getTime()); // 현재 일
		// int month = Integer.parseInt(sdf2.format(cal.getTime()));
		// int day = Integer.parseInt(sdf3.format(cal.getTime()));
		int resetMonth = 0; // seat 초기화 할 때 입력 될 월
		int resetDay = 0; // seat 초기화 할 때 입력 될 일

		// currentMonth = "1";
		// currentDay = "31";

		for (int i = 0; i < arrivalTime_array.length; i++) {
			int cutIndex = arrivalTime_array[i].indexOf("+");
			int monthIndex = arrivalTime_array[i].indexOf("m:") + 2;
			int dayIndex = arrivalTime_array[i].indexOf("d:");
			String bus_no = arrivalTime_array[i].substring(0, cutIndex); // 배열에 저장된 버스 번호

			// System.out.println("monthIndex = " + monthIndex );
			// System.out.println("dayIndex = " + dayIndex);

			String getMonth = arrivalTime_array[i].substring(monthIndex, dayIndex); // 배열에 저장 된 버스의 출발 월
			String getDay = arrivalTime_array[i].substring(dayIndex + 2); // 배열에 저장 된 버스의 출발 일
			SeatVO seatVO = new SeatVO();

			resetDay = Integer.parseInt(getDay);

			resetMonth = Integer.parseInt(getMonth) + 1; // 좌석의 월을 다음달로 변경
			if (resetMonth > 12)
				resetMonth = 1;

//			if(resetDay > dayofMonth) {
//				resetDay -= dayofMonth;
//				if(resetDay > dayofMonth) resetMonth = Integer.parseInt(getMonth) + 2;
//				else resetMonth = Integer.parseInt(getMonth) + 1;
//			}

			seatVO.setBus_no(bus_no);
			seatVO.setArrive_month(Integer.parseInt(getMonth));
			seatVO.setArrive_day(Integer.parseInt(getDay));
			seatVO.setResetMonth(resetMonth);
			seatVO.setResetDay(resetDay);
			// System.out.println("시간표 : " + arrivalTime_array[i].substring(cutIndex + 1,
			// monthIndex - 2));
			// System.out.println("현재 시각 : " + currentTime);
			// System.out.println("getmonth : " + getMonth);
			// System.out.println("currentMonth : " + currentMonth );
			// System.out.println("getday : " + getDay);
			// System.out.println("currentDay : " + currentDay );
			// System.out.println("-------------------------------------------");

			// 현재 시간(월, 일 시각)을 배열에 저장되있는 시간과 비교해서 일치하면 좌석을 초기화 시킨다.
			if (arrivalTime_array[i].substring(cutIndex + 1, monthIndex - 2).equals(currentTime)
					&& getMonth.equals(currentMonth) && getDay.equals(currentDay)) {
				bookingService.seatReset(seatVO);
			}
		}
	}

	// 월말 좌석 초기화
	// 이번 달이 저번 달보다 총 일수가 적을 경우 초기화 되지 않는 좌석들을 초기화 시킨다.
	@Scheduled(cron = "0 0 0 28-30 * *")
	public void seatResetLastday() {
		List<BusVO> list = new ArrayList<>();
		list = bookingService.getBusList();

		arrivalTime_array = new String[list.size()];

		for (int i = 0; i < list.size(); i++) {

			int arrive_time = list.get(i).getArrive_time();
			int time = list.get(i).getTime();

			String bus_no = list.get(i).getBus_no();

			if ((arrive_time / 10 % 10) + (time / 10 % 10) >= 6)
				time += 40;
			int arrivalTime = arrive_time + time;

			if (arrivalTime >= 2400)
				arrivalTime -= 2400;

			arrivalTime_array[i] = bus_no + "+" + String.valueOf(arrivalTime) + "m:"
					+ String.valueOf(list.get(i).getArrive_month()) + "d:"
					+ String.valueOf(list.get(i).getArrive_day());

		}

		Calendar cal = Calendar.getInstance();
		int dayofMonth = cal.getActualMaximum(Calendar.DATE);
		int resetMonth = 0;
		int resetDay = 0;

		for (int i = 0; i < arrivalTime_array.length; i++) {
			int cutIndex = arrivalTime_array[i].indexOf("+");
			int monthIndex = arrivalTime_array[i].indexOf("m:") + 2;
			int dayIndex = arrivalTime_array[i].indexOf("d:");

			String bus_no = arrivalTime_array[i].substring(0, cutIndex);
			String getMonth = arrivalTime_array[i].substring(monthIndex, dayIndex);
			String getDay = arrivalTime_array[i].substring(dayIndex + 2);
			SeatVO seatVO = new SeatVO();

			resetDay = Integer.parseInt(getDay);

			resetMonth = Integer.parseInt(getMonth) + 1;

			if (resetMonth > 12)
				resetMonth = 1;

			seatVO.setBus_no(bus_no);
			seatVO.setArrive_month(Integer.parseInt(getMonth));
			seatVO.setArrive_day(Integer.parseInt(getDay));
			seatVO.setResetMonth(resetMonth);
			seatVO.setResetDay(resetDay);

			if (Integer.parseInt(getDay) > dayofMonth) {
				bookingService.seatReset(seatVO);
			}
		}
	}

	// 좌석테이블 정보가 없는 버스의 좌석을 생성(insert)
	/*
	 * 생성하기 전에 cmd창에서 sqlplus "/as sysdbd" select * from v$resource_limit where
	 * resource_name='processes'; alter system set processes=500 scope=spfile;
	 * shutdown immediate; startup 을 한 줄씩 차례로 입력한 후에 진행해야된다.
	 */
//	@RequestMapping(value="/booking/seatCreate.do")
//	public void seatCreat() {
//		int arrive_month = 11;
//		int arrive_day;
//		
//		List<BusVO> bus_noList = new ArrayList<>();
//		bus_noList = bookingService.getBus_noList();
//		
//		for(int i = 0; i < bus_noList.size(); i++) {
//			String bus_no = bus_noList.get(i).getBus_no();
//			List<SeatVO> seatList = new ArrayList<>();
//			seatList = bookingService.test(bus_no);
//			
//			if(seatList.size() == 0) {
//				for(int j = 1; j <= 31; j++) {
//					arrive_day = j;
//					for(int k = 1; k <= 40; k++) {
//						SeatVO seatVO = new SeatVO();
//						seatVO.setBus_no(bus_no);
//						seatVO.setBus_seat(k);
//						seatVO.setArrive_month(arrive_month);
//						seatVO.setArrive_day(arrive_day);
//						bookingService.seatCreate(seatVO);
//						//System.out.println(bus_no + "번 버스 " + j + "일자 좌석 생성");
//					}
//				}
//			}
//		}
//	}
}
