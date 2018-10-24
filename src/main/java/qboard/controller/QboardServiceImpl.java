package qboard.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import qboard.bean.QboardVO;
import qboard.dao.QboardDAO;

@Service
public class QboardServiceImpl implements QboardService {

	@Autowired
	private QboardDAO qboardDAO;
	
	@Override
	public int qboardWrite(QboardVO qboardVO) {
		return qboardDAO.qboardWrite(qboardVO);
	}

}
