create table ticket (
    ticket_no varchar2(100) primary key,        --�����ȣ            
    bus_no  varchar2(30),                	--������ȣ
    bus_seat number,                     	--�¼���ȣ
    hp1 number,                          	--�ڵ�����ȣ
    hp2 number,                         	--�ڵ�����ȣ
    hp3 number,                         	--�ڵ�����ȣ  
    payday date default sysdate,        	--������¥
    totalpay    number,                  	--�� �����ݾ�
    kid number,                          	--�Ƶ��뿹�ż�
    teen number,                        	--û�ҳ⿹�ż�
    adult number                        	--���ο뿹�ż�    
    cancle_check varchar2(2)			--���� ��� ����
);