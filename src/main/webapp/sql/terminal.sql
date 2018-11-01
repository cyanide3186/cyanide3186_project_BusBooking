create table terminal(
    region varchar2(45),    --�ǿ�(����)
    city   varchar2(150),   --�ñ���
    name varchar2(120),     --��Ī
    subtext varchar2(120),      --��ȭ��ȣ/�α�����
    addr varchar2(300),     --�ּ�
    homepage varchar2(300), --Ȩ������
    map varchar2(900)       --�൵
);
--Data Save
commit;
-- Single Insert
insert into terminal values('��⵵','','','����','','','');
--Delete Data
delete from terminal where subtext ='����';


--print Data
select *from terminal;
--Update Data
update terminal
    set 
        region='',
          city='',
          name='',
          addr='',
        hompage='',
          map=''
     where ;--�������� ���������� ����
     
--**SQL Query sentences On DAO** 
--AutoList When click Region Buttons
select * from (select rownum rn, tt.* from (select *from terminal 
where region = '��⵵' order by name asc) tt) where rn>=1 and rn<=5;
--Searching terminals(name)
select * from (select rownum rn, tt.* from
(select *from terminal where region = '��⵵' and name like '%��%' order by name asc)
 tt) where rn>=1 and rn<=5;


**Copy & Paste ==>Execute on your Com.
insert all          --region/city/name/subtext/addr/homepage/map
    -- into terminal values('','','','','','','')
    into terminal values('����Ư����','������','������','(1688-5979)','���� ������ ���ǵ� 546-1','https://www.ti21.co.kr/','') 
    into terminal values('��⵵','����','����','','��� ���� ������ ��ȭ�� 51','','')
    into terminal values('��⵵','���ý�','����','','��� ���ý� ���õ� 185-245','','')
    into terminal values('��û����','õ�Ƚ� ������','õ��','(041-640-6400)','��û���� õ�Ƚ� ������ �źε� 356-2','http://www.cheonanterminal.co.kr/','')
    into terminal values('����Ư����','���ʱ�','���ﳲ��','(1688-0540)','���� ���ʱ� ȿ�ɷ� 292','http://www.nambuterminal.com/','')
    into terminal values('����ϵ�','���ֽ� ������','����','(1688-1745)','����ϵ� ���ֽ� ������ �ݾϵ� 705-10','','')
    into terminal values('��󳲵�','���ر�','����','(055-863-5056)','��󳲵� ���ر� ������ �Ϻ��� 316-3','','')
    into terminal values('����ϵ�','�ͻ��','�ͻ�','(063-843-5100)','����ϵ� �ͻ�� �ͻ��� 52','','')
    into terminal values('��û����','�ƻ��','�ƻ�(�¾�)','(1688-9311)','��û���� �ƻ�� ������ 225','','')
    into terminal values('����Ư����ġ��','','������','(070-4904-3262)','������ ���� 269-14 ������ӽÿܹ����͹̳�','','')
    into terminal values('�λ걤����','�ؿ�뱸','�λ��ؿ��(������)','','�λ� �ؿ�뱸 ��1�� 839-1','','')
    into terminal values('���ϵ�','���׽� ����','����','(1666-2313)','���ϵ� ���׽� ���� �󵵵� 579-13','','')
    into terminal values('����Ư����','������','��������','','���� ������ ��ȭ�� 886','','')
    into terminal values('����ϵ�','�����','����','(1666-2747)','����ϵ� ����� �ظ��� 18','','')
    into terminal values('��⵵','������ �д籸','����','(1644-2689)','��� ������ �д籸 ��ž�� 341','http://www.newseongnamterminal.co.kr/','')
    into terminal values('��걤����','����','���','','��� ���� ��굿 1481-1����','','')
    into terminal values('���󳲵�','��õ��','��õ','','���󳲵� ��õ�� ��õ�� 18-22','','')
    into terminal values('������','���ؽ�','����','','���� ���ؽ� �򸪵� 166-4','','')
    into terminal values('��⵵','�Ȼ�� ��ϱ�','�Ȼ�','','��� �Ȼ�� ��ϱ� �װ���� 410','','')
    into terminal values('��⵵','�Ȼ�� ��ϱ�','��ϼ�','','��� �Ȼ�� ��ϱ� ������ 133','','')
    into terminal values('�λ걤����','������','�λ굿��','','�λ�� ������ ������ 133 �λ굿�ι����͹̳�','','')
    into terminal values('���ϵ�','�ȵ���','�ȵ�','','���ϵ� �ȵ��� �浿�� 130','','')
    into terminal values('��û����','����','���','(041-735-2372)','��û���� ���� ���� 1000','','')
    into terminal values('������','���ֽ�','����','(033-734-4114)','���� ���ֽ� ������� 171','http://www.wonjuterminal.co.kr/','')
    into terminal values('��û����','���ֽ�','����','(1666-8401)','��û���� ���ֽ� �Ű��� 609','','')
    into terminal values('��⵵','���ֽ�','����','(1688-6512)','��� ���ֽ� ������ 85','http://yjterm.co.kr/','')
    into terminal values('���ϵ�','���ֽ�','����','(054-741-4000)','���ϵ� ���ֽ� ������685���� 2','','')
    into terminal values('���󳲵�','�����','����','','���󳲵� ����� ������ �ε��� 413','','')
    into terminal values('��⵵','���ֽ�','����(���)','(031-799-7901)','��� ���ֽ� ��ȵ� 25-3','','')
    into terminal values('���󳲵�','������','����','','���󳲵� ������ �¼����� 268','','')
    into terminal values('��⵵','������ �Ǽ���','�����͹̳�','(1688-5455)','��� ������ �Ǽ��� �Ǽ��� 1189','http://www.suwonterminal.co.kr/','')
    into terminal values('��⵵','���ν� ó�α�','����','','��� ���ν� ó�α� �跮�嵿 23-1','','')
    into terminal values('��û�ϵ�','û�ֽ� �����','û��','(043-235-8841)','��û�ϵ� û�ֽ� ����� ǳ��� 6','','')
    into terminal values('��⵵','�����','����','(031-377-3215)','��� ����� ���굿 881-1','','')
    into terminal values('��⵵','����','����','','��⵵ ���� ������ ���︮ 484-2','','')
    into terminal values('��󳲵�','â���� ��â��','â��','(1688-5090)','','','')
    into terminal values('�뱸������','����','���뱸','','�뱸������ ���� ���η�','','')  
    into terminal values('������','��õ��','����','','���� ��õ�� ���� ����� 1166','','')
    into terminal values('��⵵','���� �ϻ굿��','���(�鼮)','','��� ���� �ϻ굿�� �鼮��','','')
    into terminal values('���ϵ�','��õ��','��õ','','���ϵ� ��õ�� �ڻ�� 152-8','','')
    into terminal values('����ϵ�','�����','���','(063-451-2441)','����ϵ� ����� ��߸� ���2�� 5','','')
    into terminal values('����ϵ�','�ξȱ�','�ξ�','(1666-2429)','����ϵ� �ξȱ� �ξ��� ������ 574-13','','')
    into terminal values('���ϵ�','���̽�','����','(054-452-5750)','���ϵ� ���̽� �ۿ����� 72','','')
    into terminal values('������','Ⱦ����','����','','���� Ⱦ���� ���ٸ�','','')
    into terminal values('����������','����','��������','(1577-2259)','���� ���� ������ 63-3','http://www.djbusterminal.co.kr/','')
    into terminal values('����������','�߱�','����������','','���� �߱� ����õ���� 346','','')
    
select *from dual;

--���Ű˻��� ��Ī�� �͹̳ΰ˻��� ��Ī�� �ٸ� �͹̳�
insert all
    --�˻��ÿ��� �뿵�̶� ����
     into terminal values('��󳲵�','�뿵��','�뿵�͹̳�','1688-0017','��󳲵� �뿵�� ������ �׸�4�� 24','','')
    --�˻��� ����(��õ)�̶� ����
     into terminal values('��û����','���ɽ�','����','(041-936-5757)','��û���� ���ɽ� �͹̳α� 8','','')
    --�˻��� ����̶� ���� 
     into terminal values('����Ư����','������','�����','','����Ư���� ������ ����� 253 (�����, �����)','','')
select *from dual;
--Delete overlaped Termial(name)
delete from terminal a where ROWID <(select MAX(ROWID) from terminal b where a.name = b.name);
    into terminal values('��⵵','�Ȼ�� ��ϱ�','��ϼ�','','��� �Ȼ�� ��ϱ� ������ 133','','')
    into terminal values('�λ걤����','������','�λ굿��','','�λ�� ������ ������ 133 �λ굿�ι����͹̳�','','')
    into terminal values('���ϵ�','�ȵ���','�ȵ�','','���ϵ� �ȵ��� �浿�� 130','','')
    
select *from dual;

--Delete overlaped Termial(name)
delete from terminal a where ROWID >(select MIN(ROWID) from terminal b where a.name = b.name);