package info.company.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import info.compamy.bean.CompanyVO;

@Repository
public class CompanyDAO {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
/*	//운수사 리스트
	public List<CompanyVO> pagingCompanyBoard(int startNum, int endNum){
		Map<String, Integer> map=  new HashMap<>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		return sqlSessionTemplate.selectList("mybatis.company-mapper.pagingCompanyBoard", map);
	}
	
	//운수사 리스트 갯수
	public int CountCompany() {
		return sqlSessionTemplate.selectOne("mybatis.company-mapper.CountCompany");
	}
	*/
	
}
