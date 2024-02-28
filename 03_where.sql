-- where

select
	menu_name,
    menu_price,
    orderable_status
from 
	tbl_menu
where 
	orderable_status = 'Y';
    
-- viewing  menu name, price, orderable_status that costs more than 13000 and less than 21000
select
	menu_name,
    menu_price,
	orderable_status
from tbl_menu
where
	menu_price > 13000 AND menu_price < 21000;
    
select
	menu_code,
    menu_name,
    orderable_status
from
	tbl_menu
where
	orderable_status <> 'Y';
    
-- view menu code, name, price that costs more than 20000 from tbl_menu

select
	menu_code,
    menu_name,
    menu_price
from tbl_menu
where
	menu_price > 20000;
    
    
-- -----
select
	menu_code,
    menu_name,
    menu_price
from tbl_menu
where
	menu_price <= 20000
order by 
	menu_price;

select 1 or 1, 1 or 0, 0 or 1;

select 0 or 1;

select
	menu_name,
    menu_price,
    category_code,
    orderable_status
from
	tbl_menu
where
	orderable_status = 'Y'
    or
    category_code = 10
order by
	category_code;

select
	*
from tbl_menu
where
	menu_price > 5000
    OR
    category_code = 10;
    
-- between and where

select
	menu_name,
    menu_price,
    category_code
from
	tbl_menu
where
	menu_price between 10000 and 20000;
    
-- like
select
	menu_name,
    menu_price
from
	tbl_menu
where
	menu_name like '%마늘%';
    
select
	*
from 
	tbl_menu
where
	menu_price > 5000
    AND
    category_code = 10
    AND
	menu_name not like '%갈치%';
    
select
	menu_name,
    category_code
from
	tbl_menu
where
	category_code in (4,6);
    
select
	category_code,
    category_name,
    ref_category_code
from
	tbl_category
where
	ref_category_code is not null;