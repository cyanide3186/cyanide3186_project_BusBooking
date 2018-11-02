package booking.ticket.bean;

public class TicketVO {
	private String ticket_no;	   // 예약번호
	private String bus_no;		   // 버스번호
	private int seat_no;		   // 좌석번호
	private int hp;        	       // 핸드폰번호 
	private int age_group;         // 0 - 성인. 1 - 어린이. 2 - 청소년
	private int totalpay;          // 결제금액
	private String cancle_check;   // 취소 여부확인.  취소되면 y  
	private String payday;         // 결제일
	private String arrive_day;	   // 출발일자
	
	public String getTicket_no() {
		return ticket_no;
	}
	public void setTicket_no(String ticket_no) {
		this.ticket_no = ticket_no;
	}
	public String getBus_no() {
		return bus_no;
	}
	public void setBus_no(String bus_no) {
		this.bus_no = bus_no;
	}
	public int getSeat_no() {
		return seat_no;
	}
	public void setSeat_no(int seat_no) {
		this.seat_no = seat_no;
	}
	public int getHp() {
		return hp;
	}
	public void setHp(int hp) {
		this.hp = hp;
	}
	public int getAge_group() {
		return age_group;
	}
	public void setAge_group(int age_group) {
		this.age_group = age_group;
	}
	public int getTotalpay() {
		return totalpay;
	}
	public void setTotalpay(int totalpay) {
		this.totalpay = totalpay;
	}
	public String getCancle_check() {
		return cancle_check;
	}
	public void setCancle_check(String cancle_check) {
		this.cancle_check = cancle_check;
	}
	public String getPayday() {
		return payday;
	}
	public void setPayday(String payday) {
		this.payday = payday;
	}
	public String getArrive_day() {
		return arrive_day;
	}
	public void setArrive_day(String arrive_day2) {
		this.arrive_day = arrive_day2;
	}
	
}
