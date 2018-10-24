create table ticket (
    ticket_no varchar2(100) primary key,        --�����ȣ            
    hp1 number,                          	--�ڵ�����ȣ
    hp2 number,                         	--�ڵ�����ȣ
    hp3 number,                         	--�ڵ�����ȣ  
    kid number,                          	--�Ƶ��뿹�ż�
    teen number,                        	--û�ҳ⿹�ż�
    adult number,                       	--���ο뿹�ż�  
    totalpay    number,                  	--�� �����ݾ�
    cancle_check varchar2(2),			--���� ��� ����
    payday date default sysdate        	--������¥
);