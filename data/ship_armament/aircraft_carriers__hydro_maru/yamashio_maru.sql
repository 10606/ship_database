    
/*
    86 - Ямасио Мару
*/
    
    
/* характеристики */
insert into general
    (ship_id, date_from, date_to, 
     displacement_standart, displacement_full, 
     length, width, draft,
     crew, speed_max, speed_cruise, range)
    values
    (86, '1945-01-27', '1945-02-17',    16119, 16119,   157.5, 20.48, 9.0,    221, 15, 13, 17000);

    
    
/* ПВО */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (86, 44, 8, '1945-01-27', '1945-02-17');
        
        
        
/* бомбометы */
insert into ship_throwers
    (ship_id, throwers_id, amount, date_from, date_to)
    values
    (86, 0, 1, '1945-01-27', '1945-02-17'); /* неточная модель */

    
    
/* авиагруппа */
insert into ship_aircraft
    (ship_id, aircraft_id, amount, amount_reserve, date_from, date_to)
    values
    (86,  55, 8, 0, '1945-01-27', '1945-02-17'); /* Ki-76 */

