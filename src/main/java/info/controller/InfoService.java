package info.controller;

import java.util.List;

import org.springframework.web.servlet.ModelAndView;

import info.company.bean.CompanyVO;
import info.terminal.bean.TerminalVO;

public interface InfoService {

	//터미널 목록 출력
	public List<TerminalVO> pagingTerminalBoard(String region, String word, int startNum, int endNum);
	public int CountTerminal();
	
	//운수회사 목록 출력
	public List<CompanyVO> pagingCompanyBoard(int startNum, int endNum);
	//public ModelAndView ListCompany();
	public int CountCompany();
}
