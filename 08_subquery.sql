-- subqueries

select 
	category_code
from 
	tbl_menu
where
	menu_name = '민트미역국';
    
select
	*
from
	tbl_menu
where
	category_code = (
		select 
			category_code
		from 
			tbl_menu
		where
			menu_name = '민트미역국'
    );
    
-- count() : return the nums of columns or rows

select
	category_code,
    count(*) as 'count'
from
	tbl_menu
group by category_code;

select
	max(count) as count
from
	(
		select
			count(*) as 'count'
        from
			tbl_menu
		group by
			category_code
    ) as countmenu;
    
    
    
select
	avg(menu_price)
from
	tbl_menu
where
	category_code = 4;
    
    
    
    
select
	a.menu_code,
    a.menu_name,
    a.menu_price,
    a.category_code
from
	tbl_menu a
where
	menu_price > (
					select
						avg(menu_price)
					from
						tbl_menu
					where
						category_code = a.category_code
					);
                    
-- cte(common table expressions)

select
	a.menu_name,
    b.category_name
from
	tbl_menu a
join tbl_category b
	on
	a.category_code = b.category_code;

with menucate as (
	select
		a.menu_name,
		b.category_name
	from
		tbl_menu a
	join tbl_category b
		on
		a.category_code = b.category_code
				)
                
select
	*
from
	menucate;
				
