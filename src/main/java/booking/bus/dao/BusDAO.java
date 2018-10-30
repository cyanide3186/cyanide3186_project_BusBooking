package booking.bus.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import booking.bus.bean.BusVO;

@Repository
public class BusDAO {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public List<BusVO> busCheck(String arrive_time) {
		
		return sqlSession.selectList("mybatis.bus-Mapper.busCheck", arrive_time);
	}

	public List<String> timeCheck(String arrive_time) {
		
		return sqlSession.selectList("mybatis.bus-Mapper.timeCheck", arrive_time);
		
	}

	
}
