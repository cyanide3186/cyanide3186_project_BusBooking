package booking.ticket.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import booking.ticket.bean.TicketVO;

@Repository
public class TicketDAO {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	// 예약 등록
	public int booking(TicketVO ticketVO) {
	    return sqlSession.insert("mybatis.ticket-Mapper.booking", ticketVO);
	}
	
	// 예약 취소
	public int bookingCancel(String ticket_no) {
		return sqlSession.update("mybatis.ticket-Mapper.bookingCancel", ticket_no);
	}

	// 예약 내역 목록 조회
	public List<TicketVO> bookingListCheck(String hp) {
		return sqlSession.selectList("mybatis.ticket-Mapper.bookingListCheck", hp);
	}
	
	// 예약 개별 조회
	public TicketVO bookingCheck(String ticket_no) {
		return sqlSession.selectOne("mybatis.ticket-Mapper.bookingCheck", ticket_no);
	}
	
	
	// 예약 수정
	public int bookingModify(TicketVO ticketVO) {
		return sqlSession.update("mybatis.ticket-Mapper.bookingModify", ticketVO);
	}
	
}
