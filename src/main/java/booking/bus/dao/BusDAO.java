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
		map.put("arrive_month", busVO.getArrive_month());
		map.put("arrive_day", busVO.getArrive_day());
		
		//System.out.println("start_tr : " + busVO.getStart_tr());
		//System.out.println("end_tr : " + busVO.getEnd_tr());
		//System.out.println("arrive_time : " + busVO.getArrive_time());
		//System.out.println("start_num : " + start_num);
		//System.out.println("end_num : " + end_num);
		//System.out.println("arrive_month : " + busVO.getArrive_month());
		//System.out.println("arrive_day : " + busVO.getArrive_day());
		
		return sqlSession.selectList("mybatis.bus-Mapper.busCheck", map);
	}

	// 터미널 목록 조회
	public List<BusVO> busList() {
		return sqlSession.selectList("mybatis.bus-Mapper.busList");
	}

	// 버스 목록 수 조회
	public int busListCount(BusVO busVO, int arrive_day, int arrive_month) {
		
		Map<String, Object> map = new HashMap<>();
		map.put("start_tr", busVO.getStart_tr());
		map.put("end_tr", busVO.getEnd_tr());
		map.put("arrive_time", busVO.getArrive_time());
		map.put("arrive_month", arrive_month);
		map.put("arrive_day", arrive_day);
		
		return sqlSession.selectOne("mybatis.bus-Mapper.busListCount", map);
	}

	// 버스 정보 수정
	public int busUpdate(BusVO busVO) {
		return sqlSession.update("mybatis.bus-Mapper.busUpdate", busVO);
	}

	// 터미널 지역 목록 리스트
	public List<TerminalVO> regionList() {
		return sqlSession.selectList("mybatis.bus-Mapper.regionList");
	}


	// 지역별선택 드롭다운 선택시 드롭다운 터미널 목록 리스트
	public List<TerminalVO> terminalList(String region) {
		return sqlSession.selectList("mybatis.bus-Mapper.terminalList",region);
	}

	
	// 검색을 위한 전체 터미널 목록 리스트
	public List<TerminalVO> terminalAllList() {
		return sqlSession.selectList("mybatis.bus-Mapper.terminalAllList");
	}
	

	public List<BusVO> getBusList() {
		return sqlSession.selectList("mybatis.bus-Mapper.getBusList");
	}
	
	public List<BusVO> getBus_noList(){
		return sqlSession.selectList("mybatis.bus-Mapper.getBus_no_List");
	}
}
