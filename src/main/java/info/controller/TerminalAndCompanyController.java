package info.controller;

import java.util.List;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import info.terminal.bean.TerminalVO;

@Controller
public class TerminalAndCompanyController {
	/*오토와이어 설정*/
	@Autowired
	InfoService infoService;
	
	//터미널 리스트 목록
	@RequestMapping(value="/info/terminal.do")
	public ModelAndView ListTerminal(HttpServletRequest request) {
		 String str_pg=request.getParameter("pg");
		 String region=request.getParameter("region");
		 String word =request.getParameter("word");
        int pg=1;
        if(str_pg!=null){
            pg=Integer.parseInt(str_pg);
        }
       
        if(!word.equals("dummyString")) {
        	 //정규표현식(특수문자 제외)에 맞지않는 검색어는 공백으로 처리
            String pattern="^[A-Za-z가-힣0-9]*$";
            if(!Pattern.matches(pattern, word)) {
            	word="dummyString";
            }
        }
       
        int endNum= pg*10;
        int startNum= endNum-9;
        List<TerminalVO> list = 
        		infoService.pagingTerminalBoard(region, word, startNum, endNum);
        int totalC=infoService.CountTerminal();
        int totalP=(totalC+9)/10;
        
        int startPage=(pg-1)/10*10+1;    
        int endPage=startPage+9;
        if(endPage>totalP) {
            endPage=totalP;
        } 
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("pg", pg);
        modelAndView.addObject("list", list);
        modelAndView.addObject("startPage", startPage);
        modelAndView.addObject("endPage", endPage);
        modelAndView.addObject("totalP", totalP);
        
        modelAndView.addObject("main", "../info/terminal_company_info.jsp");
        modelAndView.setViewName("../main/index.jsp");
        return modelAndView;
	}
	
	//운수사 리스트 목록
	/*	@RequestMapping(value="/info/company_do")
	public ModelAndView ListCompany(HttpServletRequest request) {
        String str_pg=request.getParameter("pg");
        int pg=1;
        if(str_pg!=null){
            pg=Integer.parseInt(str_pg);
        }
        
        int endNum= pg*10;
        int startNum= endNum-9;
        List<CompanyVO> list = infoService.pagingCompanyBoard(startNum, endNum);
        int totalC=infoService.CountCompany();
        int totalP=(totalC+9)/10;
        
        int startPage=(pg-1)/10*10+1;    
        int endPage=startPage+9;
        if(endPage>totalP) {
            endPage=totalP;
        } 
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("pg", pg);
        modelAndView.addObject("list", list);
        modelAndView.addObject("startPage", startPage);
        modelAndView.addObject("endPage", endPage);
        modelAndView.addObject("totalP", totalP);
        
        modelAndView.addObject("main", "../info/terminal_company_info.jsp");
        modelAndView.setViewName("../main/index.jsp");
        return modelAndView;
		
	}*/
}
