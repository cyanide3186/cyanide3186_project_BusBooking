package info.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import info.company.bean.CompanyVO;


@Controller
public class TerminalAndCompanyController {
	/*오토와이어 설정*/
	@Autowired
	InfoService infoService;
	
	//운수사 리스트 목록
	
	@RequestMapping(value="/info/company_info.do")
	public ModelAndView companyList(HttpServletRequest request) {
		System.out.println("pg="+request.getParameter("pg"));;
		int pg = Integer.parseInt(request.getParameter("pg"));
		
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
	        modelAndView.addObject("main", "../info/company_info.jsp");
	        modelAndView.setViewName("../main/index.jsp");
	        return modelAndView;	        
	}
/*	
	@RequestMapping(value="/info/companyList.do")
	public ModelAndView ListCompany(HttpServletRequest request) {
        int pg = Integer.parseInt(request.getParameter("pg"));
        //int pg=1;
        if(str_pg!=null){
            pg=Integer.parseInt(str_pg);
        }
        System.out.println("컴퍼니리스트 두");
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
	
/*	@RequestMapping(value="/info/terminal_company_info_json.do")
	public ModelAndView terminal_company_info_json(HttpServletRequest request)throws Exception {
		
		System.out.println("글 목록 json 처리");
		int pg = Integer.parseInt(request.getParameter("pg"));
		System.out.println("pg="+pg);
		int endNum = pg * 10;
		int startNum = endNum - 9;
		
		List<CompanyVO> list = infoService.pagingCompanyBoard(startNum, endNum);
		
		String rt = null;
		int total = list.size(); 	//조회된 데이터 수
		if(total > 0) {
			rt = "OK";
		}else {
			rt = "FAIL";
		}
		
		JSONObject json = new JSONObject();
		json.put("rt", rt);
		json.put("total", total);
		
		if(total < 0) {
			JSONArray items = new JSONArray();
			for(int i=0; i<list.size(); i++) {
				CompanyVO companyVO = list.get(i);
				JSONObject temp = new JSONObject();
				temp.put("name", companyVO.getName());
				temp.put("tel", companyVO.getTel());
				temp.put("addr", companyVO.getAddr());
				
				items.put(i, temp);
			}
			json.put("items", items);
		}
		System.out.println(json);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("json", json);
		modelAndView.setViewName("terminal_company_info_Json.jsp");
		return modelAndView;
	}*/
}
