package booking.bus.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import booking.bus.bean.BusVO;

@Repository
public class BusDAO {
	
	@Autowired 
	private SqlSessionFactory sessionFactory;
	public List<BusVO> busCheck(int bus_no) {
		System.out.println("===> Mybatis로 guestList() 기능 처리");
		return null;
	}
}
