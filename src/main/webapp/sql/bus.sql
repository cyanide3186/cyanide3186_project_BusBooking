create table bus(
    bus_no varchar2(30) primary key,	-- 버스번호 (기점 - 종점, 출발 시각별 개별데이터)
    start_tr varchar2(20),      	-- 출발 터미널
    end_tr varchar2(20),       		-- 도착 터미널
    company varchar2(30),      		-- 운수회사
    arrive_time varchar2(36),   	-- 버스 출발 시각
    bus_seats number,           	-- 자여 좌석(최대 40)
    time varchar2(40),          	-- 소요시간
    payment number              	-- 티켓 1장 요금
);

