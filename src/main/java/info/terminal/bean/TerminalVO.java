package info.terminal.bean;

public class TerminalVO {
		
		/*변수명 (DB상의 변수와 동일)*/
	 	private String region;	 //권역(지역)
	    private String city; 	 //시군구
	    private String name; 	 //명칭(-전화번호는 괄호로 병기)
	    private String addr; 	 //주소
	    private String homepage; //홈페이지
	    private String map; 	 //약도
	    
	    /*빈 생성자*/
	    public TerminalVO() {

	    }
	    
	    /*Getters&Setters*/
		public String getRegion() {
			return region;
		}

		public void setRegion(String region) {
			this.region = region;
		}

		public String getCity() {
			return city;
		}

		public void setCity(String city) {
			this.city = city;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public String getAddr() {
			return addr;
		}

		public void setAddr(String addr) {
			this.addr = addr;
		}

		public String getHomepage() {
			return homepage;
		}

		public void setHomepage(String homepage) {
			this.homepage = homepage;
		}

		public String getMap() {
			return map;
		}

		public void setMap(String map) {
			this.map = map;
		}
	    
	    /*Getters&Setters*/
	    
	    
}
