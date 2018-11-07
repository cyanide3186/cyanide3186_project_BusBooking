package booking.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
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
import booking.bus.dao.BusDAO;
import booking.ticket.bean.TicketVO;
import ch.qos.logback.core.net.SyslogOutputStream;
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
		System.out.println(json);
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
		System.out.println(json);
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
		System.out.println(json);
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
		System.out.println(json);
		modelAndView.addObject("json", json);
		modelAndView.setViewName("../booking/booking_input_TerminalSearchJson.jsp");
		return modelAndView;
	}

	// 버스 예약화면
	@RequestMapping(value = "/booking/booking_inputForm.do")
	public ModelAndView booking_inputForm(HttpServletRequest request) {

		ModelAndView modelAndView = new ModelAndView();

		modelAndView.addObject("main", "../booking/booking_input.jsp");
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
		System.out.println(arrive_time);
		System.out.println(arrive_day);
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
		
		int busListCount = bookingService.busListCount(busVO, Integer.parseInt(setArrive_day), Integer.parseInt(setArrive_month)); // 배차조회 목록 수 
		System.out.println(busListCount);
		int totalPage = (int)(Math.ceil(busListCount*1.0)/10);
		int endPage = (int)(Math.ceil(pg/10.0))*10;
		int startPage = endPage-9;
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
		
		String bus_no = request.getParameter("bus_no");
		String arrive_day = request.getParameter("arrive_day");
		String setArrive_day = utils.substringAfterLast(arrive_day, "-");
		String setArrive_month = utils.substringBetween(arrive_day, "-", "-");
		seatVO.setBus_no(bus_no);
		seatVO.setArrive_month(Integer.parseInt(setArrive_day));
		seatVO.setArrive_day(Integer.parseInt(setArrive_month));
		
		List<SeatVO> seatList = bookingService.getSeatList(seatVO);
		
		modelAndView.addObject("arrive_day", arrive_day);
		modelAndView.addObject("seatList", seatList);
		modelAndView.addObject("main", "../booking/booking_seatCheck.jsp");
		modelAndView.setViewName("../main/index.jsp");
		
		return modelAndView;
	}

	// 버스 예약기능
	@RequestMapping(value = "/booking/booking_input.do")
	public ModelAndView booking_input(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();

		int adult = Integer.parseInt(request.getParameter("adult"));
		int teen = Integer.parseInt(request.getParameter("teen"));
		int kid = Integer.parseInt(request.getParameter("kid"));

		// 쿼리문 수행 후 예약 된 매수
		int adultResult = 0;
		int teenResult = 0;
		int kidResult = 0;

		if (adult > 0) {
			for (int i = 0; adult <= i; i++) {
				TicketVO ticketVO = new TicketVO();

				int age_group = 0;
				int totalpay = Integer.parseInt(request.getParameter("totalpay"));

				ticketVO.setAge_group(age_group);
				ticketVO.setTotalpay(totalpay);

				adultResult += bookingFunction(request, ticketVO);
			}

		}
		if (kid > 0) {
			for (int i = 0; kid <= i; i++) {
				TicketVO ticketVO = new TicketVO();

				int age_group = 1;
				int totalpay = Integer.parseInt(request.getParameter("totalpay"));

				totalpay = (int) (totalpay * 0.5); // 어린이 요금 적용

				ticketVO.setAge_group(age_group);
				ticketVO.setTotalpay(totalpay);

				teenResult += bookingFunction(request, ticketVO);
			}

		}
		if (teen > 0) {
			for (int i = 0; teen <= i; i++) {
				TicketVO ticketVO = new TicketVO();

				int age_group = 2;
				int totalpay = Integer.parseInt(request.getParameter("totalpay"));

				totalpay = (int) (totalpay * 0.3); // 청소년 요금 적용

				ticketVO.setAge_group(age_group);
				ticketVO.setTotalpay(totalpay);
				;

				kidResult += bookingFunction(request, ticketVO);
			}

		}

		modelAndView.addObject("adultResult", adultResult);
		modelAndView.addObject("teenResult", teenResult);
		modelAndView.addObject("kidResult", kidResult);
		modelAndView.addObject("main", "../booking/booking_result.do");

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
		
		if(count > 0) bookingService.seatCancle(ticket_no); 
			
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

	// 예약하기 - 결과 화면
	@RequestMapping(value = "/booking/booking_result.do")
	public ModelAndView booking_result(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();

		modelAndView.addObject("main", "");
		modelAndView.setViewName("../main/index.jsp");

		return modelAndView;
	}

	// 버스 예약기능 함수
	@SuppressWarnings("static-access")
	public int bookingFunction(HttpServletRequest request, TicketVO ticketVO) {

		String ticket_no = null;
		String bus_no = request.getParameter("bus_no");
		int seat_no = Integer.parseInt(request.getParameter("seat_no"));
		int hp = Integer.parseInt(request.getParameter("hp1") + request.getParameter("hp2") + request.getParameter("hp3"));
		
		String arrive_day = request.getParameter("arrive_day");
		String arrive_time = request.getParameter("arrive_time");
		
		// 예약번호 생성 (출발날짜 + 출발시간 + 버스번호 + 좌석번호)
		ticket_no = utils.remove(arrive_day, "-") + arrive_time + bus_no + utils.leftPad(String.valueOf(seat_no), 2, "0");
		
		ticketVO.setTicket_no(ticket_no);
		ticketVO.setBus_no(bus_no);
		ticketVO.setSeat_no(seat_no);
		ticketVO.setHp(hp);
		ticketVO.setArrive_day(arrive_day);

		int count = bookingService.booking(ticketVO);

		return count;
	}

	// 버스 도착 예상시간에 좌석 초기화
	@Scheduled(cron="0 * * * * *")
	public void seatResetf() {
		List<BusVO> list = new ArrayList<>();
		list = bookingService.getBus();
		
		arrivalTime_array = new String[list.size()];	// 버스번호와 시간 정보를 담을 배열
		
		for(int i = 0; i < list.size(); i++) {
			
			int arrive_time = list.get(i).getArrive_time();
			int time = list.get(i).getTime();
			
			String bus_no = list.get(i).getBus_no();
			
			if((arrive_time / 10 % 10) + (time / 10 % 10) >= 6 ) time += 40;
			int arrivalTime = arrive_time + time;	// 도착 예상시간
			
			if(arrivalTime >= 2400) arrivalTime -= 2400;
			
			arrivalTime_array[i] = bus_no + "+" + String.valueOf(arrivalTime) 
									+ "m:" + String.valueOf(list.get(i).getArrive_month()) + "d:" + String.valueOf(list.get(i).getArrive_day());
			
			//System.out.println(arrivalTime_array[i]);
			//System.out.println("m: 위치 = " + arrivalTime_array[i].indexOf("m:"));
			//System.out.println("d: 위치 = " + arrivalTime_array[i].indexOf("d:") + 1);
			//System.out.println(arrivalTime_array[i].substring(11, 13));
			//System.out.println(arrivalTime_array[i].substring(14));
		}
		
																// 날짜 포맷
		SimpleDateFormat sdf = new SimpleDateFormat("HHmm");	// 시간 ex : 오후 5시 10분 - > 1710
		SimpleDateFormat sdf2 = new SimpleDateFormat("MM");		// 월
		SimpleDateFormat sdf3 = new SimpleDateFormat("dd");		// 일
		
		Calendar cal = Calendar.getInstance();
		String currentTime = sdf.format(cal.getTime());			// 현재 시간
		String currentMonth = sdf2.format(cal.getTime()); 		// 현재 월
		String currentDay =   sdf3.format(cal.getTime()); 		// 현재 일
		//int month = Integer.parseInt(sdf2.format(cal.getTime())); 
		//int day = Integer.parseInt(sdf3.format(cal.getTime())); 
		int resetMonth = 0;										// seat 초기화 할 때 입력 될 월
		int resetDay = 0;										// seat 초기화 할 때 입력 될 일			
		
		//currentMonth = "1";
		//currentDay = "31";
		
		for(int i = 0; i < arrivalTime_array.length; i++) {
			int cutIndex = arrivalTime_array[i].indexOf("+");			
			int monthIndex = arrivalTime_array[i].indexOf("m:") + 2;
			int dayIndex = arrivalTime_array[i].indexOf("d:");
			String bus_no = arrivalTime_array[i].substring(0, cutIndex);			// 배열에 저장된 버스 번호

			//System.out.println("monthIndex = " + monthIndex );
			//System.out.println("dayIndex = " + dayIndex);
			
			String getMonth = arrivalTime_array[i].substring(monthIndex, dayIndex);	// 배열에 저장 된 버스의 출발 월
			String getDay = arrivalTime_array[i].substring(dayIndex + 2);			// 배열에 저장 된 버스의 출발 일
			SeatVO seatVO = new SeatVO();
			
			resetDay = Integer.parseInt(getDay);									
			
			resetMonth = Integer.parseInt(getMonth) + 1;							// 좌석의 월을 다음달로 변경
			if(resetMonth > 12 ) resetMonth = 1;

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
			//System.out.println("시간표 : " + arrivalTime_array[i].substring(cutIndex + 1, monthIndex - 2));
			//System.out.println("현재 시각 : " + currentTime);
			//System.out.println("getmonth : " + getMonth);
			//System.out.println("currentMonth : " + currentMonth );
			//System.out.println("getday : " + getDay);
			//System.out.println("currentDay : " + currentDay );
			//System.out.println("-------------------------------------------");
			
			// 현재 시간(월, 일 시각)을 배열에 저장되있는 시간과 비교해서 일치하면 좌석을 초기화 시킨다. 
			if(arrivalTime_array[i].substring(cutIndex + 1, monthIndex - 2).equals(currentTime) && getMonth.equals(currentMonth) && getDay.equals(currentDay)) {
				bookingService.seatReset(seatVO);
			}
		}
	}
	
	// 월말 좌석 초기화
	// 이번 달이 저번 달보다 총 일수가 적을 경우 초기화 되지 않는 좌석들을 초기화 시킨다.
	@Scheduled(cron="0 0 0 28-30 * *")
	public void seatResetLastday() {
		List<BusVO> list = new ArrayList<>();
		list = bookingService.getBus();
		
		arrivalTime_array = new String[list.size()];
		
		for(int i = 0; i < list.size(); i++) {
			
			int arrive_time = list.get(i).getArrive_time();
			int time = list.get(i).getTime();
			
			String bus_no = list.get(i).getBus_no();
			
			if((arrive_time / 10 % 10) + (time / 10 % 10) >= 6 ) time += 40;
			int arrivalTime = arrive_time + time;
			
			if(arrivalTime >= 2400) arrivalTime -= 2400;
			
			arrivalTime_array[i] = bus_no + "+" + String.valueOf(arrivalTime) 
			+ "m:" + String.valueOf(list.get(i).getArrive_month()) + "d:" + String.valueOf(list.get(i).getArrive_day());
			
		}
		
		Calendar cal = Calendar.getInstance();
		int dayofMonth = cal.getActualMaximum(Calendar.DATE);
		int resetMonth = 0;
		int resetDay = 0;
		
		for(int i = 0; i < arrivalTime_array.length; i++) {
			int cutIndex = arrivalTime_array[i].indexOf("+");
			int monthIndex = arrivalTime_array[i].indexOf("m:") + 2;
			int dayIndex = arrivalTime_array[i].indexOf("d:");
		
			String bus_no = arrivalTime_array[i].substring(0, cutIndex);
			String getMonth = arrivalTime_array[i].substring(monthIndex, dayIndex);
			String getDay = arrivalTime_array[i].substring(dayIndex + 2);
			SeatVO seatVO = new SeatVO();
			
			resetDay = Integer.parseInt(getDay);
			
			resetMonth = Integer.parseInt(getMonth) + 1;
			
			if(resetMonth > 12 ) resetMonth = 1;
			
			seatVO.setBus_no(bus_no);
			seatVO.setArrive_month(Integer.parseInt(getMonth));
			seatVO.setArrive_day(Integer.parseInt(getDay));
			seatVO.setResetMonth(resetMonth);
			seatVO.setResetDay(resetDay);
			
			if(Integer.parseInt(getDay) > dayofMonth ) {
				bookingService.seatReset(seatVO);
			}
		}
	}
	   //@Scheduled(fixedDelay = 1000)
	   public void seatReset() {
	      Calendar now = Calendar.getInstance(); // 현재시간 구하기
	      long expiration = ((now.get(1) * 100000000L) + ((now.get(2) + 1) * 1000000) + (now.get(5) * 10000)
	            + (now.get(11) * 100) + now.get(12));             // 현재 년월일시분
//	      now.set((now.get(1) * 10000), ((now.get(2) + 1) * 100), now.get(5));    // 달력일정을 현재년월일로 설정
	      long maxDay = (now.get(1) * 100000000L) + ((now.get(2) + 1) * 1000000  + (now.getActualMaximum(Calendar.DAY_OF_MONTH)*10000+2359));            // 설정된 달력의 해당 달 최대일자
//	      long limitDay = now.getActualMaximum(Calendar.DAY_OF_MONTH) * 10000;   // 그 달의 최대일크기(28일 28만,30일 30만)
	      long limitMonth = (now.get(1) * 100000000L) + 12312359L;            // 그 해의 최대 맥스치 12월31일23시59분
	      List<SeatVO> seatVO = new ArrayList<SeatVO>();
	      seatVO = bookingService.seatInfo(expiration);                     // 유효기간 만료 좌석 정보                              // db내 유효기간최대일 추출                              //
	      if(!"0".equals(String.valueOf(seatVO.size()))) {   
	         long upDay =  bookingService.maxDay(seatVO.get(0).getBus_no());
	         for (int i = 0; i < seatVO.size(); i++) {
	               long busTime = seatVO.get(i).getExpiration()%10000;        
	               long newDay = (upDay + 10000) / 10000 * 10000 + (busTime%10000);                           //변화되야할 일자 테이블내 최대일수+하루
	               if(newDay > maxDay) {                                 //해당월 최대일자 초과시 한달이 증가                        //그 달에 최대치를 넘어갈경우 월을 증가시키고 일자를 초기화
	                  newDay = (upDay / 1000000 * 1000000 + 1000000 + 10000)       //다음달 1일로 초기화(시,분리셋)
	                     + (busTime%10000);                               //시,분 추가
	               } 
	               if(newDay > limitMonth) {                              //해당년도 최대월 초과시 일년이 증가
	                  newDay = (upDay / 1000000 * 1000000 + 90010000)            //내년 1일로 초기화(시,분리셋)
	                     + (busTime%10000);                              //시,분 추가
	               }   
	               seatVO.get(i).setBus_no(seatVO.get(i).getBus_no());   
	               seatVO.get(i).setBus_seat(seatVO.get(i).getBus_seat());
	               seatVO.get(i).setTicket_no("");
	               seatVO.get(i).setExpiration(newDay);
	               bookingService.seatInsert(seatVO.get(i));
	            }
	         }
	         bookingService.seatDelete(expiration);                           // 유효기간 만료 좌석 삭제   
	      }
}
