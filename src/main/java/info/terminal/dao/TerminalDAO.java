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
		System.out.println("On TerminalDAO");
		System.out.println("---------------------------");
		System.out.println("region : "+region);
		System.out.println("startNum : "+startNum);
		System.out.println("endNum : "+endNum);
		System.out.println("===========================");
		System.out.println();
		Map<String, Object> map = new HashMap<>();
			map.put("region", region);
			map.put("startNum", startNum);
			map.put("endNum", endNum);
		return sqlSessionTemplate.selectList("mybatis.terminal-mapper.autoListTerminal", map);
	}
	
	//검색기능 사용하는 리스트 출력
	public List<TerminalVO> searchTerminal(String region, String word, int startNum, int endNum){
		Map<String, Object> map = new HashMap<String, Object>();
			map.put("region", region);
			map.put("word", word);
			map.put("startNum", startNum);
			map.put("endNum", endNum);
		return sqlSessionTemplate.selectList("mybatis.terminal-mapper.searchTerminal", map);	
	}
	//목록수 호출
	public int countTerminal() {
		return sqlSessionTemplate.selectOne("mybatis.terminal-mapper.countTerminal");
	}
}
