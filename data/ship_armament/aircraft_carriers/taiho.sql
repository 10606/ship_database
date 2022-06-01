    
/*
    69 - Тайхо
*/
    
    
/* характеристики */
insert into general
    (ship_id, date_from, date_to, 
     displacement_standart, displacement_full, 
     length, width, draft,
     crew, speed_max, speed_cruise, range)
    values
    (69, '1944-03-07', '1944-06-19',    34200, 36600,   260.6, 27.7, 10.2,  1751, 33.3, 18, 18520);

    
    
/* модернизации */
insert into ship_event_list
    (class_id, ship_id, date_from, date_to, description)
    values
    (6, 69, '1944-04-09', '1944-05-12',  'Филиппины, Линга');
    
    
    
/* ПВО */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (69,  7,  6, '1944-03-07', '1944-06-19'),
    (69, 45, 17, '1944-03-07', '1944-06-19');
    
    
    
/* радары */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (69, 1, 2, '1944-03-07', '1944-06-19'), /* тип 22 мод 4 */
    (69, 2, 1, '1944-03-07', '1944-06-19'); /* тип 13 */

    
    
/* авиагруппа */
    /* 2 подъемника, 1 кран */
insert into ship_aircraft
    (ship_id, aircraft_id, amount, date_from, date_to)
    values
    (69,  2, 19, '1944-03-07', '1944-04-15'), /* A6M5 */
    (69, 17,  4, '1944-03-07', '1944-04-15'), /* D4Y1-C */
    (69, 18, 16, '1944-03-07', '1944-04-15'), /* D4Y1 */
    (69, 10,  1, '1944-03-07', '1944-04-15'), /* D3A2 */
    (69, 39, 16, '1944-03-07', '1944-04-15'), /* B6N2 */
    
    (69,  2, 22, '1944-04-15', '1944-06-19'), /* A6M5 */
    (69, 17,  4, '1944-04-15', '1944-06-19'), /* D4Y1-C */
    (69, 18, 18, '1944-04-15', '1944-06-19'), /* D4Y1 */
    (69, 10,  3, '1944-04-15', '1944-06-19'), /* D3A2 */
    (69, 38, 18, '1944-04-15', '1944-06-19'); /* B6N2 */

    
