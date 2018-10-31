create table terminal(
    region varchar2(45),    --권역(지역)
    city   varchar2(150),   --시군구
    name varchar2(120),     --명칭
    subtext varchar2(120),      --전화번호/부기정보
    addr varchar2(300),     --주소
    homepage varchar2(300), --홈페이지
    map varchar2(900)       --약도
);
--저장
commit;

--단일 insert
insert into terminal values('충청남도','논산시','논산','041-)735-2372','충청남도 논산시 계백로 1000','','');

--정보 확인
select *from terminal;
--정보 수정
update terminal
    set 
        region='',
          city='',
          name='',
          addr='',
        hompage='',
          map=''
     where ;--변경하지 않을것으로 기입
     
--**DAO에 들어갈 쿼리문** 
--지역선택시 자동으로 리스트 (명칭기준 가나다순 정렬)
select * from(select rownum rn, tt.* from (select * from terminal order by name asc) tt)
    where region='경기도' and (rn>=1 and rn<=5);
--검색창에 단어 입력시 검색 (지역선택을 강제한 상태에서 명칭 및 부기명-숫자로는 검색x-으로 검색
select * from
(select rownum rn, tt.* from (select * from terminal order by name asc) tt)
 where (region = '경기도' and (name like '%%' or subtext like '%평%')) and (rn>=1 and rn<=5);
--------------------------------------------------------------------------------------------------
**아래는 복사붙여넣기 해서 실행하면됩니다.
--다중 insert
insert all          --권역/시군구/명칭/부기정보/주소/홈페이지/약도
    into terminal values('서울특별시','광진구','동서울','1688-5979','서울 광진구 구의동 546-1','https://www.ti21.co.kr/','') 
    into terminal values('경기도','가평군','가평','','경기 가평군 가평읍 가화로 51','','')
    into terminal values('경기도','평택시','평택','','경기 평택시 평택동 185-245','','')
    into terminal values('충청남도','논산시','논산','041-)735-2372','충청남도 논산시 계백로 1000','','')	
select *from dual;

--명칭이 중복된 터미널 제거
delete from terminal a where ROWID >(select MIN(ROWID) from terminal b where a.name = b.name);
