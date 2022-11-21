    
/*
    88 - Симане Мару
*/
    
    
/* характеристики */
insert into general
    (ship_id, date_from, date_to, 
     displacement_standart, displacement_full, 
     length, width, draft,
     crew, speed_max, speed_cruise, range)
    values
    (88, '1945-02-28', '1945-07-24',    11989, 11989,   160.5, 20.0, 9.1,    null, 18.5, 10, 19000);

    
    
/* модернизации */
insert into ship_event_list
    (class_id, ship_id, date_from, date_to, description)
    values
    (7, 88, '1945-03-19', '1945-03-19', 'Куре, поврежден авиацией TF-58');
    
    
    
/* ПВО */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (88,  9,  2, '1945-02-28', '1945-07-24'),
    (88, 45,  9, '1945-02-28', '1945-07-24'),
    (88, 43, 25, '1945-02-28', '1945-07-24');
    
    
    
/* радары */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (88, 2, 1, '1945-02-28', '1945-07-24'); /* тип 13 */

    
    
/* авиагруппа */
insert into ship_aircraft
    (ship_id, aircraft_id, amount, amount_reserve, date_from, date_to)
    values
    (88, 146, 12, 0, '1945-02-28', '1945-07-24'); /* K5Y1 */

