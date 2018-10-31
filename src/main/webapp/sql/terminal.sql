--터미널 정보
create table terminal(
    region varchar2(45),    --권역(지역)
    city   varchar2(150),   --시군구
    name varchar2(120),     --명칭
    subtext varchar2(120),      --전화번호/부기정보
    addr varchar2(300),     --주소
    homepage varchar2(300), --홈페이지
    map varchar2(900)       --약도
);
--운수회사 정보
create table company(
    name varchar2(90),      --회사명
    tel  varchar2(150),     --전화번호
    addr varchar2(300)      --주소
);

--터미널 정보 입력
--**현재까지 bus테이블에 입력된 터미널**
-- 강촌 원주 논산 대전복합 
-- 공주 여주 경주 강촌 보령(대천) 동대구 구미 
--수원터미널 용인 김천 청주 대야 광양 고양(백석) 창원 
--통영 부안 고덕 오산 양평 공근 대전서남부 광주(경기) 여수

--저장
commit;
--단일 insert
insert into terminal values('경기도','','','평가중','','','');
--데이터 삭제
delete from terminal where subtext ='평가중';
--다중 insert 
insert all          --권역/시군구/명칭/부기정보/주소/홈페이지/약도
    -- into terminal values('','','','','','','')
    into terminal values('서울특별시','광진구','동서울','1688-5979','서울 광진구 구의동 546-1','https://www.ti21.co.kr/','') 
    into terminal values('경기도','가평군','가평','','경기 가평군 가평읍 가화로 51','','')
    into terminal values('경기도','평택시','평택','','경기 평택시 평택동 185-245','','')
    into terminal values('충청남도','천안시 동남구','천안','041-640-6400','충청남도 천안시 동남구 신부동 356-2','http://www.cheonanterminal.co.kr/','')
    into terminal values('서울특별시','서초구','서울남부','1688-0540','서울 서초구 효령로 292','http://www.nambuterminal.com/','')
    into terminal values('전라북도','전주시 덕진구','전주','1688-1745','전라북도 전주시 덕진구 금암동 705-10','','')
    into terminal values('경상남도','남해군','남해','055-863-5056','경상남도 남해군 남해읍 북변리 316-3','','')
    into terminal values('전라북도','익산시','익산','063-843-5100','전라북도 익산시 익산대로 52','','')
    into terminal values('충청남도','아산시','아산(온양)','1688-9311','충청남도 아산시 번영로 225','','')
    into terminal values('세종특별자치시','','세종시','070-4904-3262','세종시 대평동 269-14 세종고속시외버스터미널','','')
    into terminal values('부산광역시','해운대구','부산해운대(수도권)','','부산 해운대구 우1동 839-1','','')
    into terminal values('경상북도','포항시 남구','포항','1666-2313','경상북도 포항시 남구 상도동 579-13','','')
    into terminal values('서울특별시','강서구','김포공항','','서울 강서구 방화동 886','','')
    into terminal values('전라북도','군산시','군산','1666-2747','전라북도 군산시 해망로 18','','')
    into terminal values('경기도','성남시 분당구','성남','1644-2689','경기 성남시 분당구 야탑동 341','http://www.newseongnamterminal.co.kr/','')
    into terminal values('울산광역시','남구','울산','','울산 남구 삼산동 1481-1번지','','')
    into terminal values('전라남도','순천시','순천','','전라남도 순천시 장천동 18-22','','')
    into terminal values('강원도','동해시','동해','','강원 동해시 평릉동 166-4','','')
    into terminal values('경기도','안산시 상록구','안산','','경기 안산시 상록구 항가울로 410','','')
    into terminal values('경기도','안산시 상록구','상록수','','경기 안산시 상록구 본오로 133','','')
    into terminal values('부산광역시','금정구','부산동부','','부산시 금정구 노포동 133 부산동부버스터미널','','')
    into terminal values('경상북도','안동시','안동','','경상북도 안동시 경동로 130','','')
    
select *from dual;

--명칭이 중복된 터미널 제거
delete from terminal a where ROWID >(select MIN(ROWID) from terminal b where a.name = b.name);

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