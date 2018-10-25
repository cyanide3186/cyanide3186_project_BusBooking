create table ticket (
    ticket_no varchar2(100) primary key,    --예약번호          
    hp1 number,                          	--핸드폰번호
    hp2 number,                         	--핸드폰번호
    hp3 number,                         	--핸드폰번호
    kid number,                          	--아동용예매수
    teen number,                        	--청소년예매수
    adult number,                       	--성인용예매수
    totalpay    number,                  	--총 결제금액
    cancle_check varchar2(2),				--예약 취소 여부
    payday date default sysdate        		--결제날짜
);