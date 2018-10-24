--�������� �Խ���
create table board (
    board_no number,                --�Խ��� ��ȣ
    subject varchar2(50),           --�Խ��� ����
    content varchar2(2000)          --�Խ��� ����
    writeday date default sysdate,  --�Խ��� �ۼ���
);

--�Խ��� ������
create sequence board_seq nocache nocycle;
--������ ����
commit;
--������ Ȯ��
select *from board;
--������ ����
delete from board where board_no=2;
--������ �Է�
insert into board values(board_seq.nextval,'�����Դϴ�','���� ������ �������Դϴ�. 11�� �ʼ��濡 ������ �����ϴ�.',sysdate);

--������ ����
select *from board where board_no=1;

--������ ���� Ȯ��
select count(*)from board;

--������ ����¡
select board_no, subject, to_char(writeday, 'YYYY.MM.DD') as writeday 
from(select rownum rn, tt.* from (select * from board order by board_no desc) tt)where rn>=1 and rn<=5;
----------------------------------------------------------------------------------board����//



--���� �Ҹ�
create table questionboard (
    board_no number,                --�Խ��� ��ȣ
    subject varchar2(50),           --�Խ��� ����
    content varchar2(2000)          --�Խ��� ����
    writeday date default sysdate,  --�Խ��� �ۼ���
)