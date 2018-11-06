package booking.bus.bean;

public class SeatVO {			//좌석정보 DTO - tabel seat와 대응
	private String bus_no;		//버스번호-BusVO, ticketVO와 호응
    private int bus_seat;		//(1~40)
    private int arrive_month;	//출발 월
    private int arrive_day;		//출발 일
    
    private String ticket_no;		//예약번호
	private long expiration; // 티켓만료시간
    
    private int resetMonth;
    private int resetDay;
	
    
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
	public int getArrive_month() {
		return arrive_month;
	}
	public void setArrive_month(int arrive_month) {
		this.arrive_month = arrive_month;
	}
	public int getArrive_day() {
		return arrive_day;
	}
	public void setArrive_day(int arrive_day) {
		this.arrive_day = arrive_day;
	}
	public String getTicket_no() {
		return ticket_no;
	}
	public void setTicket_no(String ticket_no) {
		this.ticket_no = ticket_no;
	}
	public long getExpiration() {
		return expiration;
	}
	public void setExpiration(long expiration) {
		this.expiration = expiration;
	}
	public int getResetMonth() {
		return resetMonth;
	}
	public void setResetMonth(int resetMonth) {
		this.resetMonth = resetMonth;
	}
	public int getResetDay() {
		return resetDay;
	}
	public void setResetDay(int resetDay) {
		this.resetDay = resetDay;
	}
	

	



}
