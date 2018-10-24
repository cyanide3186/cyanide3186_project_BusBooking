package booking.controller;

import java.util.List;

import booking.bus.bean.BusVO;
import booking.ticket.bean.TicketVO;

public interface BookingService {

   int booking(TicketVO ticketVO);         //티켓 예매
   int bookingCancel(int ticket_no);      //티켓 취소
   List<BusVO> busCheck(BusVO vo);            //노선 조회
   int seatCheck(int ticket_no);         //좌석 조회
   TicketVO bookingCheck(int ticket_no);   //예매내역 조회
   int bookingModify(int ticket_no);            //티켓번호로 예매 변경
   int payment(int ticket_no);            //티켓 결제
}