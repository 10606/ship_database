\cd ships

\i battleships/_all.sql
\i aircraft_carriers/_all.sql
\i aircraft_carriers__hydro_maru/_all.sql
\i heavy_cruisers/_all.sql
\i light_cruisers/_all.sql
\i destroyers/_all.sql

select ship_list.id, ship_list.name_en, pic_cnt.cnt 
    from ship_list
    inner join 
    (
        select ship_id, count(*) as cnt 
            from pictures_ship 
            group by ship_id 
            order by cnt desc 
            limit 10
    ) as pic_cnt 
    on ship_list.id = pic_cnt.ship_id 
    order by pic_cnt.cnt desc;

\cd ..
