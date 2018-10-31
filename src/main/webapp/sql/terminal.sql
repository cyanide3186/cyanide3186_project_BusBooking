create table terminal(
    region varchar2(45),    --�ǿ�(����)
    city   varchar2(150),   --�ñ���
    name varchar2(120),     --��Ī
    subtext varchar2(120),      --��ȭ��ȣ/�α�����
    addr varchar2(300),     --�ּ�
    homepage varchar2(300), --Ȩ������
    map varchar2(900)       --�൵
);
--����
commit;

--���� insert
insert into terminal values('��û����','����','���','041-)735-2372','��û���� ���� ���� 1000','','');

--���� Ȯ��
select *from terminal;
--���� ����
update terminal
    set 
        region='',
          city='',
          name='',
          addr='',
        hompage='',
          map=''
     where ;--�������� ���������� ����
     
--**DAO�� �� ������** 
--�������ý� �ڵ����� ����Ʈ (��Ī���� �����ټ� ����)
select * from(select rownum rn, tt.* from (select * from terminal order by name asc) tt)
    where region='��⵵' and (rn>=1 and rn<=5);
--�˻�â�� �ܾ� �Է½� �˻� (���������� ������ ���¿��� ��Ī �� �α��-���ڷδ� �˻�x-���� �˻�
select * from
(select rownum rn, tt.* from (select * from terminal order by name asc) tt)
 where (region = '��⵵' and (name like '%%' or subtext like '%��%')) and (rn>=1 and rn<=5);
--------------------------------------------------------------------------------------------------
**�Ʒ��� ����ٿ��ֱ� �ؼ� �����ϸ�˴ϴ�.
--���� insert
insert all          --�ǿ�/�ñ���/��Ī/�α�����/�ּ�/Ȩ������/�൵
    into terminal values('����Ư����','������','������','1688-5979','���� ������ ���ǵ� 546-1','https://www.ti21.co.kr/','') 
    into terminal values('��⵵','����','����','','��� ���� ������ ��ȭ�� 51','','')
    into terminal values('��⵵','���ý�','����','','��� ���ý� ���õ� 185-245','','')
    into terminal values('��û����','����','���','041-)735-2372','��û���� ���� ���� 1000','','')	
select *from dual;

--��Ī�� �ߺ��� �͹̳� ����
delete from terminal a where ROWID >(select MIN(ROWID) from terminal b where a.name = b.name);
