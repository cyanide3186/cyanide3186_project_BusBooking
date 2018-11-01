package info.company.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import info.company.bean.CompanyVO;

@Repository
public class CompanyDAO {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	//운수사 리스트
	public List<CompanyVO> pagingCompanyBoard(int startNum, int endNum){
		Map<String, Object> map=  new HashMap<>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);

		System.out.println("---------------------------");
		System.out.println("startNum : "+startNum);
		System.out.println("endNum : "+endNum);
		System.out.println("===========================");
		return sqlSessionTemplate.selectList("mybatis.company-mapper.pagingCompanyBoard", map);
	}

	//운수사 검색 리스트
	public List<CompanyVO> searchCompany(String word, int startNum, int endNum) {
		Map<String, Object> map = new HashMap<>();
		map.put("word", word);
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		
		System.out.println("---------------------------");
		System.out.println("word : "+word);
		System.out.println("startNum : "+startNum);
		System.out.println("endNum : "+endNum);
		System.out.println("===========================");
	return sqlSessionTemplate.selectList("mybatis.company-mapper.searchCompany", map);
	}
	
	//운수사 리스트 갯수
	public int CountAllCompany() {
		return sqlSessionTemplate.selectOne("mybatis.company-mapper.CountAllCompany");
	}
	
	public int CountSelectedCompany(String word) {
		return sqlSessionTemplate.selectOne("mybatis.company-mapper.CountSelectedCompany",word);
	}
}
