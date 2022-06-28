
select (ship_list.commissioned, ship_list.name_ru, ship_types.name_ru) from 
    ship_list 
    inner join ship_types 
        on ship_types.id = ship_list.type_id 
    where (ship_list.sunk_date is null) and 
          (ship_list.class_id = 
                (select (id) from ship_class where (name_ru = 'линкор'))) 
    order by ship_list.commissioned;


create or replace function get_ancestor (in class_name_ru text) returns table (id int, name_ru varchar(100))
    language sql
as $$
with recursive parent_class (id, parent_id, name_ru) as 
(
    select id, parent_id, name_ru from 
        ship_class
        where (name_ru like class_name_ru) 
    union
    select ship_class.id, ship_class.parent_id, ship_class.name_ru from 
        parent_class 
        inner join ship_class
            on parent_class.parent_id = ship_class.id
)
select id, name_ru from parent_class where parent_id is null;
$$;


create or replace function get_ancestor_by_id (in class_id int) returns int
    language sql
as $$
with recursive parent_class (id, parent_id) as 
(
    select id, parent_id from 
        ship_class
        where (id = class_id) 
    union
    select ship_class.id, ship_class.parent_id from 
        parent_class 
        inner join ship_class
            on parent_class.parent_id = ship_class.id
)
select id from parent_class where parent_id is null;
$$;


create or replace function get_gun_ancestor_by_id (in class_id int) returns int
    language sql
as $$
with recursive parent_class (id, parent_id) as 
(
    select id, parent_id from 
        gun_class
        where (id = class_id) 
    union
    select gun_class.id, gun_class.parent_id from 
        parent_class 
        inner join gun_class
            on parent_class.parent_id = gun_class.id
)
select id from parent_class where parent_id is null;
$$;


create or replace function get_gun_ancestor_by_id (in class_id int) returns int
    language sql
as $$
with recursive parent_class (id, parent_id) as 
(
    select id, parent_id from 
        gun_class
        where (id = class_id) 
    union
    select gun_class.id, gun_class.parent_id from 
        parent_class 
        inner join gun_class
            on parent_class.parent_id = gun_class.id
)
select id from parent_class where parent_id is null;
$$;



create or replace function get_ships_in_class (in class_name_ru text) returns 
    table 
    (
        id int, 
        commissioned date, 
        name_ru varchar(100), 
        type_ru varchar(100), 
        class_ru varchar(100)
    )
    language sql
as $$
select (ship_list.id, 
        ship_list.commissioned, 
        ship_list.name_ru, 
        ship_types.name_ru, 
        ship_class.name_ru
    ) from 
    ship_list 
    inner join ship_types
        on ship_types.id = ship_list.type_id
    inner join ship_class
        on ship_class.id = ship_list.class_id
    where ((select get_ancestor_by_id(ship_list.class_id)) in 
        (select id from get_ancestor(class_name_ru))) 
    order by commissioned;
$$;
 

select * from ship_info order by (sunk_date, sunk_reason, class_name, type_name, name_ru);


select count(*) from (select distinct (ship_id) from ship_guns) as top;

/*
\o /home/wa51/ship_event
select * from ...
\o
*/


