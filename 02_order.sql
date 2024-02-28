-- order by
USE menudb;
select
	menu_code,
    menu_name,
    menu_price
from tbl_menu
order by
	menu_price asc;
    
-- from tbl menu, view menucode, name, price by descending order of name
select
	menu_code,
    menu_name,
    menu_price
from tbl_menu
order by 
	menu_price desc,
    menu_name asc;
    
select
	menu_code,
    menu_price,
    menu_code * menu_price as result
from tbl_menu
order by menu_code * menu_price desc;

-- order by

select field('a','c','b','c');

select
	field(orderable_status, 'N', 'Y')
from tbl_menu;

-- from tbl_menu, view name and status by ascending order of 'N' field

select
	menu_name,
    orderable_status
from tbl_menu
order by field(orderable_status, 'Y','N');

select *
from tbl_category;


-- when ascending, null data comes first
select
	category_code,
    category_name,
    ref_category_code
from tbl_category
order by
	ref_category_code asc;
    
select
	category_code,
    category_name,
    ref_category_code
from tbl_category
order by
	ref_category_code is null asc;

 
