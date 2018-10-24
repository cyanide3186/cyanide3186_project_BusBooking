--���� ��������(1���)���̺�
create table bus(
    bus_no varchar2(30),        --������ȣ (����-���� ,��߽ð��� ����������)
    start_tr varchar2(20),      --��������--
    end_tr varchar2(20),        --��������--
    company varchar2(30),       --���ȸ��--
    arrive_time varchar2(36),   --���� ��߽ð�  
    bus_seats number,           --���� �¼�
    time varchar2(40),          --�ҿ�ð�--
    payment number              --Ƽ�� 1�� ���--
);

--���� �¼�����    
create table seat (
    bus_no varchar2(30),    --������ȣ(1~50)
    bus_seat number,        --�¼���ȣ(1~40)
    ticket_no number      --�����ȣ
);

--Ƽ�� ��������    
create table ticket (
    ticket_no number,                    --�����ȣ
    hp1 number,                          --�ڵ�����ȣ
    hp2 number,                          --�ڵ�����ȣ
    hp3 number,                          --�ڵ�����ȣ  
    kid number,                          --�Ƶ��뿹�ż�
    teen number,                         --û�ҳ⿹�ż�
    adult number,                         --���ο뿹�ż�
    totalpay    number,                  --�� �����ݾ�
    payday date default sysdate         --������¥
);
