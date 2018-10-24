package board.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import board.bean.BoardVO;

@Controller
public class BoardController {
    
    @Autowired
    BoardService boardService;
    
    //공지문 리스트
    @RequestMapping(value="/board/boardList.do")
    public ModelAndView ListBoard(HttpServletRequest request) {
        String str_pg=request.getParameter("pg");
        int pg=1;
        if(str_pg!=null){
            pg=Integer.parseInt(str_pg);
        }
        
        int endNum= pg*5;
        int startNum= endNum-4;
        List<BoardVO> list = boardService.pagingBoard(startNum, endNum);
        int totalC=boardService.countBoard();
        int totalP=(totalC+4)/5;
        
        int startPage=(pg-1)/3*3+1;    
        int endPage=startPage+2;
        if(endPage>totalP) {
            endPage=totalP;
        }
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("pg", pg);
        modelAndView.addObject("list", list);
        modelAndView.addObject("startPage", startPage);
        modelAndView.addObject("endPage", endPage);
        modelAndView.addObject("totalP", totalP);
        
        //테스트용 페이징
        modelAndView.setViewName("../test_jsp/test_list.jsp");
        
        //추후에 페이지 지정시 변경할 항목
        /*modelAndView.addObject("display", "../board/boardList.jsp");
        modelAndView.setViewName("../main/main.jsp");*/
        return modelAndView;
        
    }
    //공지문 읽기
    @RequestMapping(value="/board/boardView.do")
    public ModelAndView Viewboard(HttpServletRequest request, BoardVO boardVO) {
        int pg= Integer.parseInt(request.getParameter("pg"));
        int board_no = Integer.parseInt(request.getParameter("board_no"));
        //BoardDAO boardDAO = new BoardDAO();
        boardVO = boardService.selectBoard(board_no);
        
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("boardVO", boardVO);
        modelAndView.addObject("pg", pg);
        modelAndView.addObject("board_no", boardVO.getBoard_no());
        
        //테스트용 페이징
            modelAndView.setViewName("../test_/jsp/test_view.jsp");
        //추후에 페이지 지정시 변경할 항목
        /*
        modelAndView.addObject("display", "../guestbook/guestBookView.jsp");
        modelAndView.setViewName("../main/main.jsp");
        */
        return modelAndView;
    }
}
