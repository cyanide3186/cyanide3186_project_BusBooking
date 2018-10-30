package info.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import info.company.dao.CompanyDAO;
import info.terminal.dao.TerminalDAO;

@Service
public class InfoServiceImpl implements InfoService {
	/*오토와이어 적용*/
	@Autowired
	CompanyDAO companyDAO;
	@Autowired
	TerminalDAO terminalDAO;
	
	/*메소드*/
	//터미널 정보 목록 구현
	@Override
	public ModelAndView ListTerminal() {
		return null;
	}
	
	@Override
	public ModelAndView CountTerminal() {
		return null;
	}
	
	//운수회사 정보 목록 구현
	@Override
	public ModelAndView ListCompany() {
		return null;
	}

	@Override
	public ModelAndView CountCompany() {
		return null;
	}

}
