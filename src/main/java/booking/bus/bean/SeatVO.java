package booking.bus.bean;

public class SeatVO {	//좌석정보 DTO - tabel seat와 대응
	private String bus_no;	//버스번호-BusVO, ticketVO와 호응
    private int bus_seat;	//(1~40)
    private int ticket_no;	//예약번호

    //빈 생성자
    public SeatVO() {
    	
	}

    //Getters&Setters
	public String getBus_no() {
		return bus_no;
	}


	public void setBus_no(String bus_no) {
		this.bus_no = bus_no;
	}


	public int getBus_seat() {
		return bus_seat;
	}


	public void setBus_seat(int bus_seat) {
		this.bus_seat = bus_seat;
	}


	public int getTicket_no() {
		return ticket_no;
	}


	public void setTicket_no(int ticket_no) {
		this.ticket_no = ticket_no;
	}
    
    
}
