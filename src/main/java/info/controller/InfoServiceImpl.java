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
			return terminalDAO.listTerminal(region, startNum, endNum);
		} else {
			return terminalDAO.searchTerminal(region, word, startNum, endNum);
		}
	}

	@Override
	public int CountTerminal() {
		return terminalDAO.countTerminal();
	}	
	


	//운수회사 정보 목록 구현
	@Override
	public int CountCompany() {
		return companyDAO.CountCompany();
	}


	@Override
	public List<CompanyVO> pagingCompanyBoard(int startNum, int endNum) {
		return companyDAO.pagingCompanyBoard(startNum, endNum);
	}


	@Override
	public List<CompanyVO> searching(String word, int startNum, int endNum) {
		return companyDAO.searching(word, startNum, endNum);
	}

	

}
