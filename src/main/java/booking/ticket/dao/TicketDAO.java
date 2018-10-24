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
		return sqlsession.insert("", vo);
	}
}
