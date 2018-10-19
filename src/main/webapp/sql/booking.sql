--버스 배차정보(1대당)테이블
create table bus(
    bus_no varchar2(30),        --버스번호 (기점-종점 ,출발시각별 개별데이터)
    start_tr varchar2(20),      --기점정보--
    end_tr varchar2(20),        --종점정보--
    company varchar2(30),       --운수회사--
    arrive_time varchar2(36),   --버스 출발시각  
    bus_seats number,           --현재 좌석
    time varchar2(40),          --소요시간--
    payment number              --티켓 1장 요금--
);

--버스 좌석정보    
create table seat (
    bus_no varchar2(30),    --버스번호(1~50)
    bus_seat number,        --좌석번호(1~40)
    ticket_no number      --예약번호
);

--티켓 예매정보    
create table ticket (
    ticket_no number,                    --예약번호
    bus_no  varchar2(30),                --버스번호
    --bus_seat number,                     --좌석번호
    hp1 number,                          --핸드폰번호
    hp2 number,                          --핸드폰번호
    hp3 number,                          --핸드폰번호  
    payday date default sysdate,         --결제날짜
    totalpay    number,                  --총 결제금액
    kid number,                          --아동용예매수
    teen number,                         --청소년예매수
    adult number                         --성인용예매수
);
