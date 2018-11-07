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
	public String infoTrAndCompany() {
		return "../info/terminal.do";
	}
	//현금영수증 안내
	@RequestMapping(value="/info/infoTax.do")
	public ModelAndView infoTax(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("main","../info/tax_info.jsp");
		modelAndView.setViewName("../main/index.jsp");
		return modelAndView;
	}
	
	//서비스 준비중
	@RequestMapping(value="/info/preparingService.do")
	public ModelAndView preparingService(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("main", "../info/preparingService.jsp");
		modelAndView.setViewName("../main/index.jsp");
		return modelAndView;		
	}
	
	//이용 약관
	@RequestMapping(value="/info/termsNconditions.do")
	public ModelAndView termsNconditions(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("main","../info/termsNconditions.jsp");
		modelAndView.setViewName("../main/index.jsp");
		return modelAndView;
	}
	//개인정보 처리 방침
	@RequestMapping(value="/info/personal_info.do")
	public ModelAndView personalinfo(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("main","../info/personal_info.jsp");
		modelAndView.setViewName("../main/index.jsp");
		return modelAndView;
	}
	//이메일 무단수집 거부
	@RequestMapping(value="/info/email_collection.do")
	public ModelAndView emailcollection(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("main","../info/email_collection.jsp");
		modelAndView.setViewName("../main/index.jsp");
		return modelAndView;
	}
	
}
