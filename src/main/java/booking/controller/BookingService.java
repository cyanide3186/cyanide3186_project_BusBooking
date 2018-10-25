package booking.controller;

import java.util.List;

import booking.bus.bean.BusVO;
import booking.ticket.bean.TicketVO;

public interface BookingService {

   int booking(TicketVO ticketVO);         //티켓 예매
   int bookingCancel(String ticket_no);      //티켓 취소
   List<BusVO> busCheck(BusVO vo);            //노선 조회
   int seatCheck(String ticket_no);         //좌석 조회
   TicketVO bookingCheck(String ticket_no);   //예매내역 조회
   int bookingModify(String ticket_no);      //티켓번호로 티켓정보 변경
   int seatModify(String ticket_no);
   int payment(String ticket_no);            //티켓 결제
}