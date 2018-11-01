package info.controller;

import java.util.List;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import info.company.bean.CompanyVO;
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
		String web_region = request.getParameter("region");
		String web_word =request.getParameter("word");
		
		/*파라미터값 확인용*/
//		System.out.println("받아온 파라미터값");
//		System.out.println("------------------------------------");
//		System.out.println("str_pg : "+str_pg);
//		System.out.println("web_region : "+web_region);
//		System.out.println("web_word : "+web_word);
//		System.out.println("======================================");
//		System.out.println();
//		
		 //초기값 설정
		int pg=1; 
        String region = "서울특별시";
        String word ="dummyString";
       
        //파라미터 값이 있을시 값을 받아옴
        if(str_pg!=null){
            pg=Integer.parseInt(str_pg);
        }
        if(web_region!=null) {
    	region=web_region;
        }
        if(web_word!=null) {
        	word=web_word;   
	    	 //정규표현식(특수문자 제외)에 맞지않는 검색어는 공백으로 처리
	        String pattern="^[A-Za-z가-힣0-9]*$";
	        if(!Pattern.matches(pattern, word)) {
	        	word="dummyString";
	        }
        }
        
//        System.out.println("설정된 파라미터 값");
//        System.out.println("------------------------------------");
//		System.out.println("pg : "+pg);
//		System.out.println("region : "+region);
//		System.out.println("word : "+word);
//		System.out.println("======================================");
//		System.out.println();
        int endNum= pg*10;
        int startNum= endNum-9;
        List<TerminalVO> list = 
        		infoService.pagingTerminalBoard(region, word, startNum, endNum);
        int totalC=infoService.CountTerminal(region, word);
        int totalP=(totalC+9)/10;
        
        int startPage=(pg-1)/10*10+1;    
        int endPage=startPage+9;
        if(endPage>totalP) {
            endPage=totalP;
        } 
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("pg", pg);
        modelAndView.addObject("region", region);
        modelAndView.addObject("word", word);
        modelAndView.addObject("list_terminal", list);
        modelAndView.addObject("startPage", startPage);
        modelAndView.addObject("endPage", endPage);
        modelAndView.addObject("totalP", totalP);
        
        modelAndView.addObject("main", "../info/terminal_company_info.jsp");
        modelAndView.setViewName("../main/index.jsp");
        return modelAndView;
	}

	@RequestMapping(value="/info/company_info.do")
	public ModelAndView companyList(HttpServletRequest request) {
		
		String str_pg = request.getParameter("pg");
		String search_word = request.getParameter("word");
		
		int pg=1; 
		String word = "searching";
		if(str_pg!=null){
            pg=Integer.parseInt(str_pg);
        }
		
		if(search_word!=null) {
			word=search_word;
			
		String pattern="^[A-Za-z가-힣0-9]*$";
		      if(!Pattern.matches(pattern, word)) {
		       word="searching";
		}
		}
		int endNum= pg*10;
        int startNum= endNum-9;
        List<CompanyVO> list = infoService.pagingCompanyBoard(word, startNum, endNum);
        int totalC=infoService.CountCompany(word);
        int totalP=(totalC+9)/10;
        
        int startPage=(pg-1)/10*10+1;    
        int endPage=startPage+9;
        if(endPage>totalP) {
            endPage=totalP;
        } 
        
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("pg", pg);
        modelAndView.addObject("list", list);
        modelAndView.addObject("word", word);
        modelAndView.addObject("startPage", startPage);
        modelAndView.addObject("endPage", endPage);
        modelAndView.addObject("totalP", totalP);
        modelAndView.addObject("main", "../info/company_info.jsp");
        modelAndView.setViewName("../main/index.jsp");
        return modelAndView;	        
	}
/*	
	@RequestMapping(value="/info/searching.do")
	public ModelAndView searching(HttpServletRequest request) {
		
		int pg = Integer.parseInt(request.getParameter("pg"));
		String word =request.getParameter("word");
	       
        //파라미터 값이 있을시 값을 받아옴

       System.out.println("word===="+request.getParameter("word"));

       int endNum= pg*10;
        int startNum= endNum-9;
		List<CompanyVO> list = 
        		infoService.searching(word, startNum, endNum);
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
        modelAndView.addObject("main", "../info/company_info_searching.jsp");
        modelAndView.setViewName("../main/index.jsp");
        return modelAndView;	    
		
	}
	*/
}
