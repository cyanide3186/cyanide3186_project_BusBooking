package booking.ticket.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import booking.ticket.bean.TicketVO;

@Repository
public class TicketDAO {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public int booking(TicketVO ticketVO) {
	    return sqlSession.insert("mybatis.ticket-Mapper.booking", ticketVO);
	}
	
	public int bookingCancel(String ticket_no) {
		return sqlSession.update("mybatis.ticket-Mapper.bookingCancel", ticket_no);
	}

	public TicketVO bookingCheck(String ticket_no) {
		return sqlSession.selectOne("mybatis.ticket-Mapper.bookingCheck", ticket_no);
	}
	
	public int bookingModify(String ticket_no) {
		return sqlSession.update("mybatis.ticket-Mapper.bookingModify", ticket_no);
	}
	
}
