package board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import booking.bus.bean.BusVO;
import booking.controller.BookingService;

@Controller
public class BoardController {
	@Autowired
	BookingService bookingService;
	
	@RequestMapping(value="/booking/booking_input.do")
	public ModelAndView booking_input(BusVO vo) {
		
		
		return null;
		
	}

}
