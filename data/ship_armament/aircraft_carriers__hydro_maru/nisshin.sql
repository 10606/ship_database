    
/*
    82 - Ниссин
*/
    
    
/* характеристики */
insert into general
    (ship_id, date_from, date_to, 
     displacement_standart, displacement_full, 
     length, width, draft,
     crew, speed_max, speed_cruise, range)
    values
    (82, '1942-02-27', '1943-07-22',    11317, 12500,   192.5, 19.7, 7.0,    789, 28, 16, 12800);

    
    
/* орудия ГК */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (82, 19, 3, '1942-02-27', '1943-07-22');
    
    
    
/* ПВО */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (82, 45, 8, '1942-02-27', '1943-07-22');
    
    
    
/* катапульты */
insert into ship_catapult
    (ship_id, catapult_id, amount, date_from, date_to)
    values
    (82, 10, 2, '1942-02-27', '1943-07-22');

    
    
/* авиагруппа */
insert into ship_aircraft
    (ship_id, aircraft_id, amount, amount_reserve, date_from, date_to)
    values
    (82, 37, 11, 1, '1942-02-27', '1943-07-22'); /* F1M */
    /* 12 минисубмарин типа A */

