package board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import board.bean.BoardVO;
import board.dao.BoardDAO;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	BoardDAO boardDAO;
	
	@Override
	//공지문 페이징
	public List<BoardVO> pagingBoard(int startNum, int endNum) {
		return boardDAO.pagingBoard(startNum, endNum);
	}

	@Override
	//공지문 갯수 확인
	public int countBoard() {
		return boardDAO.countBoard();
	}

	@Override
	//공지문 확인
	public BoardVO selectBoard(int board_no) {
		return boardDAO.selectBoard(board_no);
	}


}
