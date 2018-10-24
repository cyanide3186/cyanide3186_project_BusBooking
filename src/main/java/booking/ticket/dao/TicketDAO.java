package booking.ticket.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import booking.ticket.bean.TicketVO;

@Repository
public class TicketDAO {
	
	@Autowired
	SqlSessionTemplate sqlsession;
	
	public int insertTicket(TicketVO vo) {
		return sqlsession.insert("mybatis.ticket-Mapper.booking", vo);
	}
	
	public int deleteTicket(String ticket_no) {
		return sqlsession.delete("mybatis.ticket-Mapper.bookingCancel", ticket_no);
	}
	
	
}
