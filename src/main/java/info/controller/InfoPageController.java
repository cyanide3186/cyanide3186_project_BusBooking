package info.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class InfoPageController {
	//인포페이지 페이지이동 컨트롤러	
	
	//버스예약안내 페이징
	@RequestMapping(value="/info/infoBusBooking.do")
	public ModelAndView infoBusBooking(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("main","../info/bus_booking_info.jsp");
		modelAndView.setViewName("../main/index.jsp");
		return modelAndView;
	}
	
	//예매변경 및 취소안내
	@RequestMapping(value="/info/infoModyAndCancle.do")
	public ModelAndView infoModyAndCancle(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("main","../info/modify_and_cancelation_info.jsp");
		modelAndView.setViewName("../main/index.jsp");
		return modelAndView;
	}
	//터미널 및 운수회사 안내
	@RequestMapping(value="/info/infoTrAndCompany.do")
	public ModelAndView infoTrAndCompany(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		/*
		 * modelAndView.addObject("main","../info/terminal_company_info.jsp");
		modelAndView.setViewName("../main/index.jsp");
		*/
		//창을 처음 열었을때 초기값 설정
		modelAndView.addObject("region", "서울특별시");
		modelAndView.addObject("word", "dummyString");
		modelAndView.setViewName("../info/terminal.do");
		return modelAndView;
	}
	//현금영수증 안내
	@RequestMapping(value="/info/infoTax.do")
	public ModelAndView infoTax(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("main","../info/tax_info.jsp");
		modelAndView.setViewName("../main/index.jsp");
		return modelAndView;
	}
}
