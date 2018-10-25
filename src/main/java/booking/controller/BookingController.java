package booking.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import booking.bus.bean.SeatVO;
import booking.bus.dao.SeatDAO;
import booking.ticket.bean.TicketVO;
import booking.ticket.dao.TicketDAO;

@Controller
public class BookingController {
	
	// 버스 예약기능
	@RequestMapping(value="/booking/booking_bus.do")
	public ModelAndView booking_bus(ModelAndView modelAndView) {
		modelAndView.addObject("main","../booking/booking_bus.jsp");
		modelAndView.setViewName("../main/index.jsp");
		
		return modelAndView;
	}
	
	// 예약 취소 폼
	@RequestMapping(value="/booking/bookinCancleForm.do")
	public ModelAndView bookingCancleForm(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.setViewName("");
		
		return modelAndView;
	}
	
	// 예약 취소 기능
	@RequestMapping(value="/booking/bookinCancle.do")
	public ModelAndView bookingCancle(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		TicketDAO dao = new TicketDAO();
		
		String ticket_no = request.getParameter("ticket_no");
		int count = dao.bookingCancel(ticket_no);
		
		modelAndView.addObject("ticket_no", ticket_no);
		modelAndView.addObject("count", count);
		modelAndView.setViewName("");
		
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
		
		modelAndView.setViewName("");
		
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
		modelAndView.setViewName("");
		
		return modelAndView;
	}
}
