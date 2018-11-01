package booking.bus.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import booking.bus.bean.BusVO;
import info.terminal.bean.TerminalVO;

@Repository
public class BusDAO {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	// 배차 및 잔여 좌석 수 조회
	public List<BusVO> busCheck(BusVO busVO, int start_num, int end_num) {
		Map<String, Object> map = new HashMap<>();
		
		map.put("start_tr", busVO.getStart_tr());
		map.put("end_tr", busVO.getEnd_tr());
		map.put("arrive_time", busVO.getArrive_time());
		map.put("start_num", start_num);
		map.put("end_num", end_num);
		
		return sqlSession.selectList("mybatis.bus-Mapper.busCheck", map);
	}

	// 터미널 목록 조회
	public List<BusVO> busList() {
		return sqlSession.selectList("mybatis.bus-Mapper.busList");
	}
	
	// 버스 목록 수 조회 
	public int busListCount(BusVO busVO) {
		return sqlSession.selectOne("mybatis.bus-Mapper.busListCount", busVO);
	}

	// 버스 정보 수정
	public int busUpdate(BusVO busVO) {
		return sqlSession.update("mybatis.bus-Mapper.busUpdate", busVO);
	}

	public List<String> timeCheck(String arrive_time) {
		return sqlSession.selectList("mybatis.bus-Mapper.timeCheck", arrive_time);
	}
	//터미널 지역 목록 리스트
	public List<TerminalVO> regionList() {
		return sqlSession.selectList("mybatis.bus-Mapper.regionList");
	}

	public List<BusVO> getBus() {
		return sqlSession.selectList("mybatis.bus-Mapper.getBus");
	}
}
