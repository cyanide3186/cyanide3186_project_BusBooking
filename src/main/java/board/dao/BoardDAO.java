package board.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import board.bean.BoardVO;

@Repository
public class BoardDAO {
	/*@Autowired
	SqlSession sqlSession;
	
	//공지문 입력 (사용 X) 
	public int insertBoard(BoardVO boardVO) {
		return sqlSession.insert("mybatis.board-Mapper.insertBoard", boardVO);
	}
	
	//공지문 삭제 (사용 X)
	public int deleteBoard(int board_no) {
		return sqlSession.delete("mybatis.board-Mapper.deleteBoard", board_no);
	}
	
	//공지문 페이징
	public List<BoardVO> pagingBoard(int startNum, int endNum){
		Map<String, Integer> map=  new HashMap<>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		return sqlSession.selectList("mybatis.board-Mapper.pagingBoard", "map");
	}
	
	//공지문 갯수 확인
	public int countBoard() {
		return sqlSession.selectOne("mybatis.board-Mapper.countBoard");
	}
	
	//공지문 확인
	public BoardVO selectBoard(int board_no) {
		return sqlSession.selectOne("mybatis.board-Mapper.selectBoard", board_no);
	}*/
}
