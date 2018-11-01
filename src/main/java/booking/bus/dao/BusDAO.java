package booking.bus.dao;

import java.util.List;

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
	public List<BusVO> busCheck(BusVO busVO) {
		return sqlSession.selectList("mybatis.bus-Mapper.busCheck", busVO);
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

	// 터미널 지역 목록 리스트
	public List<TerminalVO> regionList() {
		return sqlSession.selectList("mybatis.bus-Mapper.regionList");
	}

	// 지역별선택 드롭다운 선택시 드롭다운 터미널 목록 리스트
	public List<TerminalVO> terminalList(String region) {
		return sqlSession.selectList("mybatis.bus-Mapper.terminalList",region);
	}
}
