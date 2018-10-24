package booking.ticket.bean;

public class TicketVO {
	private String ticket_no;	   // 예약번호
	private int hp1;               // 핸드폰번호1 
	private int hp2;               // 핸드폰번호2
	private int hp3;               // 핸드폰번호3
	private String payday;         // 결제일
	private int totalpay;          // 총 결제금액
	private int kid;               // 어린이 예약 수
	private int teen;              // 청소년 예약 수
	private int adult;             // 성인 예약 수
	private String cancle_check;   // 취소 여부확인.  취소되면 y  
	
	public String getTicket_no() {
		return ticket_no;
	}
	public void setTicket_no(String ticket_no) {
		this.ticket_no = ticket_no;
	}
	public int getHp1() {
		return hp1;
	}
	public void setHp1(int hp1) {
		this.hp1 = hp1;
	}
	public int getHp2() {
		return hp2;
	}
	public void setHp2(int hp2) {
		this.hp2 = hp2;
	}
	public int getHp3() {
		return hp3;
	}
	public void setHp3(int hp3) {
		this.hp3 = hp3;
	}
	public String getPayday() {
		return payday;
	}
	public void setPayday(String payday) {
		this.payday = payday;
	}
	public int getTotalpay() {
		return totalpay;
	}
	public void setTotalpay(int totalpay) {
		this.totalpay = totalpay;
	}
	public int getKid() {
		return kid;
	}
	public void setKid(int kid) {
		this.kid = kid;
	}
	public int getTeen() {
		return teen;
	}
	public void setTeen(int teen) {
		this.teen = teen;
	}
	public int getAdult() {
		return adult;
	}
	public void setAdult(int adult) {
		this.adult = adult;
	}
	public String getCancle_check() {
		return cancle_check;
	}
	public void setCancle_check(String cancle_check) {
		this.cancle_check = cancle_check;
	}
	
}
