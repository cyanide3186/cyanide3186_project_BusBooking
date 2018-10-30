package booking.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import booking.bus.bean.BusVO;
import booking.bus.bean.SeatVO;
import booking.bus.dao.BusDAO;
import booking.bus.dao.SeatDAO;
import booking.ticket.bean.TicketVO;
import booking.ticket.dao.TicketDAO;

@Controller
public class BookingController {
	
	@Autowired
	BookingService bookingService;
	
	// 버스 배차조회
	@RequestMapping(value="/booking/booking_bus.do")
	public ModelAndView booking_bus(HttpServletRequest request, ModelAndView modelAndView) {
		
		String arrive_time = request.getParameter("arrive_time");
		String arrive_day = request.getParameter("arrive_day");
		String adult = request.getParameter("adult");
		String teen = request.getParameter("teen");
		String kid = request.getParameter("kid");
		
		List<BusVO> list = bookingService.busCheck(arrive_time);	// 배차 목록 조회 결과
		
		modelAndView.addObject("list", list);
		modelAndView.addObject("arrive_day", arrive_day);
		modelAndView.addObject("adult", adult);
		modelAndView.addObject("teen", teen);
		modelAndView.addObject("kid", kid);
		modelAndView.addObject("main","../booking/booking_bus.jsp");
		modelAndView.setViewName("../main/index.jsp");
		
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
	
	
	// 예약 취소 폼
	@RequestMapping(value="/booking/bookingCancleForm.do")
	public ModelAndView bookingCancleForm(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.setViewName("");
		
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
		modelAndView.addObject("main","");
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
		modelAndView.addObject("main","");
		
		modelAndView.setViewName("../main/index.jsp");
		
		return modelAndView;
	}
	
	// 예약 수정 폼
	@RequestMapping(value="/booking/bookingModifyForm.do")
	public ModelAndView bookingModifyForm(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		TicketDAO dao = new TicketDAO();
		TicketVO ticketVO = new TicketVO();
		
		String ticket_no = request.getParameter("ticket_no"); 
		ticketVO = dao.bookingCheck(ticket_no);
		
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
	
	@RequestMapping(value="/booking/booking_result.do")
	public ModelAndView booking_result(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.addObject("main", "");
		modelAndView.setViewName("../main/index.jsp");
		
		return modelAndView;
	}
	
	@RequestMapping(value="/booking/booking_seatCheck.do")
	public ModelAndView booking_seatCheck(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		
		
		modelAndView.addObject("main", "../booking/booking_seatCheck.jsp");
		modelAndView.setViewName("../main/index.jsp");
		
		return modelAndView;
	}
	
	// 버스 예약기능 함수
	public int bookingFunction(HttpServletRequest request, TicketVO ticketVO) {
		
		String ticket_no = null;
		String bus_no = request.getParameter("bus_no");
		int seat_no = Integer.parseInt(request.getParameter("seat_no"));
		int hp = Integer.parseInt(request.getParameter("hp"));
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
}
