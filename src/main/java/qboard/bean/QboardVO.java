package qboard.bean;

public class QboardVO {	//고객의소리 게시판DTO-table qboard와 대응

   private int board_no; 	//게시판 번호
   private String subject; 	//게시판 제목
   private String content; 	//게시판 내용
   private String writeday;	//게시판 작성일
   
  
    public QboardVO() { //빈 생성자
	   
    }
	
    //Getters&Setter
	public int getBoard_no() {
		return board_no;
	}
	
	
	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}
	
	
	public String getSubject() {
		return subject;
	}
	
	
	public void setSubject(String subject) {
		this.subject = subject;
	}
	
	
	public String getContent() {
		return content;
	}
	
	
	public void setContent(String content) {
		this.content = content;
	}
	
	
	public String getWriteday() {
		return writeday;
	}
	
	
	public void setWriteday(String writeday) {
		this.writeday = writeday;
	}
	   
	   
}
