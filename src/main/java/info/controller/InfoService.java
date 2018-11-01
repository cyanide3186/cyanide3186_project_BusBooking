package info.controller;

import java.util.List;


import info.company.bean.CompanyVO;
import info.terminal.bean.TerminalVO;

public interface InfoService {

	//터미널 목록 출력
	public List<TerminalVO> pagingTerminalBoard(String region, String word, int startNum, int endNum);
	public int CountTerminal(String region, String word);
	
	//운수회사 목록 출력
	public List<CompanyVO> pagingCompanyBoard(String word, int startNum, int endNum);
	public int CountCompany(String word);
}
