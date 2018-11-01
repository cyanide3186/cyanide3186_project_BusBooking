package board.bean;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

public class asd {

	public static void main(String[] args) {
		Calendar now = Calendar.getInstance();
		int month = ((now.get(1)*10000)+((now.get(2)+1)*100)+now.get(5));
		int time = (((now.get(11)*100)+now.get(12))-100);
		System.out.println(month);
		System.out.println(time);
	}

}

