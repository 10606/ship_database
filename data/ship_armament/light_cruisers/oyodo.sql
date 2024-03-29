
/*
    33 - Оедо
*/


/* характеристики */
insert into general
    (ship_id, date_from, date_to, 
     displacement_standart, displacement_full, 
     length, width, draft,
     crew, speed_max, speed_cruise, range)
    values
    (33, '1943-02-28', '1944-03-06',    8291, 10987,    192.0, 16.6, 5.95,  782, 36.06, 18, 17000),
    (33, '1944-03-31', '1944-09-29',    8291, 10987,    192.0, 16.6, 5.95,  911, 36.06, 18, 17000),
    (33, '1944-09-29', '1945-07-28',    8291, 10987,    192.0, 16.6, 5.95,  782, 36.06, 18, 17000);

    
    
/* модернизации */
insert into ship_event_list
    (class_id, ship_id, date_from, date_to, description)
    values
    (0, 33, '1943-04-10', '1943-04-17', 'Куре'),
    (1, 33, '1943-06-16', '1943-06-25', 'Куре'),
    (0, 33, '1944-03-06', '1944-03-31', 'Йокосука'),
    (0, 33, '1944-10-01', '1944-10-09', 'Йокосука'),
    (0, 33, '1944-10-28', '1944-10-28', 'Окинава'),
    (1, 33, '1945-01-09', '1945-01-29', 'Сингапур'),
    (1, 33, '1945-03-23', '1945-05-04', 'Куре');
    
    
    
/* орудия ГК */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (33, 24, 2, '1943-02-28', '1945-07-28');

 
    
/* ПВО */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (33,  7,  4, '1943-02-28', '1945-07-28'),
    (33, 45,  6, '1943-02-28', '1944-03-06'),
    (33, 45, 12, '1944-03-31', '1945-07-28'),
    (33, 43, 11, '1944-03-31', '1944-10-01'),
    (33, 43, 17, '1944-10-09', '1944-10-28'),
    (33, 43, 21, '1944-10-28', '1945-07-28');



/* радары */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (33, 0, 1, '1943-04-17', '1945-07-28'), /* тип 21 мод 2 */
    (33, 1, 2, '1944-03-31', '1944-10-01'), /* тип 22 мод 4 */
    (33, 1, 2, '1944-10-09', '1945-07-28'), /* тип 22 мод 4S */
    (33, 2, 1, '1944-10-09', '1945-07-28'); /* тип 13 */
    /* с 1944-03-31 аккустическая станция тип 93 мод 3 */

 
    
/* прожектора */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (33, 42, 3, '1943-02-28', '1944-03-06'),
    (33, 42, 2, '1944-03-31', '1945-07-28'),
    (33, 33, 2, '1943-02-28', '1945-07-28');
    
    
    
/* катапульты */
insert into ship_catapult
    (ship_id, catapult_id, amount, date_from, date_to)
    values
    (33, 15, 1, '1943-02-28', '1944-03-06'),
    (33, 10, 1, '1944-03-31', '1945-07-28');
    
    
    
/* авиагруппа */
insert into ship_aircraft
    (ship_id, aircraft_id, amount, date_from, date_to)
    values
    (33, 63, 6, '1943-02-28', '1943-04-10'), /* E15K1 */
    (33, 63, 4, '1943-04-17', '1944-03-06'), /* E15K1 */
    (33, 11, 2, '1944-03-31', '1945-07-28'); /* E13A */
    
    
