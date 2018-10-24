package booking.bus.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SeatDAO {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public int seatCheck(int ticket_no) {
		return sqlSession.selectOne("mybatis.seat-Mapper.seatCheck", ticket_no);
	}
	
	public int payment(int ticket_no) {
		 return sqlSession.insert("mybatis.seat-Mapper.booking", ticket_no);
	}
	
}
