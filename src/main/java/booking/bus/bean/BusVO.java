package booking.bus.bean;

public class BusVO { //버스정보 DTO - table bus와 대응
	
	private String bus_no;		//버스번호 (기점-종점 ,출발시각별 개별데이터)
    private String start_tr;	//기점정보
    private String end_tr;  	//종점정보
    private String company; 	//운수회사
    private int arrive_time;	//버스 출발시각  
    private int time; 		//소요시간
    private int payment; 		//티켓 1장 요금
    
    private int bus_seats; 		//잔여 좌석 (최대 40)
    private int arrive_day;		// 출발 일자
    private int arrive_month;	// 출발 월
	
    public String getBus_no() {
		return bus_no;
	}
	public void setBus_no(String bus_no) {
		this.bus_no = bus_no;
	}
	public String getStart_tr() {
		return start_tr;
	}
	public void setStart_tr(String start_tr) {
		this.start_tr = start_tr;
	}
	public String getEnd_tr() {
		return end_tr;
	}
	public void setEnd_tr(String end_tr) {
		this.end_tr = end_tr;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public int getArrive_time() {
		return arrive_time;
	}
	public void setArrive_time(int arrive_time) {
		this.arrive_time = arrive_time;
	}
	public int getTime() {
		return time;
	}
	public void setTime(int time) {
		this.time = time;
	}
	public int getPayment() {
		return payment;
	}
	public void setPayment(int payment) {
		this.payment = payment;
	}
	public int getBus_seats() {
		return bus_seats;
	}
	public void setBus_seats(int bus_seats) {
		this.bus_seats = bus_seats;
	}
	public int getArrive_day() {
		return arrive_day;
	}
	public void setArrive_day(int arrive_day) {
		this.arrive_day = arrive_day;
	}
	public int getArrive_month() {
		return arrive_month;
	}
	public void setArrive_month(int arrive_month) {
		this.arrive_month = arrive_month;
	}
}
