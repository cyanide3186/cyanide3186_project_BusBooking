-- 수정 전
create table ticket (
    ticket_no varchar2(100) primary key,    -- 예약번호 
    seat_no number,							-- 예약 좌석 번호
    bus_no number,							-- 예약 버스 번호         
    hp number,                          	-- 핸드폰번호
    age_group number,                       -- 0 - 성인. 1 - 어린이. 2 - 청소년
    totalpay    number,                  	-- 총 결제금액
    cancle_check varchar2(2),				-- 예약 취소 여부
    payday date default sysdate,       		-- 결제날짜
    arrive_day date							-- 출발일자
);

-- 수정 후
create table ticket (
    ticket_no varchar2(100) primary key,    --예약번호          
    hp number,                          	--핸드폰번호
    age_group number,                       -- 0 - 성인. 1 - 어린이. 2 - 청소년
    totalpay    number,                  	-- 총 결제금액
    cancle_check varchar2(2),				-- 예약 취소 여부
    payday date default sysdate,       		-- 결제날짜
    arrive_day date							-- 출발일자
);