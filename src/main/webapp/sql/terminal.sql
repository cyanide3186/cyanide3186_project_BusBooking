--터미널 정보
create table terminal(
    region varchar2(45),    --권역(지역)
    city   varchar2(150),   --시군구
    name varchar2(120),     --명칭
    subtext varchar2(120),  --전화번호/부기정보
    addr varchar2(300),     --주소
    homepage varchar2(300), --홈페이지
    map varchar2(900)       --약도
);
--터미널 정보 입력
--Data Save
commit;
-- Single Insert
insert into terminal values('경기도','','','평가중','','','');
--Delete Data
delete from terminal where subtext ='평가중';

select name from terminal where region='경기도' order by name asc;
--예매검색시 명칭과 터미널검색시 명칭이 다른 터미널
insert all
    --검색시에는 통영이라 나옴
     into terminal values('경상남도','통영시','통영터미널','1688-0017','경상남도 통영시 광도면 죽림4로 24','','')
    --검색시 보령(대천)이라 나옴
     into terminal values('충청남도','보령시','보령','(041-936-5757)','충청남도 보령시 터미널길 8','','')
    --검색시 고덕이라 나옴 
     into terminal values('서울특별시','강동구','고덕역','','서울특별시 강동구 고덕로 253 (고덕동, 고덕역)','','')
select *from dual;


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
     where ;--변경하지 않을것으로 기입
     
--**SQL Query sentences On DAO** 
--AutoList When click Region Buttons
select * from (select rownum rn, tt.* from (select *from terminal 
where region = '경기도' order by name asc) tt) where rn>=1 and rn<=5;
--Searching terminals(name)
select * from (select rownum rn, tt.* from
(select *from terminal where region = '경기도' and name like '%평%' order by name asc)
 tt) where rn>=1 and rn<=5;
--Counting ALL Terminals
select count(*)from terminal where region ='서울특별시';
--Counting selected Terminals
select count(*)from terminal where region ='경기도' and name like '%수%';

--Mutiple Insert
insert all          --region/city/name/subtext/addr/homepage/map
    -- into terminal values('','','','','','','')
    into terminal values('서울특별시','광진구','동서울','(1688-5979)','서울 광진구 구의동 546-1','https://www.ti21.co.kr/','') 
    into terminal values('경기도','가평군','가평','','경기 가평군 가평읍 가화로 51','','')
    into terminal values('경기도','평택시','평택','','경기 평택시 평택동 185-245','','')
    into terminal values('충청남도','천안시 동남구','천안','(041-640-6400)','충청남도 천안시 동남구 신부동 356-2','http://www.cheonanterminal.co.kr/','')
    into terminal values('서울특별시','서초구','서울남부','(1688-0540)','서울 서초구 효령로 292','http://www.nambuterminal.com/','')
    into terminal values('전라북도','전주시 덕진구','전주','(1688-1745)','전라북도 전주시 덕진구 금암동 705-10','','')
    into terminal values('경상남도','남해군','남해','(055-863-5056)','경상남도 남해군 남해읍 북변리 316-3','','')
    into terminal values('전라북도','익산시','익산','(063-843-5100)','전라북도 익산시 익산대로 52','','')
    into terminal values('충청남도','아산시','아산(온양)','(1688-9311)','충청남도 아산시 번영로 225','','')
    into terminal values('세종특별자치시','','세종시','(070-4904-3262)','세종시 대평동 269-14 세종고속시외버스터미널','','')
    into terminal values('부산광역시','해운대구','부산해운대(수도권)','','부산 해운대구 우1동 839-1','','')
    into terminal values('경상북도','포항시 남구','포항','(1666-2313)','경상북도 포항시 남구 상도동 579-13','','')
    into terminal values('서울특별시','강서구','김포공항','','서울 강서구 방화동 886','','')
    into terminal values('전라북도','군산시','군산','(1666-2747)','전라북도 군산시 해망로 18','','')
    into terminal values('경기도','성남시 분당구','성남','(1644-2689)','경기 성남시 분당구 야탑동 341','http://www.newseongnamterminal.co.kr/','')
    into terminal values('울산광역시','남구','울산','','울산 남구 삼산동 1481-1번지','','')
    into terminal values('전라남도','순천시','순천','','전라남도 순천시 장천동 18-22','','')
    into terminal values('강원도','동해시','동해','','강원 동해시 평릉동 166-4','','')
    into terminal values('경기도','안산시 상록구','안산','','경기 안산시 상록구 항가울로 410','','')
    into terminal values('경기도','안산시 상록구','상록수','','경기 안산시 상록구 본오로 133','','')
    into terminal values('부산광역시','금정구','부산동부','','부산시 금정구 노포동 133 부산동부버스터미널','','')
    into terminal values('경상북도','안동시','안동','','경상북도 안동시 경동로 130','','')
    into terminal values('충청남도','논산시','논산','(041-735-2372)','충청남도 논산시 계백로 1000','','')
    into terminal values('강원도','원주시','원주','(033-734-4114)','강원 원주시 서원대로 171','http://www.wonjuterminal.co.kr/','')
    into terminal values('충청남도','공주시','공주','(1666-8401)','충청남도 공주시 신관동 609','','')
    into terminal values('경기도','여주시','여주','(1688-6512)','경기 여주시 세종로 85','http://yjterm.co.kr/','')
    into terminal values('경상북도','경주시','경주','(054-741-4000)','경상북도 경주시 태종로685번길 2','','')
    into terminal values('전라남도','광양시','광양','','전라남도 광양시 광양읍 인동리 413','','')
    into terminal values('경기도','광주시','광주(경기)','(031-799-7901)','경기 광주시 경안동 25-3','','')
    into terminal values('전라남도','여수시','여수','','전라남도 여수시 좌수영로 268','','')
    into terminal values('경기도','수원시 권선구','수원터미널','(1688-5455)','경기 수원시 권선구 권선동 1189','http://www.suwonterminal.co.kr/','')
    into terminal values('경기도','용인시 처인구','용인','','경기 용인시 처인구 김량장동 23-1','','')
    into terminal values('충청북도','청주시 흥덕구','청주','(043-235-8841)','충청북도 청주시 흥덕구 풍산로 6','','')
    into terminal values('경기도','오산시','오산','(031-377-3215)','경기 오산시 오산동 881-1','','')
    into terminal values('경기도','양평군','양평','','경기도 양평군 양평읍 공흥리 484-2','','')
    into terminal values('경상남도','창원시 의창구','창원','(1688-5090)','','','')
    into terminal values('대구광역시','동구','동대구','','대구광역시 동구 동부로','','')  
    into terminal values('강원도','춘천시','강촌','','강원 춘천시 서면 경춘로 1166','','')
    into terminal values('경기도','고양시 일산동구','고양(백석)','','경기 고양시 일산동구 백석동','','')
    into terminal values('경상북도','김천시','김천','','경상북도 김천시 자산로 152-8','','')
    into terminal values('전라북도','군산시','대야','(063-451-2441)','전라북도 군산시 대야면 우덕2길 5','','')
    into terminal values('전라북도','부안군','부안','(1666-2429)','전라북도 부안군 부안읍 봉덕리 574-13','','')
    into terminal values('경상북도','구미시','구미','(054-452-5750)','경상북도 구미시 송원동로 72','','')
    into terminal values('강원도','횡성군','공근','','강원 횡성군 공근면','','')
    into terminal values('대전광역시','동구','대전복합','(1577-2259)','대전 동구 용전동 63-3','http://www.djbusterminal.co.kr/','')
    into terminal values('대전광역시','중구','대전서남부','','대전 중구 유등천동로 346','','')
    into terminal values('경기도','안성시','중앙대(안성)','','경기 안성시 대덕면 내리 407-7','','')
    into terminal values('경기도','안성시','안성','(1688-1845)','경기 안성시 비봉로 85','','')
    into terminal values('경기도','안성시','일죽','(1688-6575)','경기 안성시 일죽면 주래본죽로 25','','')
    into terminal values('강원도','속초시','속초','','강원 속초시 장안로 16','','')
    into terminal values('경기도','군포시','군포','(031-462-5377)','경기 군포시 부곡동','','')
    into terminal values('경기도','고양시 덕양구','고양(화정)','','경기 고양시 덕양구 화정동 974','','')
    into terminal values('경기도','광명시','광명','(02-897-0799)','경기 광명시 광명역로 51','','')
    into terminal values('경기도','광명시','광명(철산역)','(02-2686-8930)','경기 광명시 철산동 526 철산역','','')
    into terminal values('경기도','구리시','구리','','경기 구리시 수택동 360 (531-앞)','','')
    into terminal values('경기도','부천시 원미구','부천','','경기 부천시 원미구 상동 539-1','','')
    into terminal values('경기도','수원시 권선구','서수원','','경기 수원시 권선구 구운동 925','','')
    into terminal values('경기도','평택시','송탄','(1666-3555)','경기 평택시 지산로 25','','')
    into terminal values('경기도','안양시 만안구','안양','(031-446-1937)','경기 안양시 만안구 안양1동 668-29','','')
    into terminal values('경기도','안양시 만안구','안양역','(1688-0658)','경기 안양시 만안구 만안로 231','','')
    into terminal values('경기도','수원시 팔달구','우만동','','경기 수원시 팔달구 우만동','','')
    into terminal values('경기도','의정부시','의정부','','경기 의정부시 동일로 640','','')
    into terminal values('경기도','이천시','이천','(031-635-5431)','경기 이천시 중리동 219-1','','')
    into terminal values('경기도','포천시','일동','','경기 포천시 일동면 화동로 1065-1','','')
    into terminal values('경기도','하남시','하남BRT','','경기 하남시 창우로 146','','')
    into terminal values('경기도','안양시 동안구','호계동','(031-456-7544)','경기 안양시 동안구 호계동 1020','','')
    into terminal values('강원도','인제군','인제','','강원 인제군 인제읍 비봉로 43','','')
    into terminal values('강원도','평창군','장평','(1688-0078)','강원 평창군 용평면 금송길 6','','')
    into terminal values('강원도','삼척시','장호','','강원 삼척시 근덕면 삼척로 2095','','')
    into terminal values('강원도','정선군','정선','','강원 정선군 정선읍 북실리 757-3','','')
    into terminal values('강원도','강릉시','주문진','(033-662-2559)','강원 강릉시 주문진읍 주문로 4','','')
    
select *from dual;

--Delete overlaped Termial(name)
delete from terminal a where ROWID <(select MAX(ROWID) from terminal b where a.name = b.name);