    
/*
    78 - Синье
*/
    
    
/* характеристики */
insert into general
    (ship_id, date_from, date_to, 
     displacement_standart, displacement_full, 
     length, width, draft,
     crew, speed_max, speed_cruise, range)
    values
    (78, '1943-11-15', '1944-11-17',    17500, 20916,   189.4, 25.6, 8.2,  942, 19.6, 18, null);

    
    
/* модернизации */
insert into ship_event_list
    (class_id, ship_id, date_from, date_to, description)
    values
    (0, 78, '1944-01-01', '1944-01-01', ''), /* нет данных */
    (0, 78, '1944-06-27', '1944-07-06', 'Куре'); /* неточные даты */
    
    
    
/* ПВО */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (78, 13,  4, '1943-11-15', '1944-11-17'),
    (78, 45, 10, '1943-11-15', '1944-11-17'),
    (78, 43, 12, '1944-01-01', '1944-11-17'),
    (78, 44,  4, '1944-07-06', '1944-11-17');
    
    
    
/* радары */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (78, 0, 1, '1943-11-15', '1944-11-17'); /* тип 21 мод 2 */
    
    
    
/* прожектора */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (78, 32, 3, '1943-11-15', '1944-11-17');

    
    
/* авиагруппа */
    /* 2 подъемника */
insert into ship_aircraft
    (ship_id, aircraft_id, amount, amount_reserve, date_from, date_to)
    values
    (78,  0, 18, 6, '1943-11-15', '1944-11-09'), /* A6M2 */ /* неточные даты */
    (78, 18,  6, 0, '1943-11-15', '1944-11-09'), /* D4Y1 */ /* неточные даты */
    (78, 55,  4, 0, '1943-11-15', '1944-11-09'), /* Ki-76 */ /* неточные даты */
    
    (78,  8, 14, 0, '1944-11-09', '1944-11-17'); /* B5N2 */

    
