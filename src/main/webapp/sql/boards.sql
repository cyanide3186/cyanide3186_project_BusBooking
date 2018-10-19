--공지사항 게시판
create table board (
    board_no number,                --게시판 번호
    subject varchar2(50),           --게시판 제목
    content varchar2(2000)          --게시판 내용
    writeday date default sysdate,  --게시판 작성일
);

--고객의 소리
create table questionboard (
    board_no number,                --게시판 번호
    subject varchar2(50),           --게시판 제목
    content varchar2(2000)          --게시판 내용
    writeday date default sysdate,  --게시판 작성일
)