-- select statement is for viewing data
select
		menu_name
from tbl_menu;

select
	menu_code,
    menu_name,
    menu_price
    from tbl_menu;
    
-- from tbl_menu table, view menucode, categorycode, and menuprice
select
	menu_code,
    category_code,
    menu_price
from tbl_menu;

-- *
select *
from tbl_menu;

select now();
select concat('K', ' ', 'E',' ','N') as name;
select concat('K', ' ', 'E',' ','N') as 'my Name';

