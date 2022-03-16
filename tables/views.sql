
create view ship_info as
select ship_list.id, ship_list.name_ru, ship_types.name_ru as type_name, ship_class.name_ru as class_name, ship_list.commissioned, ship_list.sunk_date, ship_list.sunk_reason
from ship_list
inner join ship_types on ship_list.type_id = ship_types.id
inner join ship_class on ship_list.class_id = ship_class.id;
 

create view events as
       select id, 'встал в строй' as event, commissioned as event_date,        null as event_comment, name_ru, type_name, class_name from ship_info
union (select id, 'выведен из строя' as event, sunk_date as event_date, sunk_reason as event_comment, name_ru, type_name, class_name from ship_info);


