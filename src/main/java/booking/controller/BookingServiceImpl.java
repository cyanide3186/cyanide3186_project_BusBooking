package booking.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import booking.bus.bean.BusVO;
import booking.bus.dao.BusDAO;
import booking.bus.dao.SeatDAO;
import booking.ticket.bean.TicketVO;
import booking.ticket.dao.TicketDAO;


@Service
public class BookingServiceImpl implements BookingService {
	@Autowired
	private BusDAO busDAO;
	
	@Autowired
	private SeatDAO seatDAO;
	
	@Autowired
	private TicketDAO ticketDAO;
	
   @Override
   public int booking(TicketVO ticketVO) {
      return ticketDAO.booking(ticketVO);
   }

   @Override
   public int bookingCancel(String ticket_no) {
      return ticketDAO.bookingCancel(ticket_no);
   }

   @Override
   public List<BusVO> busCheck(BusVO vo) {
      return busDAO.busCheck(vo);
   }

   @Override
   public int seatCheck(String ticket_no) {
      return seatDAO.seatCheck(ticket_no);
   }

   @Override
   public TicketVO bookingCheck(String ticket_no) {
      return ticketDAO.bookingCheck(ticket_no);
   }

   @Override
   public int bookingModify(String ticket_no) {
      return ticketDAO.bookingModify(ticket_no);
   }

   @Override
   public int payment(String ticket_no) {
      return seatDAO.payment(ticket_no);
   }

   @Override
   public int seatModify(String ticket_no) {
	  return seatDAO.seatModify(ticket_no);
   }
}