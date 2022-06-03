    
/*
    58 - Кага
*/
    
    
/* характеристики */
insert into general
    (ship_id, date_from, date_to, 
     displacement_standart, displacement_full, 
     length, width, draft,
     crew, speed_max, speed_cruise, range)
    values
    (58, '1928-03-31', '1934-06-25',    26000, 33693,   230.0, 29.6, 7.9,   1340, 26.7, 16,  8800),
    (58, '1935-06-25', '1942-06-04',    38200, 42541,   240.0, 32.5, 9.5,   2016, 28.3, 16, 16000);

    
    
/* модернизации */
insert into ship_event_list
    (class_id, ship_id, date_from, date_to, description)
    values
    (0, 58, '1930-12-01', '1930-12-01', 'замена системы торможения тросов'), /* неточные даты */
    (0, 58, '1934-06-25', '1935-06-25', 'Сасебо'),
    (6, 58, '1937-08-20', '1937-08-20', 'Сасебо'), /* неточные даты */
    (6, 58, '1937-09-26', '1937-09-26', 'Сасебо'),
    (0, 58, '1938-12-15', '1939-01-01', 'Сасебо'), /* неточная дата окончания */
    (0, 58, '1940-05-01', '1940-11-18', 'Сасебо'),
    (6, 58, '1941-11-22', '1941-11-22', 'Хиттокаппу-Ван'),
    (0, 58, '1942-03-22', '1942-03-27', 'Сасебо'),
    (6, 58, '1942-05-27', '1942-05-27', 'Хасирадзима');
    
    
    
/* орудия ГК */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (58, 25,  6, '1928-03-31', '1934-06-25'),
    (58, 25, 10, '1935-06-25', '1942-06-04'),
    (58, 26,  2, '1928-03-31', '1934-06-25');
    
    
    
/* ПВО */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (58, 60,  6, '1928-03-31', '1934-06-25'),
    (58, 12,  8, '1935-06-25', '1942-03-22'),
    (58, 12,  6, '1942-03-27', '1942-06-04'),
    (58, 13,  2, '1942-03-27', '1942-06-04'),
    (58, 44, 12, '1935-06-25', '1940-11-14'),
    (58, 44, 14, '1940-11-18', '1942-06-04');
    
    
/* прожектора */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (58, 32, 4, '1935-06-25', '1942-06-04');

    
    
/* 
    СУО
    с 1935-06-25
    тип 95 для 25мм тип 96
    тип 91 для 127мм тип 89

*/
    
    
    
/* авиагруппа */
/* 
    3 подъемника:
        12м * 16м
        11м * 13м
        14м *  8м
*/
insert into ship_aircraft
    (ship_id, aircraft_id, amount, amount_reserve, date_from, date_to)
    values
    (58,  58, 12, 3, '1928-03-31', '1930-12-01'), /* 1MF3 */ /* неточная дата окончания */
    (58, 115, 18, 6, '1928-03-31', '1930-12-01'), /* B1M2 */ /* неточная дата окончания */
    (58, 118,  6, 2, '1928-03-31', '1930-12-01'), /* C1N2 */ /* неточная дата окончания */

    (58,  62, 16, 0, '1930-12-01', '1934-06-25'), /* A1N2 */ /* неточная дата начала */
    (58, 116, 32, 0, '1930-12-01', '1934-06-25'), /* B1M3 */ /* неточная дата начала */
    
    (58, 120, 16, 0, '1935-06-25', '1937-09-26'), /* A2N1 */
    (58,  45, 16, 0, '1935-06-25', '1937-09-26'), /* D1A1 */
    (58, 124, 28, 0, '1935-06-25', '1937-09-26'), /* B2M2 */
    
    (58, 125,  8, 0, '1937-09-26', '1940-11-18'), /* A4N1 */ /* неточные даты, неточное количество */
    (58,  12,  2, 0, '1937-08-20', '1937-09-26'), /* A5M1 */
    (58,  13, 16, 0, '1937-09-26', '1940-11-18'), /* A5M2 */
    (58, 119, 32, 0, '1937-09-26', '1940-11-18'), /* B4Y1 */
    (58,  46, 16, 0, '1937-09-26', '1940-11-18'), /* D1A2 */
    
    (58,  16, 12, 0, '1940-11-18', '1941-11-22'), /* A5M4 */
    (58, 119, 36, 0, '1940-11-18', '1941-11-22'), /* B4Y1 */
    (58,  46, 24, 0, '1940-11-18', '1941-11-22'), /* D1A2 */
    /* +18 разобранных */
    
    (58,   0, 18, 6, '1941-11-22', '1941-12-07'), /* A6M2 */
    (58,   8, 27, 6, '1941-11-22', '1941-12-07'), /* B5N2 */
    (58,   9, 27, 6, '1941-11-22', '1941-12-07'), /* D3A1 */
    
    (58,   0, 14, 6, '1941-12-07', '1942-01-23'), /* A6M2 */
    (58,   8, 22, 6, '1941-12-07', '1942-03-22'), /* B5N2 */
    (58,   9, 21, 6, '1941-12-07', '1942-01-22'), /* D3A1 */
    
    (58,   9, 19, 6, '1942-01-22', '1942-03-22'), /* D3A1 */ /* 1942-01-22 потеря 2* D3A1 */
    (58,   0, 13, 6, '1942-01-23', '1942-03-22'), /* A6M2 */ /* 1942-01-23 потеря 1* A6M2 */

    (58,   0, 27, 0, '1942-03-27', '1942-06-04'), /* A6M2 */
    (58,   8, 27, 0, '1942-03-27', '1942-06-04'), /* B5N2 */
    (58,   9, 18, 2, '1942-03-27', '1942-06-04'); /* D3A1 */
    
    
