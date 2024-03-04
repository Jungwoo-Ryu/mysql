-- DML (Data Manimulation Language)


-- insert

select * from tbl_menu;

insert into tbl_menu values (null,'바나나해장국', 8500, 4, 'Y');
describe tbl_menu;

insert into tbl_menu(menu_name, menu_price, category_code, orderable_status)
values ('초콜릿죽', 6500, 7, 'Y');

-- multi insert
insert into
	tbl_menu
values
	(null, '참치맛아이스크림', 1800, 12, 'Y'),
    (null, '멸치맛아이스크림', 1500, 11, 'Y'),
    (null, '소세지맛아이스크림', 1700, 8, 'Y');

-- update

select
	menu_code,
    category_code
from
	tbl_menu
where
	menu_name = '민트미역국';

update tbl_menu
set
	menu_price = 500
where
	menu_name = '민트미역국';
    
    
-- delete

select * from tbl_menu;

delete from tbl_menu where menu_name = '돌미나리백설기';

select * from tbl_menu;

delete from tbl_menu
order by menu_price desc
limit 3;

delete from tbl_menu;
select * from tbl_menu;



    