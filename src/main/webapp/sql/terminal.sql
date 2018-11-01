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
--Mutiple Insert
insert all          --region/city/name/subtext/addr/homepage/map
    -- into terminal values('','','','','','','')
    into terminal values('����Ư����','������','������','1688-5979','���� ������ ���ǵ� 546-1','https://www.ti21.co.kr/','') 
    into terminal values('��⵵','����','����','','��� ���� ������ ��ȭ�� 51','','')
    into terminal values('��⵵','���ý�','����','','��� ���ý� ���õ� 185-245','','')
    into terminal values('��û����','õ�Ƚ� ������','õ��','041-640-6400','��û���� õ�Ƚ� ������ �źε� 356-2','http://www.cheonanterminal.co.kr/','')
    into terminal values('����Ư����','���ʱ�','���ﳲ��','1688-0540','���� ���ʱ� ȿ�ɷ� 292','http://www.nambuterminal.com/','')
    into terminal values('����ϵ�','���ֽ� ������','����','1688-1745','����ϵ� ���ֽ� ������ �ݾϵ� 705-10','','')
    into terminal values('��󳲵�','���ر�','����','055-863-5056','��󳲵� ���ر� ������ �Ϻ��� 316-3','','')
    into terminal values('����ϵ�','�ͻ��','�ͻ�','063-843-5100','����ϵ� �ͻ�� �ͻ��� 52','','')
    into terminal values('��û����','�ƻ��','�ƻ�(�¾�)','1688-9311','��û���� �ƻ�� ������ 225','','')
    into terminal values('����Ư����ġ��','','������','070-4904-3262','������ ���� 269-14 ������ӽÿܹ����͹̳�','','')
    into terminal values('�λ걤����','�ؿ�뱸','�λ��ؿ��(������)','','�λ� �ؿ�뱸 ��1�� 839-1','','')
    into terminal values('���ϵ�','���׽� ����','����','1666-2313','���ϵ� ���׽� ���� �󵵵� 579-13','','')
    into terminal values('����Ư����','������','��������','','���� ������ ��ȭ�� 886','','')
    into terminal values('����ϵ�','�����','����','1666-2747','����ϵ� ����� �ظ��� 18','','')
    into terminal values('��⵵','������ �д籸','����','1644-2689','��� ������ �д籸 ��ž�� 341','http://www.newseongnamterminal.co.kr/','')
    into terminal values('��걤����','����','���','','��� ���� ��굿 1481-1����','','')
    into terminal values('���󳲵�','��õ��','��õ','','���󳲵� ��õ�� ��õ�� 18-22','','')
    into terminal values('������','���ؽ�','����','','���� ���ؽ� �򸪵� 166-4','','')
    into terminal values('��⵵','�Ȼ�� ��ϱ�','�Ȼ�','','��� �Ȼ�� ��ϱ� �װ���� 410','','')
    into terminal values('��⵵','�Ȼ�� ��ϱ�','��ϼ�','','��� �Ȼ�� ��ϱ� ������ 133','','')
    into terminal values('�λ걤����','������','�λ굿��','','�λ�� ������ ������ 133 �λ굿�ι����͹̳�','','')
    into terminal values('���ϵ�','�ȵ���','�ȵ�','','���ϵ� �ȵ��� �浿�� 130','','')
    
select *from dual;

--Delete overlaped Termial(name)
delete from terminal a where ROWID >(select MIN(ROWID) from terminal b where a.name = b.name);