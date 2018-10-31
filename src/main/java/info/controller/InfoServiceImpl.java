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
	
	@Override
	public List<CompanyVO> pagingCompanyBoard(int startNum, int endNum) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int CountCompany() {
		// TODO Auto-generated method stub
		return 0;
	}
	
	//운수회사 정보 목록 구현
/*	@Override
	public ModelAndView ListCompany() {
		return companyDAO.ListCompany();
	}*/

/*	@Override
	public int CountCompany() {
		return null;
		//return companyDAO.CountCompany();
	}


	@Override
	public List<CompanyVO> pagingCompanyBoard(int startNum, int endNum) {
		return null;
		//return companyDAO.pagingCompanyBoard(startNum, endNum);
	}
*/
	

}
