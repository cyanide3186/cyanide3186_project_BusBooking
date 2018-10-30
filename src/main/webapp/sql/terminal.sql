--터미널 정보
create table terminal(
    region varchar2(45),    --권역(지역)
    city   varchar2(150),   --시군구
    name varchar2(120),     --명칭(-전화번호는 괄호로 병기)
    addr varchar2(300),     --주소
    homepage varchar2(300), --홈페이지
    map varchar2(900)       --약도
);