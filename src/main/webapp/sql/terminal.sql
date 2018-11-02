﻿--터미널 정보
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
    into terminal values('충청남도','보령시','보령(대천)','(041-936-5757)','충청남도 보령시 터미널길 8','','')
    into terminal values('서울특별시','강동구','고덕','','서울특별시 강동구 고덕로 253 (고덕동, 고덕역)','','')
    into terminal values('경상남도','통영시','통영','(1688-0017)','경상남도 통영시 광도면 죽림4로 24','','')
    into terminal values('강원도','강릉','강릉시외터미널','(033-643-6092)','강원 강릉시 하슬라로 27','','')
    into terminal values('강원도','고성군','간성','','강원 고성군 간성읍 신안리 250-1','','')
    into terminal values('강원도','고성군','거진','','강원 고성군 거진읍 거진길 21-2 거진터미널','','')
    into terminal values('강원도','양양군','낙산','','강원 양양군 강현면 주청리 99-11','','')
    into terminal values('강원도','철원군','동송','(033-456-1213)','강원 철원군 동송읍 금학로 215','','')
    into terminal values('강원도','동해시','동해','','강원 동해시 평릉동 166-4','','')
    into terminal values('강원도','양양군','물치','','강원도 속초시 동해대로 3677 세븐일레븐 설악해맞이점','','')
    into terminal values('강원도','인제군','백담사','(033-462-5817)','강원 인제군 북면 용대리 544-17','','')
    into terminal values('강원도','삼척시','삼척','(1688-5727)','강원 삼척시 남양동 341','http://www.samcheokterminal.com/index.php','')
    into terminal values('강원도','정선군','신고한(사북)','','강원 정선군 고한읍 지장천로 856','','')
    into terminal values('강원도','양구군','양구','(033-481-3456)','강원 양구군 중심로 196 양구터미널','','')
    into terminal values('강원도','양양군','양양','','강원 양양군 양양읍 남문리 3-52','','')
    into terminal values('강원도','영월군','영월','(070-4150-2450)','강원 영월군 영월읍 중앙1로 23','','')
    into terminal values('강원도','양양군','오색','','강원 양양군 서면 오색리 534','','')
    into terminal values('강원도','철원군','와수리','(033-458-3555)','강원 철원군 서면 와수로173번길 17','','')
    into terminal values('강원도','인제군','원통','','강원 인제군 북면 원통로147번길 31','','')
    into terminal values('강원도','평창군','진부','(033-335-6307)','강원 평창군 진부면 하진부리 116-19','','')
    into terminal values('강원도','춘천시','춘천','','강원 춘천시 온의동 511','','')
    into terminal values('강원도','태백시','태백','','강원 태백시 황지동 270-1','','')
    into terminal values('강원도','평창시','평창','(033-332-2407)','강원 평창군 평창읍 백오1길 3','','')
    into terminal values('강원도','양양시','하조대','','강원 양양군 현북면 하조대1길 46','','')
    into terminal values('강원도','삼척시','호산','(033-572-6412)','강원 삼척시 원덕읍 삼척로 381','','')
    into terminal values('강원','홍천군','홍천','','강원 홍천군 홍천읍 희망리 393','','')
    into terminal values('강원도','평창군','횡계','(033-335-5289)','강원 평창군 대관령면 대관령로 78','','')
    into terminal values('강원도','횡성군','횡성','','강원 횡성군 횡성읍 횡성로 377','','')
    into terminal values('경상남도','진주시','거창','','경상남도 거창군 거창읍 대평리 1005','','')
    into terminal values('경상남도','고성군','고성(경남)','(1666-0081)','경상남도 고성군 고성읍 송학고분로 339','','')
    into terminal values('경상남도','거제시','고현','(1688-5003)','경상남도 거제시 고현천로 10','','')
    into terminal values('경상남도','김해시','김해','','경상남도 김해시 전하로304번길 24','','')
    into terminal values('경상남도','의령군','대의','','경상남도 의령군 대의면','','')
    into terminal values('경상남도','창원시 마산회원구','마산','','경상남도 창원시 마산회원구 합성동 267','','')
    into terminal values('경상남도','창원시 마산합포구','마산남부','','경상남도 창원시 마산합포구 해운동 5-56','','')
    into terminal values('경상남도','밀양시','밀양','','경상남도 밀양시 북성로 7','','')
    into terminal values('경상남도','고성군','배둔','(055-673-1940)','경상남도 고성군 회화면 남해안대로 3666','','')
    into terminal values('경상남도','창녕군','부곡','(055-536-5007)','경상남도 창녕군 부곡면 원앙로 199','','')
    into terminal values('경상남도','사천시','사천시','(1688-4003)','경상남도 사천시 사천읍 옥산로 120','','')
    into terminal values('경상남도','산청군','산청','','경상남도 산청군 산청읍 지리','','')
    into terminal values('경상남도','합천군','삼가','','경상남도 합천군 삼가면 삼가1로 78','','')
    into terminal values('경상남도','사천시','삼천포','(1688-3006)','경상남도 사천시 중앙로 158','','')
    into terminal values('경상남도','의령군','신반','','경상남도 의령군 부림면 신반리','','')
    into terminal values('경상남도','양산시','양산','(1688-0243)','경상남도 양산시 중부동 710-1','','')
    into terminal values('경상남도','창녕군','영산(경남)','(055-536-3801)','경상남도 창녕군 영산면 연지길 7','','')
    into terminal values('경상남도','창원시 진해구','용원(녹산,명지)','','경상남도 창원시 진해구 용원동','','') 
    into terminal values('경상남도','김해시','원지','','경상남도 김해시 대동면 초정리','','') 
    into terminal values('경상남도','산청군','원지','','경상남도 산청군 신안면 원지로 16','','') 
    into terminal values('경상남도','의령군','의령','(1688-2112)','경상남도 의령군 의령읍 의병로6길 13','','')  
    into terminal values('경상남도','거제시','장승포','(1688-0078)','경상남도 거제시 능포동 633-215','','')
    into terminal values('경상남도','김해시','장유','','경상남도 김해시 장유로 469 (신문동,롯데아울렛)','','')
    into terminal values('경상남도','김해시','장유(환승)','','경상남도 김해시 금관대로 599번길 17','','')
    into terminal values('경상남도','함양군','지리산(백무동)','','경상남도 함양군 마천면 강청리 203-4','','')
    into terminal values('경상남도','김해시','진영','','경상남도 김해시 진영읍 여래리 711-1','','')
    into terminal values('경상남도','진주시','진주','(1688-0841)','경상남도 진주시 옥봉동 807-11','','')
    into terminal values('경상남도','창원시 진해구','진해','(055-547-8424)','경상남도 창원시 진해구 태평로34번길 17','','')
    into terminal values('경상남도','창녕군','창녕','(055-533-4000)','경상남도 창녕군 창녕읍 명덕로 10-1','','')
    into terminal values('경상남도','창원시 성산구','창원남산','(1688-5090)','경상남도 창원시 성산구 남산동 629-12','','')
    into terminal values('경상남도','창원시 의창구','창원역','(1688-5090)','경상남도 창원시 의창구 의창대로 67 창원역노천대합실
','','')
    into terminal values('경상남도','함안군','칠원읍','','경상남도 함안군 칠원읍 구성길 6','','')
    into terminal values('경상남도','하동군','하동','(055-883-2663)','경상남도 하동군 하동읍 읍내리 333-14','','')
    into terminal values('경상남도','함안군','함안가야','(1688-9060)','경상남도 함안군 가야읍 말산리 605-3','','')
    into terminal values('경상남도','함안군','함안군북','','경상남도 함안군 군북면 소포리','','')
    into terminal values('경상남도','함양군','함양','(1688-7494)','경상남도 함양군 함양읍 한들로 159','','')
    into terminal values('경상남도','합천군','합천','(1688-4460)','경상남도 합천군 합천읍 대야로 883','','')
    into terminal values('경상남도','하동군','화개공용','','경상남도 하동군 화개면 섬진강대로 3916','','')
select *from dual

--Delete overlaped Termial(name)
delete from terminal a where ROWID <(select MAX(ROWID) from terminal b where a.name = b.name);

--서울

insert into terminal values('서울특별시','서초구','AT센터(양재동꽃시장)','','서울 서초구 강남대로 27','','');
insert into terminal values('서울특별시','서대문구','DMC래미안 이편한세상','','서울특별시 서대문구 수색로','','');
insert into terminal values('서울특별시','영등포구','IFC서울콘래드호텔 ','','서울 영등포구 국제금융로 10 ','','');
insert into terminal values('서울특별시','용산구','IP부띠끄호텔 ','','서울특별시 용산구 이태원로 221','','');
insert into terminal values('서울특별시','강서구','KBS스포츠월드 ','','서울특별시 강서구 우장산로','','');
insert into terminal values('서울특별시','영등포구','KDB대우증권(한국거래소) ','','서울 영등포구 여의나루로 76 ','','');
insert into terminal values('서울특별시','송파구','가든파이브(송파푸르지오) ','','서울시 송파구 충민로 66','','');
insert into terminal values('서울특별시','송파구','가락동','','서울특별시 송파구 양재대로','','');
insert into terminal values('서울특별시','금천구','가산디지털단지역 ','','서울특별시 금천구 디지털로9길','','');
insert into terminal values('서울특별시','양천구','갈산초등학교','','서울특별시 양천구 목동로','','');
insert into terminal values('서울특별시','서초구','강남센트럴 ','','서울 서초구 신반포로 176','','');
insert into terminal values('서울특별시','강남구','강남역 ','','서울특별시 강남구 강남대로 396','','');
insert into terminal values('서울특별시','동작구','강남중학교(서울지방병무청) ','','서울특별시 동작구 대방동15길','','');
insert into terminal values('서울특별시','서초구','강남터미널','','서울 서초구 신반포로 176','','');
insert into terminal values('서울특별시','강서구','강서구의회',' ','서울특별시 강서구 등촌로','','');
insert into terminal values('서울특별시','강서구','강서구청사거리(서울디지털대학교) ','','서울특별시 강서구 화곡로44나길','','');
insert into terminal values('서울특별시','강서구','강서면허시험장(메이필드호텔)','','서울특별시 강서구 방화대로','','');
insert into terminal values('서울특별시','양천구','강신중학교 ','','서울특별시 양천구 남부순환로','','');
insert into terminal values('서울특별시','용산구','강촌아파트 ','','서울특별시 용산구 이촌로87길','','');
insert into terminal values('서울특별시','구로구','개봉교 ','','서울특별시 구로구 경인로40길','','');
insert into terminal values('서울특별시','구로구','개봉역입구','','서울특별시 구로구 경인로40길','','');
insert into terminal values('서울특별시','강남구','개포동 ','','서울특별시 강남구 개포동','','');
insert into terminal values('서울특별시','강남구','갤러리아백화점','','서울특별시 강남구 압구정로 343 (압구정동, 갤러리아백화점)','','');
insert into terminal values('서울특별시','광진구','건국대(서울) ','','서울특별시 광진구 능동로','','');
insert into terminal values('서울특별시','광진구','건국대학교 ','','서울특별시 광진구 능동로','','');
insert into terminal values('서울특별시','동대문구','경남관광호텔 ','','서울특별시 동대문구 장한로24길','','');
insert into terminal values('서울특별시','동작구','경문고교(배나무골) ','','서울특별시 동작구 동작대로','','');
insert into terminal values('서울특별시','종로구','경복궁역 ','','서울특별시 종로구 사직로','','');
insert into terminal values('서울특별시','송파구','경찰병원 ','','서울특별시 송파구 중대로 지하 149','','');
insert into terminal values('서울특별시','강동구','고덕역 ','','
서울특별시 강동구 고덕로 253 (고덕동, 고덕역)','','');
insert into terminal values('서울특별시','성북구','고려대(숭례초교) ','','서울특별시 성북구 종암로5길 14','','');
insert into terminal values('서울특별시','영등포구','공군회관 ','','서울특별시 영등포구 여의대방로53가길','','');
insert into terminal values('서울특별시','마포구','공덕역(롯데시티호텔마포.신라스테이마포) ','','서울특별시 마포구 마포대로','','');
insert into terminal values('서울특별시','노원구','공릉역 ','','서울특별시 노원구 동일로 1074','','');
insert into terminal values('서울특별시','강서구','공항동 ','','서울 강서구 공항동','','');
insert into terminal values('서울특별시','양천구','과학수사연구소 ','','서울특별시 양천구 지양로','','');
insert into terminal values('서울특별시','관악구','관악구청 ','','서울특별시 관악구 남부순환로','','');
insert into terminal values('서울특별시','광진구','광진구의회(건대입구역)',' ','서울특별시 광진구 아차산로','','');
insert into terminal values('서울특별시','서초구','교대역','','서울특별시 서초구 서초대로 294','','');
insert into terminal values('서울특별시','구로구','구로공구상가 ','','서울 구로구 구로중앙로 197 ','','');
insert into terminal values('서울특별시','구로구','구로구청 ','','서울특별시 구로구 가마산로','','');
insert into terminal values('서울특별시','구로구','구로디지털단지역','','서울특별시 구로구 도림천로','','');
insert into terminal values('서울특별시','구로구','구로역(애경백화점) ','','서울특별시 구로구 구로중앙로','','');
insert into terminal values('서울특별시','서초구 ','구반포','','서울특별시 서초구 신반포로 17','','');
insert into terminal values('서울특별시','은평구 ','구파발역','','서울특별시 은평구 진관2로','','');
insert into terminal values('서울특별시','중구','국도호텔(을지로4가)','','서울특별시 중구 을지로','','');
insert into terminal values('서울특별시','영등포구','국회의사당역 ','','서울특별시 영등포구 국회대로','','');
insert into terminal values('서울특별시','광진구','군자교입구','','서울특별시 광진구 군자로','','');
insert into terminal values('서울특별시','광진구','군자역','','서울특별시 광진구 군자로','','');
insert into terminal values('서울특별시','강동구','굽은다리역 ','','서울특별시 강동구 양재대로 지하 1572','','');
insert into terminal values('서울특별시','서대문구','그랜드힐튼호텔 ','','서울특별시 서대문구 연희로41가길','','');
insert into terminal values('서울특별시','성동구','금옥초등학교(금호대우아파트) ','','서울특별시 성동구 독서당로','','');
insert into terminal values('서울특별시','금천구','금천구청(시흥고개) ','','서울특별시 금천구 시흥대로63길','','');
insert into terminal values('서울특별시','성동구','금호사거리 ','','서울특별시 성동구 금호로11길','','');
insert into terminal values('서울특별시','성동구','금호삼성래미안 ','','서울특별시 성동구 독서당로','','');
insert into terminal values('서울특별시','강동구','길동역 ','','서울 강동구 길동','','');
insert into terminal values('서울특별시','성북구','길음뉴타운(길음역) ','','서울특별시 성북구 동소문로 248','','');
insert into terminal values('서울특별시','강서구','김포공항 ','','서울 강서구 방화동 886','','');
insert into terminal values('서울특별시','강서구','나이아가라.리버파크.골든서울호텔 ','','서울특별시 강서구 공항대로','','');
insert into terminal values('서울특별시','관악구','낙성대입구 ','','서울특별시 관악구 남부순환로','','');
insert into terminal values('서울특별시','중구','남대문시장(회현역) ','','서울특별시 중구 남대문시장길','','');
insert into terminal values('서울특별시','동작구','남성시장(총신대입구역) ','','서울특별시 동작구 동작대로 117','','');
insert into terminal values('서울특별시','동작구','남성역 ','','서울특별시 동작구 사당로14길','','');
insert into terminal values('서울특별시','동작구','남성초등학교 ','','서울특별시 동작구 사당로23길','','');
insert into terminal values('서울특별시','서초구','내곡동(서초포레스타) ','','서울시 서초구 헌릉로8길 45(내곡동, 서초포레스타2단지)','','');
insert into terminal values('서울특별시','서초구','내방역 ','','서울특별시 서초구 서초대로','','');
insert into terminal values('서울특별시','금천구','노보텔독산(금천우체국) ','','서울특별시 금천구 시흥대로','','');
insert into terminal values('서울특별시','강남구','노원','','서울 노원구 상계2동 335','','');
insert into terminal values('서울특별시','노원구','노원역 ','','서울특별시 노원구 상계동 729','','');
insert into terminal values('서울특별시','노원구','노일초교 ','','서울특별시 노원구 동일로 1625','','');
insert into terminal values('서울특별시','강서구','녹산 ','','서울 강서구 낙동남로 369','','');
insert into terminal values('서울특별시','강남구','논현역 ','','서울특별시 강남구 학동로 102 (논현동, 논현역)','','');
insert into terminal values('서울특별시','서초구','뉴코아(서초구) ','','서울특별시 서초구 잠원동 70','','');
insert into terminal values('서울특별시','영등포구','당산역 ','','서울특별시 영등포구 당산로47길','','');
insert into terminal values('서울특별시','광진구','대공원 후문 ','','서울 광진구 능동로 216','','');
insert into terminal values('서울특별시','구로구','대림역 ','','서울특별시 구로구 구로중앙로','','');
insert into terminal values('서울특별시','강서구','대일고등학교 ','','서울특별시 강서구 등촌로','','');
insert into terminal values('서울특별시','강남구','대치역 ','','서울특별시 강남구 남부순환로 2952','','');
insert into terminal values('서울특별시','서초구','더케이호텔 ','','서울 서초구 바우뫼로12길 70 ','','');
insert into terminal values('서울특별시','도봉구','도봉등기소 ','','서울특별시 도봉구 노해로 325','','');
insert into terminal values('서울특별시','도봉구','도봉산 ','','서울 도봉구 도봉동','','');
insert into terminal values('서울특별시','강남구','도심공항(코엑스)직통 ','','서울 강남구 영동대로 513','','');
insert into terminal values('서울특별시','서대문구','독립문역 ','','서울특별시 서대문구 통일로17길','','');
insert into terminal values('서울특별시','중구','동대문역사문화공원역(동대문디지털프라자) ','','서울특별시 중구 을지로','','');
insert into terminal values('서울특별시','은평구','동명여고 ','','서울특별시 은평구 통일로','','');
insert into terminal values('서울특별시','종로구','동묘앞역 ','','서울특별시 종로구 종로','','');
insert into terminal values('서울특별시','용산구','동부이촌동 ','','서울특별시 용산구 서빙고로','','');
insert into terminal values('서울특별시','광진구','동서울 (1688-5979) ','','서울 광진구 구의동 546-1','','');
insert into terminal values('서울특별시','동작구','두산위브트레지움 ','','서울특별시 동작구 사당로','','');
insert into terminal values('서울특별시','강동구','둔촌역 ','','서울특별시 강동구 양재대로 지하 1369','','');
insert into terminal values('서울특별시','강서구','등촌역(강서보건소) ','','서울특별시 강서구 공항대로','','');
insert into terminal values('서울특별시','강서구','등촌중학교 ','','서울특별시 강서구 공항대로58나길','','');
insert into terminal values('서울특별시','강서구','등촌중학교(스탠다드호텔) ','','서울특별시 강서구 공항대로','','');
insert into terminal values('서울특별시','금천구','디지털1단지 ','','서울특별시 금천구 벚꽃로 309','','');
insert into terminal values('서울특별시','금천구','디지털단지오거리 ','','서울특별시 금천구 가산디지털2로 151 ','','');
insert into terminal values('서울특별시','은평구','디지털미디어시티역 ','','서울특별시 은평구 수색로','','');
insert into terminal values('서울특별시','영등포구','렉싱턴(켄싱턴)호텔 ','','서울 영등포구 국회대로76길 16 ','','');
insert into terminal values('서울특별시','중구','로얄호텔(을지로입구) ','','서울특별시 중구 명동길','','');
insert into terminal values('서울특별시','관악구','롯데백화점(관악점) ','','서울 관악구 봉천로 209 ','','');
insert into terminal values('서울특별시','구로구','롯데시티호텔구로 ','','서울 구로구 디지털로 300 ','','');
insert into terminal values('서울특별시','노원구','롯데캐슬루나아파트 ','','서울특별시 노원구 월계로45길','','');
insert into terminal values('서울특별시','강남구','리베라호텔 ','','서울특별시 강남구 영동대로 737 (청담동, 리베라호텔)','','');
insert into terminal values('서울특별시','강서구','마곡역 ','','서울특별시 강서구 공항대로','','');
insert into terminal values('서울특별시','노원구','마들역 ','','서울특별시 노원구 동일로 1530-1','','');
insert into terminal values('서울특별시','마포구','마포경찰서 ','','서울특별시 마포구 마포대로','','');
insert into terminal values('서울특별시','마포구','마포구청역(월드컵경기장입구) ','','서울특별시 마포구 월드컵로','','');
insert into terminal values('서울특별시','금천구','말미고개 ','','서울특별시 금천구 남부순환로 1288','','');
insert into terminal values('서울특별시','중랑구','망우역 ','','서울 중랑구 망우로55길 11-10','','');
insert into terminal values('서울특별시','강남구','매봉역 ','','서울특별시 강남구 남부순환로 2744 (도곡동, 매봉역)','','');
insert into terminal values('서울특별시','중랑구','먹골역 ','','서울특별시 중랑구 동일로 901','','');
insert into terminal values('서울특별시','마포구','메리골드호텔 ','','서울 마포구 양화로 112','','');
insert into terminal values('서울특별시','서초구','메리어트호텔 ','','서울특별시 서초구 신반포로 176 (반포동, 센트럴시티빌딩)','','');
insert into terminal values('서울특별시','중랑구','면목동(홈플러스) ','','서울특별시 중랑구 사가정로','','');
insert into terminal values('서울특별시','중구','명동역 ','','서울특별시 중구 퇴계로22길','','');
insert into terminal values('서울특별시','강동구','명일동국민은행 ','','서울 강동구 양재대로 1661 ','','');
insert into terminal values('서울특별시','강동구','명일역 ','','서울특별시 강동구 양재대로 지하 1632','','');
insert into terminal values('서울특별시','서대문구','모래내시장.가좌역 ','','서울특별시 서대문구 수색로2길','','');
insert into terminal values('서울특별시','양천구','목동1단지(이대목동병원) ','','서울특별시 양천구 목동중앙로','','');
insert into terminal values('서울특별시','양천구','목동2단지(목동5단지) ','','서울특별시 양천구 목동중앙로','','');
insert into terminal values('서울특별시','양천구','목동3단지(파리공원) ','','서울특별시 양천구 목동동로','','');
insert into terminal values('서울특별시','양천구','목동4단지상가.목동종합운동장 ','','서울특별시 양천구 안양천로','','');
insert into terminal values('서울특별시','강서구','목동사거리 ','','서울 강서구 등촌로 29 ','','');
insert into terminal values('서울특별시','양천구','목동역 ','','서울특별시 양천구 오목로','','');
insert into terminal values('서울특별시','양천구','목동현대백화점 ','','서울특별시 양천구 목동동로12길','','');
insert into terminal values('서울특별시','송파구','몽촌토성역 ','','서울특별시 송파구 올림픽로 383 (신천동, 몽촌토성역)','','');
insert into terminal values('서울특별시','서대문구','무악재역 ','','서울특별시 서대문구 통일로','','');
insert into terminal values('서울특별시','성동구','무학여고 ','','서울특별시 성동구 고산자로','','');
insert into terminal values('서울특별시','금천구','문성초등학교 ','','서울특별시 금천구 시흥대로','','');
insert into terminal values('서울특별시','강남구','미성아파트 ','','서울특별시 강남구 압구정로 113','','');
insert into terminal values('서울특별시','성북구','미아리고개 ','','서울특별시 성북구 동소문로','','');
insert into terminal values('서울특별시','강북구','미아사거리역 ','','서울특별시 강북구 도봉로 50','','');
insert into terminal values('서울특별시','강북구','미아역 ','','서울특별시 강북구 도봉로 198','','');
insert into terminal values('서울특별시','금천구','박미삼거리(국립전통예술중고) ','','서울특별시 금천구 시흥대로38길 62','','');
insert into terminal values('서울특별시','은평구','박석고개 ','','서울특별시 은평구 통일로','','');
insert into terminal values('서울특별시','서초구','반포자이아파트 ','','서울특별시 서초구 신반포로 270 (반포동, 반포자이아파트)','','');
insert into terminal values('서울특별시','강서구','발산역 ','','서울특별시 강서구 공항대로','','');
insert into terminal values('서울특별시','서초구','방배래미안 ','','서울특별시 서초구 방배선행길','','');
insert into terminal values('서울특별시','서초구','방배역 ','','서울특별시 서초구 방배로16길','','');
insert into terminal values('서울특별시','송파구','방이동 ','','서울특별시 송파구 올림픽로','','');
insert into terminal values('서울특별시','강동구','배재고 ','','서울특별시 강동구 고덕로 227 (고덕동, 배재중, 고등학교)','','');
insert into terminal values('서울특별시','강남구','뱅뱅사거리 ','','
서울특별시 강남구 강남대로 282','','');
insert into terminal values('서울특별시','구로구','베스트웨스턴구로호텔 ','','서울특별시 구로구 디지털로32가길','','');
insert into terminal values('서울특별시','마포구','베스트웨스턴서울(마포역) ','','서울 마포구 마포대로 52 ','','');
insert into terminal values('서울특별시','중구','베이튼호텔 ','','
서울 중구 동호로 346','','');
insert into terminal values('서울특별시','용산구','보광동 ','','서울 용산구 우사단로 20 ','','');
insert into terminal values('서울특별시','동작구','보라매공원 ','','서울특별시 동작구 여의대방로16길','','');
insert into terminal values('서울특별시','동작구','보라매역.동작세무서 ','','서울특별시 동작구 상도로','','');
insert into terminal values('서울특별시','송파구','복정역','','서울특별시 송파구 송파대로 지하 6','','');





