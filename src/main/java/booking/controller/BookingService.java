package booking.controller;

import java.util.List;

import booking.bus.bean.BusVO;
import booking.bus.bean.SeatVO;
import booking.ticket.bean.TicketVO;

public interface BookingService {

	int booking(TicketVO ticketVO); // 티켓 예매

	int bookingCancel(String ticket_no); // 티켓 취소

	List<BusVO> busCheck(String arrive_time); // 배차 조회

	SeatVO seatCheck(String ticket_no); // 좌석 조회

	int seatModify(String ticket_no);  // 좌석 수정
	
	List<TicketVO> bookingListCheck(String hp);	// 예매내역 목록 조회
	
	TicketVO bookingCheck(String ticket_no); // 예매내역 조회

	int bookingModify(TicketVO ticketVO); // 티켓번호로 티켓정보 변경

	int payment(String ticket_no); // 티켓 결제
	
}