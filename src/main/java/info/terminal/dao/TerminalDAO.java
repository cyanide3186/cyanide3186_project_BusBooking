package info.terminal.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import info.terminal.bean.TerminalVO;

@Repository
public class TerminalDAO {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	//리스트 출력
	public List<TerminalVO> listTerminal(String region, int startNum, int endNum){
		Map<String, Object> map = new HashMap<>();
			map.put("region", region);
			map.put("startNum", startNum);
			map.put("endNum", endNum);
		//맵 데이터 확인
//		System.out.println("=============================");	
//		System.out.println("**On Terminal DAO**");	
//		for (String mapkey : map.keySet()){
//	        System.out.println("key:"+mapkey+",value:"+map.get(mapkey));
//	    }
		return sqlSessionTemplate.selectList("mybatis.terminal-mapper.autoListTerminal", map);
	}
	
	//검색기능 사용하는 리스트 출력
	public List<TerminalVO> searchTerminal(String region, String word, int startNum, int endNum){
		
		Map<String, Object> map = new HashMap<>();
			map.put("region", region);
			map.put("word", word);
			map.put("startNum", startNum);
			map.put("endNum", endNum);
		//맵 데이터 확인
//			System.out.println("=============================");	
//			System.out.println("**On Terminal DAO**");	
//			for (String mapkey : map.keySet()){
//		        System.out.println(mapkey+" : "+map.get(mapkey));
//		    }
		
		return sqlSessionTemplate.selectList("mybatis.terminal-mapper.searchTerminal", map);	
	}
	
	//전체 목록수 호출
	public int countAllTerminal(String region) {
		return sqlSessionTemplate.selectOne("mybatis.terminal-mapper.countAllTerminal",region);
	}
	
	//검색 목록수 호출
	public int countSelectedTerminal(String region, String word) {
		Map<String, String> map = new HashMap<>();
			map.put("region", region);
			map.put("word", word);
		return sqlSessionTemplate.selectOne("mybatis.terminal-mapper.countSelectedTerminal",word);
	}
}
