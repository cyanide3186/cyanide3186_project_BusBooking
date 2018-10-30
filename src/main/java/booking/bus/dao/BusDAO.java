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
	
	public List<BusVO> busCheck(BusVO busVO) {
		
		return sqlSession.selectList("mybatis.bus-Mapper.busCheck", busVO);
	}
	
	public int busListCount(BusVO busVO) {
		return sqlSession.selectOne("mybatis.bus-Mapper.busListCount", busVO);
	}
}
