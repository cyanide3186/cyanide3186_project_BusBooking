package info.controller;

import org.springframework.web.servlet.ModelAndView;

public interface InfoService {

	//터미널 목록 출력
	public ModelAndView ListTerminal();
	public ModelAndView CountTerminal();
	
	//운수회사 목록 출력
	public ModelAndView ListCompany();
	public ModelAndView CountCompany();
}
