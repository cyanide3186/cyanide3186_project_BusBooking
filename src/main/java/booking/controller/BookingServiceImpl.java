package booking.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import booking.bus.bean.BusVO;
import booking.bus.bean.SeatVO;
import booking.bus.dao.BusDAO;
import booking.bus.dao.SeatDAO;
import booking.ticket.bean.TicketVO;
import booking.ticket.dao.TicketDAO;
import info.terminal.bean.TerminalVO;

@Service
public class BookingServiceImpl implements BookingService {
	@Autowired
	private BusDAO busDAO;

	@Autowired
	private SeatDAO seatDAO;

	@Autowired
	private TicketDAO ticketDAO;

	@Override
	public List<BusVO> busCheck(BusVO busVO) {
		return busDAO.busCheck(busVO);
	}

	@Override
	public int busListCount(BusVO busVO) {
		return busDAO.busListCount(busVO);
	}
	
	@Override
	public int booking(TicketVO ticketVO) {
		return ticketDAO.booking(ticketVO);
	}

	@Override
	public int bookingCancel(String ticket_no) {
		return ticketDAO.bookingCancel(ticket_no);
	}

	@Override
	public List<TicketVO> bookingListCheck(String hp) {
		return ticketDAO.bookingListCheck(hp);
	}

	@Override
	public TicketVO bookingCheck(String ticket_no) {
		return ticketDAO.bookingCheck(ticket_no);
	}

	@Override
	public List<SeatVO> getSeatList(String bus_no) {
		return seatDAO.getSeatList(bus_no);
	}
	
	@Override
	public int bookingModify(TicketVO ticketVO) {
		return ticketDAO.bookingModify(ticketVO);
	}

	@Override
	public SeatVO seatCheck(String ticket_no) {
		return seatDAO.seatCheck(ticket_no);
	}

	@Override
	public int payment(String ticket_no) {
		return seatDAO.payment(ticket_no);
	}

	@Override
	public int seatModify(String ticket_no) {
		return seatDAO.seatModify(ticket_no);
	}


	@Override
	public List<String> timeCheck(String arrive_time) {
		return busDAO.timeCheck(arrive_time);
	}

	public List<BusVO> busList() {
		
		return busDAO.busList();
	}

	@Override
	public void seatReset(String bus_no) {
		seatDAO.seatReset(bus_no);
	}

	@Override
	public List<TerminalVO> regionList() {
	
		return busDAO.regionList();
	}
}