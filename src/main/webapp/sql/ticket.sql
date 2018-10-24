create table ticket (
    ticket_no varchar2(100) primary key,                    
    hp1 number,                         
    hp2 number,                         
    hp3 number,                          
    payday date default sysdate,         
    totalpay number,                  
    kid number,                          
    teen number,                         
    adult number,                        
    cancle_check varchar2(2)
);