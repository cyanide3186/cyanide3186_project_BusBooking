package booking.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

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
	
	//터미널 목록 json 
	@RequestMapping(value="/booking/booking_inputJson.do")
	public ModelAndView booking_Json (ModelAndView modelAndView) {
		List<BusVO> list=bookingService.busList();
		
		String rt = null;
		int total=	list.size();
		if(total>0) {
			rt="OK";
		}else {
			rt="FAIL";
		}
		JSONObject json = new JSONObject(); //첫번째 중괄호 
		json.put("rt", rt);
		json.put("total",total);
		if(total > 0 ) {
			JSONArray items = new JSONArray();
			for(int i = 0 ; i<list.size(); i++) {
				BusVO vo = list.get(i);
				JSONObject temp = new JSONObject();
				temp.put("end_tr", vo.getEnd_tr());
				items.put(i,temp);
			}
			json.put("items",items);
		}
		System.out.println(json);
		modelAndView.addObject("json",json);
		modelAndView.setViewName("../booking/booking_inputJson_end.jsp");
		return modelAndView;
	}
	
	//지역별 선택 드롭다운 목록 json 
	@RequestMapping(value="/booking/booking_RegionJson.do")
	public ModelAndView booking_RegionJson (ModelAndView modelAndView) {
		List<TerminalVO> list=bookingService.regionList();
		String rt = null;
		int total=	list.size();
		if(total>0) {
			rt="OK";
		}else {
			rt="FAIL";
		}
		JSONObject json = new JSONObject(); //첫번째 중괄호 
		json.put("rt", rt);
		json.put("total",total);
		if(total > 0 ) {
			JSONArray items = new JSONArray();
			for(int i = 0 ; i<list.size(); i++) {
				TerminalVO vo = list.get(i);
				JSONObject temp = new JSONObject();
				temp.put("region", vo.getRegion());
				items.put(i,temp);
			}
			json.put("items",items);
		}
		System.out.println(json);
		modelAndView.addObject("json",json);
		modelAndView.setViewName("../booking/booking_input_regionJson.jsp");
		return modelAndView;
	}
	
	
	//지역별 선택 드롭다운 목록 json 
	@RequestMapping(value="/booking/booking_input_TerminalJson.do")
	public ModelAndView booking_terminalJson (ModelAndView modelAndView ,HttpServletRequest request ) {
		System.out.println(request.getParameter("local"));
		String region =request.getParameter("local");
		List<TerminalVO> list=bookingService.terminalList(region);
		String rt = null;
		int total=	list.size();
		if(total>0) {
			rt="OK";
		}else {
			rt="FAIL";
		}
		JSONObject json = new JSONObject(); //첫번째 중괄호 
		json.put("rt", rt);
		json.put("total",total);
		if(total > 0 ) {
			JSONArray items = new JSONArray();
			for(int i = 0 ; i<list.size(); i++) {
				TerminalVO vo = list.get(i);
				JSONObject temp = new JSONObject();
				temp.put("name", vo.getName());/*지역별터미널이름*/
				items.put(i,temp);
			}
			json.put("items",items);
		}
		System.out.println(json);
		modelAndView.addObject("json",json);
		modelAndView.setViewName("../booking/booking_input_TerminalJson.jsp");
		return modelAndView;
	}
	//검색을위한 터미널 목록 
	@RequestMapping(value="/booking/booking_input_TerminalSearchJson.do")
	public ModelAndView booking_terminalJson (ModelAndView modelAndView ) {
		List<TerminalVO> list=bookingService.terminalAllList();
		String rt = null;
		int total=	list.size();
		if(total>0) {
			rt="OK";
		}else {
			rt="FAIL";
		}
		JSONObject json = new JSONObject(); //첫번째 중괄호 
		json.put("rt", rt);
		json.put("total",total);
		if(total > 0 ) {
			JSONArray items = new JSONArray();
			for(int i = 0 ; i<list.size(); i++) {
				TerminalVO vo = list.get(i);
				JSONObject temp = new JSONObject();
				temp.put("name", vo.getName());/*지역별터미널이름*/
				items.put(i,temp);
			}
			json.put("items",items);
		}
		System.out.println(json);
		modelAndView.addObject("json",json);
		modelAndView.setViewName("../booking/booking_input_TerminalSearchJson.jsp");
		return modelAndView;
	}
	
	// 버스 예약화면
	@RequestMapping(value="/booking/booking_inputForm.do")
	public ModelAndView booking_inputForm(HttpServletRequest request) {
		
		ModelAndView modelAndView = new ModelAndView();

		modelAndView.addObject("main","../booking/booking_input.jsp");
		modelAndView.setViewName("../main/index.jsp");
		
		return modelAndView;
	}
	
	// 버스 배차조회
	@RequestMapping(value="/booking/booking_bus.do")
	public ModelAndView booking_bus(HttpServletRequest request, ModelAndView modelAndView) {
		
		BusVO busVO = new BusVO();
		
		String start_tr = request.getParameter("start_tr");
		String end_tr = request.getParameter("end_tr");
		String arrive_time = request.getParameter("arrive_time");
		String arrive_day = request.getParameter("arrive_day");
		String adult = request.getParameter("adult");
		String teen = request.getParameter("teen");
		String kid = request.getParameter("kid");
		
		int pg = 1;
		String param_pg = request.getParameter("pg");
		if(param_pg != null) pg = Integer.parseInt(param_pg);
		
		int end_num = pg * 10;			// 배차 조회 항목 수
		int start_num = end_num - 9;	// 배차 조회 항목 수
		
		busVO.setStart_tr(start_tr);
		busVO.setEnd_tr(end_tr);
		busVO.setArrive_time(arrive_time);
		
		int busListCount = bookingService.busListCount(busVO); // 배차조회 목록 수 
		int totalPage = (busListCount + 4) / 5;
		int startPage = (pg - 1) / 5 * 5 + 1;
		int endPage = startPage + 4;

		if (endPage > totalPage) endPage = totalPage;
		
		List<BusVO> list = bookingService.busCheck(busVO , start_num, end_num);		// 배차조회 결과 목록
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
		
		
		modelAndView.addObject("main","../booking/booking_bus.jsp");
		modelAndView.setViewName("../main/index.jsp");
		
		return modelAndView;
	}
	
	// 예약하기 - 좌석 선택 화면
	@RequestMapping(value="/booking/booking_seatCheck.do")
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
	@RequestMapping(value="/booking/booking_input.do")
	public ModelAndView booking_input(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		
		int adult = Integer.parseInt(request.getParameter("adult"));
		int teen = Integer.parseInt(request.getParameter("teen"));
		int kid = Integer.parseInt(request.getParameter("kid"));
		
		// 쿼리문 수행 후 예약 된 매수
		int adultResult = 0;	
		int teenResult = 0;
		int kidResult = 0;
		
		if(adult > 0) {
			for(int i = 0; adult <= i; i++) {
				TicketVO ticketVO = new TicketVO();
				
				int age_group = 0;
				int totalpay = Integer.parseInt(request.getParameter("totalpay"));

				ticketVO.setAge_group(age_group);
				ticketVO.setTotalpay(totalpay);
				
				adultResult += bookingFunction(request, ticketVO);
			}
			
		}
		if(kid > 0) {
			for(int i = 0; kid <= i; i++) {
				TicketVO ticketVO = new TicketVO();
				
				int age_group = 1;
				int totalpay = Integer.parseInt(request.getParameter("totalpay"));
				
				totalpay = (int) (totalpay * 0.5); // 어린이 요금 적용
				
				ticketVO.setAge_group(age_group);
				ticketVO.setTotalpay(totalpay);
				
				teenResult += bookingFunction(request, ticketVO);
			}
			
		}
		if(teen > 0) {
			for(int i = 0; teen <= i; i++) {
				TicketVO ticketVO = new TicketVO();
			
				int age_group = 2;
				int totalpay = Integer.parseInt(request.getParameter("totalpay"));
				
				totalpay = (int) (totalpay * 0.3); // 청소년 요금 적용
				
				ticketVO.setAge_group(age_group);
				ticketVO.setTotalpay(totalpay);;
				
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
		@RequestMapping(value="/booking/bookingCheck.do")
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
	@RequestMapping(value="/booking/bookingCancleForm.do")
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
	@RequestMapping(value="/booking/bookingCancle.do")
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
	@RequestMapping(value="/booking/bookingModifyForm.do")
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
	@RequestMapping(value="")
	public ModelAndView bookingModify(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		TicketDAO dao = new TicketDAO();
		TicketVO vo = new TicketVO();
		
		String ticket_no = request.getParameter("ticket_no");	   		
		int hp = Integer.parseInt(request.getParameter("hp"));             
		String payday = request.getParameter("payday");        
		int totalpay = Integer.parseInt(request.getParameter("totalpay"));         
		int age_group  = Integer.parseInt(request.getParameter("kid"));             
		String arrive_day = request.getParameter("arrive_day");
		
		vo.setArrive_day(arrive_day);
		vo.setHp(hp);
		vo.setPayday(payday);
		vo.setTotalpay(totalpay);
		vo.setAge_group(age_group);
		vo.setTicket_no(ticket_no);

		int count = dao.bookingModify(vo);
		
		modelAndView.addObject("count", count);
		modelAndView.addObject("main","");
		
		modelAndView.setViewName("../main/index.jsp");
		
		return modelAndView;
	}
	
	// 예약하기 - 결과 화면
	@RequestMapping(value="/booking/booking_result.do")
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
		int hp = Integer.parseInt(request.getParameter("hp1") + request.getParameter("hp2") + request.getParameter("hp3"));
		
		String arrive_day = request.getParameter("arrive_day");
		
		// 예약번호 생성 기능
		/*
			추가 예정
			ticket_no = arrive_day + bus_no + seat_no;
		*/
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
	public void seatReset() {
		
		List<BusVO> list = new ArrayList<>();
		list = bookingService.getBus();
		
		arrivalTime_array = new String[list.size()];
		
		for(int i = 0; i < list.size(); i++) {
			
			int arrive_time = Integer.parseInt(list.get(i).getArrive_time());
			int time = Integer.parseInt(list.get(i).getTime());
			String bus_no = list.get(i).getBus_no();
			
			if((arrive_time / 10 % 10) + (time / 10 % 10) >= 6 ) time += 40;
			int arrivalTime = arrive_time + time;
			
			if(arrivalTime >= 2400) arrivalTime -= 2400;
			
			arrivalTime_array[i] = bus_no + "+" + String.valueOf(arrivalTime);
		}
		
		SimpleDateFormat sdf = new SimpleDateFormat("HHmm");
		Calendar cal = Calendar.getInstance();
		String currentTime = sdf.format(cal.getTime());
		
		for(int i = 0; i < arrivalTime_array.length; i++) {
			int cutIndex = arrivalTime_array[i].indexOf("+");
			String bus_no = arrivalTime_array[i].substring(0, cutIndex);
			
			if(arrivalTime_array[i].substring(cutIndex + 1).equals(currentTime)) {
				bookingService.seatReset(bus_no);
			}
		}
	}
}
