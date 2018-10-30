package info.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import info.company.bean.CompanyVO;


@Component
public class TerminalAndCompanyController {
	/*오토와이어 설정*/
	@Autowired
	InfoService infoService;
	
	//운수사 리스트 목록
	@RequestMapping(value="/info/company_do")
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
		
	}
}
