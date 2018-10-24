package booking.ticket.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import booking.bus.bean.BusVO;
import booking.ticket.bean.TicketVO;

@Repository
public class TicketDAO {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public int booking(TicketVO ticketVO) {
	    return sqlSession.insert("mybatis.ticket-Mapper.booking", ticketVO);
	}
	
	public int bookingCancel(int ticket_no) {
		return sqlSession.delete("mybatis.ticket-Mapper.bookingCancel", ticket_no);
	}
	
	public List<BusVO> busCheck(BusVO vo) {
		Map<String, BusVO> map=  new HashMap<>();
		map.put("vo", vo);
		return sqlSession.selectList("mybatis.bus-Mapper.busCheck", "map");
	}
	
	public int seatCheck(int ticket_no) {
		return sqlSession.selectOne("mybatis.seat-Mapper.seatCheck", ticket_no);
	}
	
	public TicketVO bookingCheck(int ticket_no) {
		return sqlSession.selectOne("mybatis.ticket-Mapper.bookingCheck", ticket_no);
	}
	
	public int bookingModify(int ticket_no) {
		return sqlSession.selectOne("mybatis.ticket-Mapper.bookingModify", ticket_no);
	}
	
	public int payment(int ticket_no) {
		 return sqlSession.insert("mybatis.seat-Mapper.booking", ticket_no);
	}
}
