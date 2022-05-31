    
/*
    63 - Секаку
    64 - Дзуйкаку
*/
    
    
/* характеристики */
insert into general
    (ship_id, date_from, date_to, 
     displacement_standart, displacement_full, 
     length, width, draft,
     crew, speed_max, speed_cruise, range)
    values
    (63, '1941-08-08', '1944-06-19',    25675, 29800,   250.0, 26.0, 8.9,   1650, 34.21, 18, 15600),
    (64, '1941-09-25', '1944-10-25',    25675, 29800,   250.0, 26.0, 8.9,   1650, 34.20, 18, 15600);

    
    
/* модернизации */
insert into ship_event_list
    (class_id, ship_id, date_from, date_to, description)
    values
    (5, 63, '1941-12-07', '1941-12-07', 'атака на Перл-Харбор'),
    (1, 63, '1942-02-27', '1942-03-05', 'Йокосука'),
    (5, 63, '1942-05-04', '1942-05-08', 'сражение в Коралловом море'),
    (0, 63, '1942-06-16', '1942-06-27', 'Куре'),
    (0, 63, '1942-11-06', '1943-02-28', 'Йокосука'),
    (1, 63, '1943-12-27', '1944-01-06', 'Йокосука'),
    
    (5, 64, '1941-12-07', '1941-12-07', 'атака на Перл-Харбор'),
    (1, 64, '1941-12-30', '1942-01-03', 'Куре'),
    (5, 64, '1942-05-04', '1942-05-08', 'сражение в Коралловом море'),
    (0, 64, '1942-07-30', '1942-08-12', 'Куре'),
    (6, 64, '1942-11-09', '1942-11-21', 'Куре'),
    (0, 64, '1942-12-28', '1942-12-31', 'Йокосука'),
    (0, 64, '1943-06-11', '1943-06-19', 'Куре'),
    (1, 64, '1944-01-08', '1944-01-17', 'Куре'),
    (1, 64, '1944-03-25', '1944-03-31', 'Салетар'),
    (0, 64, '1944-07-14', '1944-08-10', 'Куре');
    
    
    
/* ПВО */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (63, 13,  8, '1941-08-08', '1944-06-19'),
    (63, 45, 12, '1941-08-08', '1942-06-16'),
    (63, 45, 18, '1942-06-27', '1942-11-06'),
    (63, 45, 20, '1943-02-28', '1944-06-19'),
    (63, 43, 16, '1943-02-28', '1944-06-19'),
    
    (64, 13,  8, '1941-09-25', '1944-10-25'),
    (64, 61,  8, '1944-08-10', '1944-10-25'),
    (64, 45, 12, '1941-08-08', '1942-07-30'),
    (64, 45, 16, '1942-08-12', '1943-06-11'),
    (64, 45, 20, '1943-06-19', '1944-07-14'),
    (64, 43, 16, '1943-06-19', '1944-07-14'),
    (64, 45, 22, '1944-08-10', '1944-10-25'),
    (64, 43, 36, '1944-08-10', '1944-10-25');
    
    
    
/* радары */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (63, 0, 1, '1942-06-27', '1944-06-19'), /* тип 21 */
    (63, 2, 1, '1943-02-28', '1944-06-19'), /* тип 13 */

    (64, 0, 1, '1942-12-31', '1944-10-25'), /* тип 21 */
    (64, 2, 1, '1943-06-19', '1944-10-25'); /* тип 13 */

 
    
/* прожектора */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (63, 32, 3, '1941-08-08', '1944-06-19'),
    (64, 32, 3, '1941-09-25', '1944-10-25');
    
    
    
/* авиагруппа */
/* 
    3 подъемника:
        13м * 16м
        13м * 12м
        12м * 13м
    1 кран
*/
insert into ship_aircraft
    (ship_id, aircraft_id, amount, amount_reserve, date_from, date_to)
    values
    (63,  0, 18,  4, '1941-08-08', '1942-02-27'), /* A6M2 */
    (63,  8, 27,  4, '1941-08-08', '1942-02-27'), /* B5N2 */
    (63,  9, 27,  4, '1941-08-08', '1942-02-27'), /* D3A1 */
    
    (63,  0, 21,  2, '1942-03-05', '1942-06-16'), /* A6M2 */
    (63,  8, 21,  6, '1942-03-05', '1942-06-16'), /* B5N2 */
    (63,  9, 20,  6, '1942-03-05', '1942-06-16'), /* D3A1 */
    
    (63,  0, 26,  4, '1942-06-27', '1942-11-06'), /* A6M2 */
    (63,  8, 18,  0, '1942-06-27', '1942-11-06'), /* B5N2 */
    (63,  9, 14,  0, '1942-06-27', '1942-11-06'), /* D3A1 */
    
    (63,  1, 18,  4, '1943-02-28', '1943-12-27'), /* A6M3 */
    (63,  8, 23,  6, '1943-02-28', '1943-12-27'), /* B5N2 */
    (63,  9, 20,  5, '1943-02-28', '1943-12-27'), /* D3A1 */
    
    (63,  2, 27,  0, '1944-01-06', '1944-06-19'), /* A6M5 */
    (63, 39, 18,  0, '1944-01-06', '1944-06-19'), /* B6N2 */
    (63, 18, 27,  0, '1944-01-06', '1944-06-19'), /* D4Y1 */
    (63, 17,  3,  0, '1944-01-06', '1944-06-19'), /* D4Y1-C */
    
    
    (64,  0, 18,  0, '1941-09-25', '1942-05-04'), /* A6M2 */
    (64,  8, 27,  0, '1941-09-25', '1942-05-04'), /* B5N2 */
    (64,  9, 27,  0, '1941-09-25', '1942-05-04'), /* D3A1 */
    
    (64,  0, 18,  0, '1942-05-08', '1942-11-09'), /* A6M2 */
    (64,  8, 18,  0, '1942-05-08', '1942-11-09'), /* B5N2 */
    (64,  9,  9,  0, '1942-05-08', '1942-11-09'), /* D3A1 */
    
    (64,  1, 27,  0, '1942-11-21', '1944-01-08'), /* A6M3 */
    (64,  2, 27,  0, '1944-01-17', '1944-07-14'), /* A6M5 */
    (64,  8, 18,  0, '1942-11-21', '1944-07-14'), /* B5N2 */
    (64,  9, 27,  0, '1942-11-21', '1944-07-14'), /* D3A1 */
    (64, 17,  3,  0, '1944-01-17', '1944-07-14'), /* D4Y1-C */
    
    (64,  2, 44,  6, '1944-08-10', '1944-10-25'), /* A6M5 */
    (64, 39, 14,  0, '1944-08-10', '1944-10-25'), /* B6N2 */
    (64, 18,  7,  0, '1944-08-10', '1944-10-25'); /* D4Y1 */
    
    