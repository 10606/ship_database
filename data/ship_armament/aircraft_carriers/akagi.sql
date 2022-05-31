    
/*
    57 - Акаги
*/
    
    
/* характеристики */
insert into general
    (ship_id, date_from, date_to, 
     displacement_standart, displacement_full, 
     length, width, draft,
     crew, speed_max, speed_cruise, range)
    values
    (57, '1927-03-27', '1935-10-24',    26900, 34364,   249.0, 31.3, 8.1,   2000, 32.5, 14, 12800),
    (57, '1938-08-31', '1942-06-05',    36500, 41300,   250.4, 31.7, 8.2,   2000, 31.2, 16, 13200);

    
    
/* модернизации */
insert into ship_event_list
    (class_id, ship_id, date_from, date_to, description)
    values
    (0, 57, '1931-12-20', '1932-11-20', 'Йокосука'), /* неточные даты */
    (0, 57, '1935-10-24', '1938-08-31', 'Сасебо'),
    (0, 57, '1940-11-15', '1941-03-01', 'Куре, модернизация СУО и радиооборудования'), /* неточная дата окончания */
    (1, 57, '1941-05-22', '1941-06-05', 'Сасебо'),
    (6, 57, '1941-11-22', '1941-11-23', 'Эторофу-То');
    
    
    
/* орудия ГК */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (57, 25, 6, '1927-03-27', '1942-06-05'),
    (57, 26, 2, '1927-03-27', '1935-10-24');
    
    
    
/* ПВО */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (57, 60,  6, '1927-03-27', '1942-06-05'),
    (57, 44, 14, '1938-08-31', '1942-06-05');
    
    
/* прожектора */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (57, 37, 4, '1927-03-27', '1942-06-05');

    
    
/* авиагруппа */
    /* до 1935-10-24 2 подъемника */
    /*  c 1938-08-31 3 подъемника */
insert into ship_aircraft
    (ship_id, aircraft_id, amount, amount_reserve, date_from, date_to)
    values
    (57,  58, 12,  4, '1927-03-27', '1931-12-20'), /* 1MF3 */
    (57,  61, 12,  4, '1932-11-20', '1935-10-24'), /* A1N1 */
    (57, 114, 24,  4, '1927-03-27', '1935-10-24'), /* B1M1 */
    (57, 117, 12,  4, '1927-03-27', '1935-10-24'), /* C1N1 */
    
    (57,  13, 12,  4, '1938-08-31', '1940-11-15'), /* A5M2 */
    (57, 119, 36, 16, '1938-08-31', '1940-11-15'), /* B4Y1 */
    (57,  46, 18,  5, '1938-08-31', '1940-11-15'), /* D1A2 */
    
    (57,  16, 18,  3, '1941-03-01', '1941-11-22'), /* A5M4 */
    (57,   0, 18,  3, '1941-11-22', '1942-05-27'), /* A6M2 */
    (57,   8, 27,  3, '1941-03-01', '1942-05-27'), /* B5N2 */
    (57,   9, 18,  3, '1941-03-01', '1942-05-27'), /* D3A1 */
    
    (57,   0, 18,  6, '1942-05-27', '1942-06-05'), /* A6M2 */
    (57,   8, 18,  0, '1942-05-27', '1942-06-05'), /* B5N2 */
    (57,   9, 18,  0, '1942-05-27', '1942-06-05'); /* D3A1 */

