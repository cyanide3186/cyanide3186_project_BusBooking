package qboard.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import qboard.bean.QboardVO;

@Controller
public class QboardController {

	@Autowired
	private QboardService qboardService;
	
	@RequestMapping(value="/main/index.do")
	public ModelAndView index(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("main", "../main/body.jsp");
		modelAndView.setViewName("../main/index.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="/qboard/qboardWriteForm.do")	 // 고객의 소리 작성 폼
	public ModelAndView qboardWriteForm() {
		ModelAndView modelAndView = new ModelAndView();
		
		//추후에 페이지 지정시 변경할 항목
		modelAndView.addObject("main", "../qboard/qboardWriteForm.jsp");
		modelAndView.setViewName("../main/index.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="/qboard/qboardWrite.do")		// 고객의 소리 작성
	public ModelAndView qboardWrite(HttpServletRequest request, HttpSession session) {
		ModelAndView modelAndView = new ModelAndView();
		
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		String subject = request.getParameter("subject");
		String content = request.getParameter("content");

		QboardVO qboardVO = new QboardVO();
		
		qboardVO.setSubject(subject);
		qboardVO.setContent(content);
		
		//DB
		int su = qboardService.qboardWrite(qboardVO);
		
		modelAndView.addObject("su", su);
		
		//추후에 페이지 지정시 변경할 항목
		modelAndView.addObject("main", "../qboard/qboardWrite.jsp");
		modelAndView.setViewName("../main/index.jsp");
		return modelAndView;
		
	}
}
