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
	
	// 버스 테이블 조회
	public List<BusVO> getBus(){
		return sqlSession.selectList("mybatis.bus-Mapper.getBus");
	}
	
	// 버스 좌석 초기화
	public int seatReset(String bus_no) {
		return sqlSession.update("mybatis.bus-Mapper.seatReset", bus_no);
	}
}
