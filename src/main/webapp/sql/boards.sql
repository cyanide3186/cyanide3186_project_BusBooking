--공지사항 게시판
create table board (
    board_no number,                --게시판 번호
    subject varchar2(50),           --게시판 제목
    content varchar2(2000)          --게시판 내용
    writeday date default sysdate,  --게시판 작성일
);

--게시판 시퀸스
create sequence board_seq nocache nocycle;
--데이터 저장
commit;
--공지판 확인
select *from board;
--공지문 삭제
delete from board where board_no=2;
--공지문 입력
insert into board values(board_seq.nextval,'공지입니다','현재 페이지 개발중입니다. 11월 초순경에 개발이 끝납니다.',sysdate);

--공지문 선택
select *from board where board_no=1;

--공지문 갯수 확인
select count(*)from board;

--공지문 페이징
select board_no, subject, to_char(writeday, 'YYYY.MM.DD') as writeday 
from(select rownum rn, tt.* from (select * from board order by board_no desc) tt)where rn>=1 and rn<=5;
----------------------------------------------------------------------------------board내용//



--고객의 소리
create table questionboard (
    board_no number,                --게시판 번호
    subject varchar2(50),           --게시판 제목
    content varchar2(2000)          --게시판 내용
    writeday date default sysdate,  --게시판 작성일
)