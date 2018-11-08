package booking.controller;

import java.util.List;

import booking.bus.bean.BusVO;
import booking.bus.bean.SeatVO;
import booking.ticket.bean.TicketVO;
import info.terminal.bean.TerminalVO;

public interface BookingService {

	// TicketDAO
	int booking(TicketVO ticketVO);				// 티켓 예매
	int bookingCancel(String ticket_no); 		// 티켓 취소
	List<TicketVO> bookingListCheck(String hp);	// 예매내역 목록 조회
	TicketVO bookingCheck(String ticket_no); 	// 예매내역 조회
	int bookingModify(TicketVO ticketVO); 		// 티켓번호로 티켓정보 변경
	int payment(String ticket_no); 				// 티켓 결제

	
	// BusDAO
	List<BusVO> busCheck(BusVO busVO, int start_num, int end_num); 		// 배차 조회
	int busListCount(BusVO busVO, int arrive_day, int arrive_month); 	// 배차 조회 목록 수
	List<BusVO> busList(); 												// 터미널 목록 조회
	List<BusVO> getBusList();											// seat, bus 테이블 조인 전체 조회
	
	// SeatDAO
	int seatCreate(SeatVO seatVO);				// 좌석 일괄 생성 기능
	SeatVO seatCheck(String ticket_no); 		// 좌석 조회
	List<SeatVO> getSeatList(SeatVO seatVO); 	// 버스 좌석 목록 조회
	int seatModify(String ticket_no); 			// 좌석 수정
	int seatCancle(String ticket_no);  			// 좌석 예약취소
	void seatReset(SeatVO seatVO);				// 좌석 초기화
	void seatInsert(SeatVO seatVO);
	void seatDelete(long expiration);
	List<SeatVO> seatInfo(long expiration);
	List<SeatVO> test(String bus_no);
	
	
	// ?
	List<TerminalVO> regionList(); //지역 목록 조회
	List<TerminalVO> terminalList(String region); //지역별 선택 드롭다운 선택시 목록 출력
	public List<TerminalVO> terminalAllList();

	long maxDay(String bus_no);
	List<BusVO> getBus_noList();
	
	


	
	

	
	

}