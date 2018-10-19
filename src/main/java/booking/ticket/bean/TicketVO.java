package booking.ticket.bean;

public class TicketVO {//예매정보 DTO - table ticket과 대응
	
	private int ticket_no; 	//예약번호
    private String bus_no;	//버스번호-BusVO,SeatVO와 상호작용
    private int hp1; 		//핸드폰번호-앞자리
    private int hp2; 		//핸드폰번호-가운데
    private int hp3; 		//핸드폰번호 -뒷자리 
    private String payday;	//결제날짜
    private int totalpay; 	//총 결제금액
    private int kid; 		//아동용예매수
    private int teen; 		//청소년예매수
    private int adult; 		//성인용예매수
    
    //빈 생성자
    public TicketVO() {
    	
	}

    //Getters&Setters
	public int getTicket_no() {
		return ticket_no;
	}

	public void setTicket_no(int ticket_no) {
		this.ticket_no = ticket_no;
	}

	public String getBus_no() {
		return bus_no;
	}

	public void setBus_no(String bus_no) {
		this.bus_no = bus_no;
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
    
    
}
