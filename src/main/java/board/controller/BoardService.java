package board.controller;

import java.util.List;

import board.bean.BoardVO;

public interface BoardService {
	
	//공지문 입력과 삭제는 Service 단계에서 구현하지 않습니다.
	
	//공지문 페이징
	public List<BoardVO> pagingBoard(int startNum, int endNum);
	
	//공지문 갯수 확인
	public int countBoard() ;
	
	//공지문 확인
	public BoardVO selectBoard(int board_no);
}
