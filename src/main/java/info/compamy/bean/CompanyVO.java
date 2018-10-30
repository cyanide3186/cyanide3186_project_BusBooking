package info.compamy.bean;

public class CompanyVO {

	/*변수명 (DB상의 변수와 동일)*/
	private String name; //회사명
	private String tel; //전화번호
	private String addr; //주소
	
	/*빈 생성자*/
	public CompanyVO() {

	}

	/*Getters&Setters*/
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}
	
	
}
