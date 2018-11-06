create table seat (
    bus_no varchar2(30),     -- 버스번호(1~50)
    bus_seat number,         -- 좌석번호(1~40)
    ticket_no varchar2(100), -- 빈자리여부확인
    arrive_month number,	 -- 출발 월
    arrive_day number,		 -- 출발 일
    
    foreign key (bus_no) references bus (bus_no)
);



create sequence seat_no_seq cycle maxvalue 40 minvalue 1 nocache;

insert into seat values( '1001', seat_no_seq.nextval, null, 11, 01);
select * from bus, seat2 where bus.bus_no = seat2.bus_no;
update seat2 set ticket_no = '20181105' where ARRIVE_DAY = 31;
update seat2 set ticket_no = '20180101' where bus_no = '1001' and arrive_month = 1 and arrive_day = 31;


update seat set ticket_no = null
				, arrive_month = #{resetMonth} 
				, arrive_day = #{resetDay} 
where bus_no	 = #{bus_no}
and arrive_month = #{arrive_month}
and arrive_day	 = #{arrive_day}