package booking.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.swing.plaf.synth.SynthSplitPaneUI;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import booking.bus.bean.BusVO;
import booking.bus.bean.SeatVO;
import booking.bus.dao.SeatDAO;
import booking.ticket.bean.TicketVO;
import booking.ticket.dao.TicketDAO;
import info.terminal.bean.TerminalVO;

@Controller
public class BookingController {

	@Autowired
	BookingService bookingService;

	String[] arrivalTime_array;

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

	// 버스 예약화면
	@RequestMapping(value = "/booking/booking_inputForm.do")
	public ModelAndView booking_inputForm(HttpServletRequest request) {

		ModelAndView modelAndView = new ModelAndView();

		modelAndView.addObject("main", "../booking/booking_input.jsp");
		modelAndView.setViewName("../main/index.jsp");

		return modelAndView;
	}

	// 버스 배차조회
	@RequestMapping(value = "/booking/booking_bus.do")
	public ModelAndView booking_bus(HttpServletRequest request, ModelAndView modelAndView) {

		BusVO busVO = new BusVO();

		String start_tr = request.getParameter("start_tr");
		String end_tr = request.getParameter("end_tr");
		String arrive_time = request.getParameter("arrive_time");
		String arrive_day = request.getParameter("arrive_day");
		String adult = request.getParameter("adult");
		String teen = request.getParameter("teen");
		String kid = request.getParameter("kid");

		int start_num = Integer.parseInt(request.getParameter("start_num")); // 배차 조회 항목 수
		int end_num = Integer.parseInt(request.getParameter("end_num")); // 배차 조회 항목 수

		busVO.setStart_tr(start_tr);
		busVO.setEnd_tr(end_tr);
		busVO.setArrive_time(arrive_time);

		List<BusVO> list = bookingService.busCheck(busVO, start_num, end_num); // 배차조회 결과 목록
		int busListCount = bookingService.busListCount(busVO); // 배차조회 목록 수

		modelAndView.addObject("list", list);
		modelAndView.addObject("arrive_day", arrive_day);
		modelAndView.addObject("adult", adult);
		modelAndView.addObject("teen", teen);
		modelAndView.addObject("kid", kid);
		modelAndView.addObject("busListCount", busListCount);
		modelAndView.addObject("main", "../booking/booking_bus.jsp");
		modelAndView.setViewName("../main/index.jsp");

		return modelAndView;
	}

	// 예약하기 - 좌석 선택 화면
	@RequestMapping(value = "/booking/booking_seatCheck.do")
	public ModelAndView booking_seatCheck(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();

		String bus_no = request.getParameter("bus_no");

		List<SeatVO> seatList = bookingService.getSeatList(bus_no);

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
		TicketDAO ticketDAO = new TicketDAO();
		TicketVO ticketVO = new TicketVO();
		SeatVO seatVO = new SeatVO();
		SeatDAO seatDAO = new SeatDAO();

		String ticket_no = request.getParameter("ticket_no");

		ticketVO = ticketDAO.bookingCheck(ticket_no);
		seatVO = seatDAO.seatCheck(ticket_no);

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
		TicketDAO dao = new TicketDAO();

		String ticket_no = request.getParameter("ticket_no");
		int count = dao.bookingCancel(ticket_no);

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
	@RequestMapping(value = "")
	public ModelAndView bookingModify(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		TicketDAO dao = new TicketDAO();
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

		int count = dao.bookingModify(vo);

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
	public int bookingFunction(HttpServletRequest request, TicketVO ticketVO) {

		String ticket_no = null;
		String bus_no = request.getParameter("bus_no");
		int seat_no = Integer.parseInt(request.getParameter("seat_no"));
		int hp = Integer
				.parseInt(request.getParameter("hp1") + request.getParameter("hp2") + request.getParameter("hp3"));

		String arrive_day = request.getParameter("arrive_day");

		// 예약번호 생성 기능
		/*
		 * 추가 예정 ticket_no = arrive_day + bus_no + seat_no;
		 */
		ticketVO.setTicket_no(ticket_no);
		ticketVO.setBus_no(bus_no);
		ticketVO.setSeat_no(seat_no);
		ticketVO.setHp(hp);
		ticketVO.setArrive_day(arrive_day);

		int count = bookingService.booking(ticketVO);

		return count;
	}

	// 버스 예상 도착시간에 좌석 초기화
	@Scheduled(fixedDelay = 60000)
	public void seatReset() {
		Calendar now = Calendar.getInstance(); // 현재시간 구하기
		long expiration = ((now.get(1) * 100000000L) + ((now.get(2) + 1) * 1000000) + (now.get(5) * 10000)
				+ (now.get(11) * 100) + now.get(12)); 				// 현재 년월일시분
//		now.set((now.get(1) * 10000), ((now.get(2) + 1) * 100), now.get(5)); 	// 달력일정을 현재년월일로 설정
		long maxDay = (now.get(1) * 100000000L) + ((now.get(2) + 1) * 1000000  + (now.getActualMaximum(Calendar.DAY_OF_MONTH)*10000+2359));				// 설정된 달력의 해당 달 최대일자
//		long limitDay = now.getActualMaximum(Calendar.DAY_OF_MONTH) * 10000;	// 그 달의 최대일크기(28일 28만,30일 30만)
		long limitMonth = (now.get(1) * 100000000L) + 12312359L;				// 그 해의 최대 맥스치 12월31일23시59분
		List<SeatVO> seatVO = new ArrayList<SeatVO>();
		seatVO = bookingService.seatInfo(expiration);							// 유효기간 만료 좌석 정보										// db내 유효기간최대일 추출										//
		if(!"0".equals(String.valueOf(seatVO.size()))) {	
			long upDay =  bookingService.maxDay(seatVO.get(0).getBus_no());
			for (int i = 0; i < seatVO.size(); i++) {
					long busTime = seatVO.get(i).getExpiration()%10000;				
					long newDay = (upDay + 10000) / 10000 * 10000 + (busTime%10000);									//변화되야할 일자 테이블내 최대일수+하루
					if(newDay > maxDay) {											//해당월 최대일자 초과시 한달이 증가								//그 달에 최대치를 넘어갈경우 월을 증가시키고 일자를 초기화
						newDay = (upDay / 1000000 * 1000000 + 1000000 + 10000) 		//다음달 1일로 초기화(시,분리셋)
							+ (busTime%10000); 										//시,분 추가
					} 
					if(newDay > limitMonth) {										//해당년도 최대월 초과시 일년이 증가
						newDay = (upDay / 1000000 * 1000000 + 90010000)				//내년 1일로 초기화(시,분리셋)
							+ (busTime%10000);										//시,분 추가
					}	
					seatVO.get(i).setBus_no(seatVO.get(i).getBus_no());	
					seatVO.get(i).setBus_seat(seatVO.get(i).getBus_seat());
					seatVO.get(i).setTicket_no("");
					seatVO.get(i).setExpiration(newDay);
					bookingService.seatInsert(seatVO.get(i));
				}
			}
			bookingService.seatDelete(expiration);									// 유효기간 만료 좌석 삭제	
		}	
	}
//	// 버스 예상 도착시간에 좌석 초기화
//	@Scheduled(cron="0 * * * * *")
//	public void seatReset() {
//		
//		List<BusVO> list = new ArrayList<>();
//		list = bookingService.getBus();
//		
//		arrivalTime_array = new String[list.size()];
//		
//		for(int i = 0; i < list.size(); i++) {
//			
//			int arrive_time = Integer.parseInt(list.get(i).getArrive_time());
//			int time = Integer.parseInt(list.get(i).getTime());
//			String bus_no = list.get(i).getBus_no();
//			
//			if((arrive_time / 10 % 10) + (time / 10 % 10) >= 6 ) time += 40;
//			int arrivalTime = arrive_time + time;
//			
//			if(arrivalTime >= 2400) arrivalTime -= 2400;
//			
//			arrivalTime_array[i] = bus_no + "+" + String.valueOf(arrivalTime);
//		}
//		
//		SimpleDateFormat sdf = new SimpleDateFormat("HHmm");
//		Calendar cal = Calendar.getInstance();
//		String currentTime = sdf.format(cal.getTime());
//		
//		for(int i = 0; i < arrivalTime_array.length; i++) {
//			int cutIndex = arrivalTime_array[i].indexOf("+");
//			String bus_no = arrivalTime_array[i].substring(0, cutIndex);
//			
//			if(arrivalTime_array[i].substring(cutIndex + 1).equals(currentTime)) {
//				bookingService.seatReset(bus_no);
//			}
//		}
	

