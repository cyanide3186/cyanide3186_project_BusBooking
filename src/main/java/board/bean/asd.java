package board.bean;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import booking.bus.bean.SeatVO;
import booking.controller.BookingService;


public class asd {

	public static void main(String[] args) {
		Calendar now = Calendar.getInstance(); // 현재시간 구하기
		long expiration = ((now.get(1) * 100000000L) + ((now.get(2) + 1) * 1000000) + (now.get(5) * 10000)
				+ (now.get(11) * 100) + ((+now.get(12)) - 100)); 				// 현재 년월일시분	// 달력일정을 현재년월일로 설정
		long maxDay = (now.get(1) * 100000000L) + ((now.get(2) + 1) * 1000000  + (now.getActualMaximum(Calendar.DAY_OF_MONTH)*10000+2459));
		List<SeatVO> seatVO = new ArrayList<SeatVO>();
		long upDay = 201811301709L;	
		long a = maxDay % 100000000; //월,일 추출
		long b = maxDay % 100000000 + 1000000;//월,일 추출
		long limitMonth = (now.get(1) * 100000000L) + 12312459L;
		long limitDay = now.getActualMaximum(Calendar.DAY_OF_MONTH) * 10000;
		long limitNextDay = (now.getActualMaximum(Calendar.DAY_OF_MONTH)+1) * 10000;
		long finalDay = upDay + 1000000;
		long goal = 201812301642L;
		//		long newDay = 2018113
		System.out.println(upDay);
		System.out.println(upDay / 1000000 * 1000000 + 1000000 + 10000);
		System.out.println(upDay / 1000000 * 1000000 + 1000000 + 10000+upDay%10000);
		System.out.println(limitMonth);
		System.out.println((upDay + 10000) / 10000 * 10000);
	}

}

