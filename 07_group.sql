-- grouping 
-- group by
select
	category_code
from
	tbl_menu
group by category_code;

-- count() : counting nums
select
	category_code,
    count(menu_code)
from
	tbl_menu
group by category_code;

-- sum()
select
	category_code,
    sum(menu_price)
from
	tbl_menu
group by category_code;

-- avg()
select
	category_code,
    avg(menu_price)
from
	tbl_menu
group by category_code;

-- creating more than 2 groups
select
	menu_price,
    category_code,
from
	tbl_menu
group by
	menu_price,
    category_code;

-- rollup
select
	category_code,
    sum(menu_price)
from tbl_menu
group by category_code
with rollup;

select
	menu_price,
    category_code,
    sum(menu_price)
from
	tbl_menu
group by
    menu_price
    ,category_code
with rollup;

select
	category_code,
    menu_price
from
	tbl_menu
where
	


