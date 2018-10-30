package booking.bus.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import booking.bus.bean.SeatVO;

@Repository
public class SeatDAO {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public SeatVO seatCheck(String ticket_no) {
		return sqlSession.selectOne("mybatis.seat-Mapper.seatCheck", ticket_no);
	}
	
	public int seatModify(String ticket_no) {
		 return sqlSession.update("mybatis.seat-Mapper.seatModify", ticket_no);
	}
	
	public int payment(String ticket_no) {
		 return sqlSession.insert("mybatis.seat-Mapper.booking", ticket_no);
	}
	
	// 버스 좌석 목록 조회
	public List<SeatVO> getSeatList(String bus_no) {
		return sqlSession.selectList("mybatis.seat-Mapper.getSeatList", bus_no);
	}
	
}
