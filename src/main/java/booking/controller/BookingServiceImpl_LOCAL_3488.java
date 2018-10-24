package booking.controller;

import java.util.List;

import booking.bus.bean.BusVO;
import booking.ticket.bean.TicketVO;

public class BookingServiceImpl implements BookingService {
   
   @Override
   public int booking(TicketVO ticketVO) {
      return 0;
   }

   @Override
   public int bookingCancel(int ticket_no) {
      return 0;
   }

   @Override
   public List<BusVO> busCheck(BusVO vo) {
      List<BusVO> list = null;
      return list;
   }

   @Override
   public int seatCheck(int ticket_no) {
      return 0;
   }

   @Override
   public TicketVO bookingCheck(int ticket_no) {
      return null;
   }

   @Override
   public int modify(int ticket_no) {
      return 0;
   }

   @Override
   public int payment(int ticket_no) {
      return 0;
   }

}