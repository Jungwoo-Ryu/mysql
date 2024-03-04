-- join is for combining tables

select
	menu_code as 'code',
    menu_name as name,
    menu_price price
from
	tbl_menu
order by
	price;
    
    
select
	category_code,
    menu_name,
    
from
	tbl_menu a;
    
-- join
-- inner join
-- return the intersection of two tables
-- inner can be skipped
select
	a.menu_name,
    b.category_name,
    a.category_code
from
	tbl_menu a
join tbl_category b on a.category_code = b.category_code;

select
	*
from
	tbl_menu a
join tbl_category b using (category_code);

-- left join

select
	a.category_name,
    b.menu_name,
    a.category_code
from
	tbl_category a
left join tbl_menu b 
on a.category_code = b.category_code;

-- cross join
select
	a.menu_name,
    b.category_name,
    a.category_code
from
	tbl_menu a
cross join tbl_category b;



-- self join
-- Within same table, to find relationship between rows.
select
	*
from
	tbl_category;
    
select
	a.category_name,
    b.category_name,
    a.ref_category_code
from
	tbl_category a
join tbl_category b on a.ref_category_code = b.category_code;


