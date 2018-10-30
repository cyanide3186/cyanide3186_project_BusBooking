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

	// 좌석 예약 상태로 변경
	public int seatBooking(SeatVO seatVO) {
		return sqlSession.update("mybatis.seat-Mapper.seatBooking", seatVO);
	}
	
	// 예약 좌석 취소
	public int seatCancle(SeatVO seatVO) {
		return sqlSession.update("mybatis.seat-Mapper.seatCancle", seatVO);
	}
	
	// 좌석 초기화 (seat 테이블의 ticket_no를 null로 변경한다)
	public int seatReset(String bus_no) {
		return sqlSession.update("mybatis.seat-Mapper.seatReset", bus_no);
	}
}
