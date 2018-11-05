create table bus(
    bus_no varchar2(30) primary key,		-- 버스번호 (기점 - 종점, 출발 시각별 개별데이터)
    start_tr varchar2(20) not null,      	-- 출발 터미널
    end_tr varchar2(20) not null,      		-- 도착 터미널
    company varchar2(30) not null,     		-- 운수회사
    arrive_time varchar2(36) not null,   	-- 버스 출발 시각
    time varchar2(40) not null,          	-- 소요시간
    payment number not null             	-- 티켓 1장 요금
);

-- 배차 및 잔여좌석 조회 
select * from (select rownum rn, tt.* from (select  bus_no, start_tr, end_tr, company, arrive_time, time, payment, 
    (select count(*) from seat where bus_no = bus.bus_no and ticket_no is null) as seat_count from bus
where start_tr = '부산' and end_tr = '서울' and arrive_time < 2400 and arrive_time >= 0) tt)
where rn >= 1 and rn <= 3;