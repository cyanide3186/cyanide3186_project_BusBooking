create table seat (
    bus_no varchar2(30),     --버스번호(1~50)
    bus_seat number,         --좌석번호(1~40)
    ticket_no varchar2(100), --빈자리여부확인
    
    foreign key (bus_no) references bus (bus_no)
);