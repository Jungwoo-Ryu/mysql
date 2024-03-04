-- distinct is for ignoring redundant values

select *
from
	tbl_menu
order by category_code;

select
	distinct category_code
from
	tbl_menu
order by category_code;

select
	category_code,
    orderable_status
from
	tbl_menu;
    
    
select distinct
	category_code,
    orderable_status
from
	tbl_menu;