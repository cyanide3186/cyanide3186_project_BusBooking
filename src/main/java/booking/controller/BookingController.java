package booking.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BookingController {
	
	@RequestMapping(value="/booking/booking_bus.do")
	public ModelAndView booking_bus(ModelAndView modelAndView) {
		modelAndView.addObject("main","../booking/booking_bus.jsp");
		modelAndView.setViewName("../main/index.jsp");
		return modelAndView;
	}
	
}
