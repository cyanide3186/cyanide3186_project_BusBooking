create table seat (
    seq number,             --총좌석번호(1~2000)
    bus_no varchar2(30),    --버스번호(1~50)
    bus_seat number,        --좌석번호(1~40)
    state varchar2(10)      --빈자리여부확인
);