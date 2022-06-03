    
/*
    59 - Рюдзе
*/
    
    
/* характеристики */
insert into general
    (ship_id, date_from, date_to, 
     displacement_standart, displacement_full, 
     length, width, draft,
     crew, speed_max, speed_cruise, range)
    values
    (59, '1933-05-09', '1935-10-11',    10600, 12300,   167.0, 20.32, 5.6,  600, 29, 14, 16000),
    (59, '1936-05-31', '1942-08-24',    12350, 14290,   167.0, 20.8,  7.1,  924, 28, 14, 16000);

    
    
/* модернизации */
insert into ship_event_list
    (class_id, ship_id, date_from, date_to, description)
    values
    (0, 59, '1934-05-26', '1934-08-20', 'Куре'),
    (0, 59, '1935-10-11', '1936-05-31', 'Куре'),
    (0, 59, '1942-04-18', '1942-05-17', 'Куре'); /* по другим данным в Йокосуке */
    
    
    
/* ПВО */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (59, 13,  6, '1933-05-09', '1935-10-11'),
    (59, 13,  4, '1936-05-31', '1942-08-24'),
    (59, 52, 12, '1933-05-09', '1942-04-18'),
    (59, 45,  6, '1942-05-17', '1942-08-24'),
    (59, 44,  2, '1936-05-31', '1942-08-24');
    
    
    
/* прожектора */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (59, 32, 3, '1936-05-31', '1942-08-24');

    
    
/* авиагруппа */
/* 
    2 подъемника:
        15.7м * 11.1м
        10.8м *  8.0м
*/
insert into ship_aircraft
    (ship_id, aircraft_id, amount, amount_reserve, date_from, date_to)
    values
    (59,  61,  5, 0, '1933-05-09', '1934-10-01'), /* A1N1 */ /* неточная дата конца */
    (59, 115, 12, 0, '1933-05-09', '1934-10-01'), /* B1M2 */ /* неточная дата конца */
    
    (59,  61,  6, 0, '1934-10-01', '1934-12-01'), /* A1N1 */ /* неточные даты */
    (59, 120,  6, 0, '1934-10-01', '1934-12-01'), /* A2N1 */ /* неточные даты */
    (59, 115,  6, 0, '1934-10-01', '1934-12-01'), /* B1M2 */ /* неточные даты */
    
    (59, 120, 12, 4, '1934-12-01', '1935-10-11'), /* A2N1 */ /* неточная дата начала */
    (59,  70,  6, 2, '1934-12-01', '1935-10-11'), /* B3Y1 */ /* неточная дата начала */
    (59,  42,  6, 2, '1934-12-01', '1935-10-11'), /* E4N3 */ /* неточная дата начала */

    (59, 125, 24, 8, '1936-05-31', '1937-08-11'), /* A4N1 */ /* неточная дата конца */
    (59,  45, 12, 4, '1936-05-31', '1937-08-11'), /* D1A1 */ /* неточная дата конца */

    (59, 125, 12, 4, '1937-08-11', '1940-11-15'), /* A4N1 */ /* неточная дата начала */
    (59,  45, 15, 0, '1937-08-11', '1940-11-15'), /* D1A1 */ /* неточная дата начала */
    
    (59,  16, 16, 0, '1940-11-15', '1941-12-05'), /* A5M4 */
    (59,   7, 18, 0, '1940-11-15', '1941-12-05'), /* B5N1 */
    
    (59,  16, 12, 4, '1941-12-05', '1942-01-07'), /* A5M4 */
    (59,   7,  8, 4, '1941-12-05', '1942-01-07'), /* B5N1 */
    (59,   8,  2, 0, '1941-12-05', '1942-01-07'), /* B5N2 */
    
    (59,  16, 12, 0, '1942-01-07', '1942-04-18'), /* A5M4 */
    (59,   7,  8, 1, '1942-01-07', '1942-04-18'), /* B5N1 */
    (59,   8,  2, 0, '1942-01-07', '1942-04-18'), /* B5N2 */
    
    (59,   0, 12, 2, '1942-05-17', '1942-08-15'), /* A6M2 */
    (59,   7,  9, 2, '1942-05-17', '1942-08-15'), /* B5N1 */
    (59,   8,  9, 0, '1942-05-17', '1942-08-15'), /* B5N2 */
    
    (59,   0, 24, 0, '1942-08-15', '1942-08-24'), /* A6M2 */
    (59,   8,  9, 0, '1942-08-15', '1942-08-24'); /* B5N2 */

