
/*
    10 - Ямато
    11 - Мусаси
*/


/* характеристики */
insert into general
    (ship_id, date_from, date_to, 
     displacement_standart, displacement_full, 
     length, width, draft,
     crew, speed_max, speed_cruise, range)
    values
    (10, '1941-12-16', '1945-04-07',     67123, 71659,   256.0,   36.9, 10.4,   2500, 27.4,  16,  20600),
    (11, '1942-08-05', '1944-10-24',     68050, 72200,   256.0,   36.9, 10.6,   2500, 27.7,  16,  20600);



/* модернизации */
insert into ship_event_list
    (class_id, ship_id, date_from, date_to, description)
    values
    (1, 10, '1943-05-21', '1943-05-30', 'Куре'),
    (0, 10, '1943-07-12', '1943-07-16', 'Куре, усиление бронирования башен 155мм орудий'),
    (1, 10, '1943-12-25', '1943-12-25', 'Акаши, после торпедного попадания'),
    (1, 10, '1944-01-16', '1944-02-03', 'Куре'),
    (0, 10, '1944-02-25', '1944-03-18', 'Куре'),
    (0, 10, '1944-07-02', '1944-07-08', 'Куре'),
    (0, 10, '1944-11-25', '1945-01-03', 'Куре'),
    
    (1, 11, '1941-07-02', '1941-07-27', 'Сасебо'),
    (1, 11, '1942-05-26', '1942-06-09', 'Куре'),
    (0, 11, '1942-06-27', '1942-07-23', 'Куре, модернизация ПВО'),
    (0, 11, '1942-09-03', '1942-09-03', 'Куре, установка радара'),
    (1, 11, '1943-07-01', '1943-07-08', 'Куре'),
    (0, 11, '1944-04-10', '1944-04-27', 'Куре'),
    (0, 11, '1944-07-02', '1944-07-08', 'Куре');
 
    

/* 460мм орудия */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (10, 40, 3, '1941-12-16', '1945-04-07'),
    (11, 40, 3, '1942-08-05', '1944-10-24');
 
    

/* 155мм орудия */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (10, 24, 4, '1941-12-16', '1944-02-25'),
    (10, 24, 2, '1944-03-18', '1945-04-07'),
    
    (11, 24, 4, '1942-08-05', '1944-04-10'),
    (11, 24, 2, '1944-04-27', '1944-10-24');
    
    
    
/* ПВО */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (10, 14,  6, '1941-12-16', '1944-02-25'),
    (10, 14, 12, '1944-03-18', '1945-04-07'),
    (10, 46,  8, '1941-12-16', '1945-04-07'),
    (10, 52,  2, '1941-12-16', '1945-04-07'),
    (10, 45,  4, '1943-07-16', '1944-02-25'),
    (10, 45, 12, '1944-03-18', '1944-07-02'),
    (10, 45, 17, '1944-07-02', '1944-11-25'),
    (10, 45, 42, '1945-01-03', '1945-04-07'),
    (10, 43, 26, '1944-03-18', '1944-11-25'),
    (10, 43,  2, '1945-01-03', '1945-04-07'),
    
    (11, 14,  6, '1942-08-05', '1944-04-10'),
    (11, 14, 12, '1944-04-27', '1944-10-24'),
    (11, 46,  8, '1942-08-05', '1944-10-24'),
    (11, 52,  2, '1942-08-05', '1944-10-24'),
    (11, 45,  4, '1942-07-23', '1944-04-10'),
    (11, 45, 22, '1944-04-27', '1944-07-02'), /* 14 директоров тип 95 */
    (11, 45, 27, '1944-07-08', '1944-10-24'),
    (11, 43, 25, '1944-04-27', '1944-10-24');



/* радары */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (10,  0, 1, '1943-07-16', '1945-04-07'), /* тип 21 мод 3 */
    (10,  1, 2, '1944-03-18', '1945-04-07'), /* тип 22 мод 4 */
    (10,  2, 2, '1944-03-18', '1945-04-07'), /* тип 13 */
    (10, 26, 2, '1944-03-18', '1945-04-07'), /* E-27 */ /* неточное количество */
    /* с 1944-03-18 инфракрасная тип 2 свой-чужой */

    (11,  0, 1, '1942-09-03', '1944-10-24'), /* тип 21 мод 3 */
    (11,  1, 2, '1944-04-27', '1944-07-02'), /* тип 22 */
    (11,  1, 2, '1944-07-08', '1944-10-24'), /* тип 22 мод 4 */
    (11,  2, 2, '1944-04-27', '1944-10-24'); /* тип 13 */



/* прожектора */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (10, 31, 8, '1941-12-16', '1944-02-25'),
    (10, 31, 6, '1944-03-18', '1945-04-07'),
    
    (11, 31, 8, '1942-08-05', '1944-04-10'),
    (11, 31, 6, '1944-04-27', '1944-10-24');

    

/* катапульты */
    /* кран 6т */
insert into ship_catapult
    (ship_id, catapult_id, amount, date_from, date_to)
    values
    (10, 11, 2, '1941-12-16', '1945-04-07'),
    (11, 11, 2, '1942-08-05', '1944-10-24');



/* авиагруппа */
insert into ship_aircraft
    (ship_id, aircraft_id, amount, date_from, date_to)
    values
    (10, 37, 7, '1941-12-16', '1945-04-07'), /* F1M2 */
    (11, 37, 7, '1942-08-05', '1944-10-24'); /* F1M2 */


