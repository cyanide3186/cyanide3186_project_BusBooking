package booking.bus.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import booking.bus.bean.BusVO;

@Repository
public class BusDAO {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public List<BusVO> busCheck(BusVO vo) {
		Map<String, BusVO> map=  new HashMap<>();
		map.put("vo", vo);
		return sqlSession.selectList("mybatis.bus-Mapper.busCheck", "map");
	}
	
	
}
