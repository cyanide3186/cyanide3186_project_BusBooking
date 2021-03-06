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
		 return sqlSession.insert("mybatis.seat-Mapper.payment", ticket_no);
	}

	// 버스 좌석 목록 조회
	public List<SeatVO> getSeatList(SeatVO seatVO) {
		return sqlSession.selectList("mybatis.seat-Mapper.getSeatList", seatVO);
	}

	// 좌석 예약 상태로 변경
	public int seatBooking(SeatVO seatVO) {
		System.out.println(seatVO.getBus_no());
		System.out.println(seatVO.getBus_seat());
		System.out.println(seatVO.getArrive_month());
		System.out.println(seatVO.getArrive_day());
		System.out.println(seatVO.getTicket_no());
		return sqlSession.update("mybatis.seat-Mapper.seatBooking", seatVO);
	}
	
	// 예약 좌석 취소
	public int seatCancle(String ticket_no) {
		return sqlSession.update("mybatis.seat-Mapper.seatCancle", ticket_no);
	}
	
	// 좌석 초기화 (seat 테이블의 ticket_no를 null로 변경한다)
	public int seatReset(SeatVO seatVO) {
		return sqlSession.update("mybatis.seat-Mapper.seatReset", seatVO);
	}

	public int seatDelete(long expiration) {
		return sqlSession.delete("mybatis.seat-Mapper.seatDelete", expiration);
	}
	
	public int seatInsert(SeatVO seatVO) {
		return sqlSession.insert("mybatis.seat-Mapper.seatInsert", seatVO);
	}

	public List<SeatVO> seatInfo(long expiration) {
		return sqlSession.selectList("mybatis.seat-Mapper.seatInfo", expiration);
	}

	public long maxDay(String bus_no) {
		return sqlSession.selectOne("mybatis.seat-Mapper.maxDay", bus_no);
	}

	public int seatUpdate(SeatVO seatVO) {
		return sqlSession.update("mybatis.seat-Mapper.seatUpdate", seatVO);
	}
	
	public int seatCreate(SeatVO seatVO) {
		return sqlSession.insert("mybatis.seat-Mapper.seatCreate", seatVO);
	}
	
	public List<SeatVO> test(String bus_no) {
		return sqlSession.selectList("mybatis.seat-Mapper.test", bus_no);
	}
}
