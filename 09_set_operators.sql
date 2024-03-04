-- 09_set_operators

-- two or more 

select
	*
from tbl_menu
where
	category_code = 10
union

select
	*
from tbl_menu
where
	menu_price < 9000;

-- union all

select
	*
from tbl_menu
where
	category_code = 10
union all

select
	*
from tbl_menu
where
	menu_price < 9000;
    

select
	menu_code,
    menu_name,
    menu_price,
    category_code,
    orderable_status
from
	tbl_menu;
    
-- 2
select
	menu_code,
    menu_name,
    menu_price,
    category_code,
    orderable_status
from
	tbl_menu
where
	menu_price <9000;

-- result
select
	a.menu_code,
    a.menu_name,
    a.menu_price,
    a.category_code,
    a.orderable_status
from
	tbl_menu a
inner join
	(
		select
	menu_code,
    menu_name,
    menu_price,
    category_code,
    orderable_status
	from
		tbl_menu
	where
		menu_price <9000
    ) b 
    on 
    (a.menu_code = b.menu_code);







    


