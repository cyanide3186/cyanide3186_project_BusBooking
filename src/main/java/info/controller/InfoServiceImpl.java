package info.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import info.company.bean.CompanyVO;
import info.company.dao.CompanyDAO;
import info.terminal.bean.TerminalVO;
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
	public List<TerminalVO> pagingTerminalBoard(String region, String word, int startNum, int endNum){
		//검색어 없이 실행시 listTerminal을, 검색어가 있으면 SeachTerminal을 실행
		
		if(word.equals("dummyString")) {
//			System.out.println("**Activate listTerminal**");
//			System.out.println();
			return terminalDAO.listTerminal(region, startNum, endNum);
		} else {
//			System.out.println("**Activate searchTerminal**");
//			System.out.println();
			return terminalDAO.searchTerminal(region, word, startNum, endNum);
		}
	}

	@Override
	public int CountTerminal() {
		return terminalDAO.countTerminal();
	}

	//운수회사 정보 목록 구현
	@Override
	public int CountCompany(String word) {
		if(word.equals("searching")) {
			return companyDAO.CountCompany();
		} else {
			return companyDAO.wordCountCompany(word);
		}
		
	}

	@Override
	public List<CompanyVO> pagingCompanyBoard(String word, int startNum, int endNum) {
		if(word.equals("searching")) {
			return companyDAO.pagingCompanyBoard(startNum, endNum);
		} else {
			return companyDAO.searchCompany(word, startNum, endNum);
		}
	}



}
