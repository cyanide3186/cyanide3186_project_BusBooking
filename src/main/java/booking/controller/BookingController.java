package booking.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BookingController {
	
	@RequestMapping(value="/booking/booking_input.do")
	public ModelAndView booking_bus(ModelAndView modelAndView) {
		modelAndView.addObject("main","../booking/booking_input.jsp");
		modelAndView.setViewName("../main/index.jsp");
		return modelAndView;
	}
	
}
