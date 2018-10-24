package qboard.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import qboard.bean.QboardVO;

@Repository
public class QboardDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int qboardWrite(QboardVO qboardVO) {
		return sqlSession.insert("mybatis.board-Mapper.qboardWrite", qboardVO);
	}
}
