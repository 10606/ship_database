
/*
    40 - Такао
    41 - Атаго
    42 - Мая  
    43 - Текай
*/


/* характеристики */
insert into general
    (ship_id, date_from, date_to, 
     displacement_standart, displacement_full, 
     length, width, draft,
     crew, speed_max, speed_cruise, range)
    values
    (40, '1932-05-31', '1938-05-01',    11450, 15137,   203.8, 18.99, 6.6,  761, 35.6,  14, 11400),
    (40, '1939-08-21',  null,           13400, 15870,   203.8, 20.73, 6.7,  987, 34.25, 14, 11400),
    
    (41, '1932-03-30', '1938-04-05',    11450, 15150,   203.8, 18.99, 6.6,  761, 35.2,  14, 11400),
    (41, '1939-03-20', '1944-10-23',    13100, 15640,   203.8, 20.73, 6.7,  924, 34.12, 14, 11400),
    
    (42, '1932-06-30', '1943-12-21',    11370, 15010,   203.8, 18.99, 6.5,  761, 35.7,  14, 11400),
    (42, '1944-04-09', '1944-10-23',    13250, 15810,   203.8, 20.73, 6.65, 996, 34.2,  14, 11400),
    
    (43, '1932-06-30', '1935-11-15',    11370, 15040,   203.8, 18.99, 6.5,  761, 35.4,  14, 11400),
    (43, '1937-08-07', '1944-10-25',    13250, 15810,   203.8, 20.73, 6.65, 924, 34.20, 14, 11400);
    
    

/* модернизации */
insert into ship_event_list
    (class_id, ship_id, date_from, date_to, description)
    values
    (0, 40, '1935-11-15', '1936-12-01', 'Йокосука'),
    (0, 40, '1938-05-01', '1939-08-21', 'Йокосука'),
    (1, 40, '1941-09-05', '1941-09-09', 'Йокосука'),
    (0, 40, '1942-03-18', '1942-04-26', 'Йокосука, модернизация ПВО'),
    (0, 40, '1943-07-26', '1943-08-02', 'Йокосука, модернизация ПВО'),
    (0, 40, '1943-11-15', '1944-01-18', 'Йокосука, модернизация ПВО и радаров'),
    (0, 40, '1944-06-26', '1944-07-08', 'Куре, модернизация ПВО и радаров'),
    
    (0, 41, '1938-04-05', '1939-03-20', 'Майдзуру'),
    (0, 41, '1939-03-20', '1939-10-30', 'Йокосука'),
    (0, 41, '1942-04-23', '1942-05-21', 'Йокосука, модернизация ПВО'),
    (0, 41, '1943-07-26', '1943-08-10', 'Йокосука, модернизация ПВО'),
    (0, 41, '1943-11-15', '1943-12-26', 'Йокосука, модернизация ПВО и радаров'),
    (0, 41, '1944-06-26', '1944-07-08', 'Куре, модернизация ПВО и радаров'),
    
    (0, 42, '1934-12-20', '1934-12-30', 'Йокосука'),
    (0, 42, '1936-07-09', '1936-09-20', 'Йокосука'),
    (0, 42, '1937-12-08', '1938-01-14', 'Йокосука, модернизация ПВО'),
    (0, 42, '1941-03-04', '1941-05-20', 'Йокосука'),
    (0, 42, '1942-03-19', '1942-03-28', 'Йокосука, модернизация ПВО'),
    (0, 42, '1942-08-06', '1942-08-24', 'Йокосука, модернизация ПВО'),
    (1, 42, '1943-01-05', '1943-01-16', 'Йокосука, докование'),
    (1, 42, '1943-04-03', '1943-04-15', 'Йокосука'),
    (0, 42, '1943-12-21', '1944-04-09', 'Йокосука'),
    (0, 42, '1944-06-25', '1944-07-14', 'Йокосука, модернизация ПВО'),
    
    (0, 43, '1935-11-15', '1937-08-07', 'Йокосука'),
    (0, 43, '1941-03-01', '1941-03-31', 'Йокосука'), /* неточные даты */
    (1, 43, '1941-09-15', '1941-09-22', 'Куре'),
    (1, 43, '1942-02-27', '1942-03-09', 'Салетар'),
    (0, 43, '1942-05-03', '1942-05-09', 'Йокосука, модернизация ПВО'),
    (1, 43, '1943-02-13', '1943-02-15', 'Трук'),
    (0, 43, '1943-08-16', '1943-09-11', 'Йокосука, модернизация ПВО'),
    (0, 43, '1944-01-14', '1944-01-21', 'Трук, модернизация ПВО с помощью Акаси'),
    (0, 43, '1944-06-26', '1944-07-08', 'Куре, модернизация ПВО и радаров');
    
    
    
/* орудия ГК */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (40, 31, 5, '1932-05-31',  null),
    (41, 31, 5, '1932-03-30', '1944-10-23'),
    (42, 32, 5, '1932-06-30', '1943-12-21'),
    (42, 32, 4, '1944-04-09', '1944-10-23'),
    (43, 31, 5, '1932-06-30', '1944-10-25');

 
    
/* ПВО */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (40,  9,  4, '1932-05-31', '1942-03-18'),
    (40, 49,  2, '1932-05-31', '1938-05-01'),
    (40, 47,  2, '1932-05-31', '1935-11-15'),
    (40, 52,  2, '1936-12-01', '1942-03-18'),
    (40, 44,  4, '1939-08-21', '1942-03-18'),
    (40, 12,  4, '1942-04-26',  null),
    (40, 44,  6, '1942-04-26',  null),
    (40, 45,  2, '1943-08-02', '1944-06-26'),
    (40, 43,  8, '1944-01-18', '1944-06-26'),
    (40, 45,  6, '1944-07-08',  null),
    (40, 43, 30, '1944-07-08',  null),
    
    (41,  9,  4, '1932-03-30', '1942-04-23'),
    (41, 49,  2, '1932-03-30', '1939-03-20'),
    (41, 47,  2, '1932-03-30', '1939-03-20'),
    (41, 44,  4, '1939-10-30', '1942-04-23'),
    (41, 52,  2, '1939-10-30', '1942-04-23'),
    (41, 12,  4, '1942-05-21', '1944-10-23'),
    (41, 44,  6, '1942-05-21', '1944-10-23'),
    (41, 45,  2, '1943-08-10', '1944-06-26'),
    (41, 43,  8, '1943-12-26', '1944-06-26'),
    (41, 45,  6, '1944-07-08', '1944-10-23'),
    (41, 43, 30, '1944-07-08', '1944-10-23'),
    
    (42,  9,  4, '1932-06-30', '1943-12-21'),
    (42, 49,  2, '1932-06-30', '1941-03-04'),
    (42, 47,  2, '1932-06-30', '1937-12-08'),
    (42, 53,  2, '1938-01-14', '1941-03-04'),
    (42, 44,  4, '1941-05-20', '1942-03-19'),
    (42, 44,  6, '1942-03-28', '1942-08-06'),
    (42, 44,  8, '1942-08-24', '1943-12-21'),
    (42, 12,  6, '1944-04-09', '1944-10-23'),
    (42, 45, 13, '1944-04-09', '1944-10-23'),
    (42, 43,  9, '1944-04-09', '1944-06-25'),
    (42, 43, 27, '1944-07-14', '1944-10-23'),
    (42, 51, 36, '1944-04-09', '1944-10-23'),
    
    (43,  9,  4, '1932-06-30', '1944-10-25'),
    (43, 49,  2, '1932-06-30', '1941-03-01'),
    (43, 47,  2, '1932-06-30', '1935-11-15'),
    (43, 52,  2, '1937-08-07', '1942-05-03'),
    (43, 44,  2, '1941-03-31', '1942-05-03'),
    (43, 44,  6, '1942-05-09', '1943-08-16'),
    (43, 44,  8, '1943-09-11', '1944-10-15'),
    (43, 43, 10, '1944-01-21', '1944-06-26'),
    (43, 43, 22, '1944-07-08', '1944-10-25');
    
 
    
/* торпедные аппараты */
insert into ship_torpedo_tubes
    (ship_id, tube_id, amount, date_from, date_to)
    values
    (40,  8, 4, '1932-05-31', '1938-05-01'),
    (40, 12, 4, '1939-08-21',  null),
    
    (41,  8, 4, '1932-03-30', '1939-03-20'),
    (41, 12, 4, '1939-10-30', '1944-10-23'),
    
    (42,  8, 4, '1932-06-30', '1943-12-21'),
    (42, 12, 4, '1944-04-09', '1944-10-23'), /* 16 torpedo type 93 */

    (43,  8, 4, '1932-06-30', '1944-10-25');
    
    
    
/* радары */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (40, 0, 1, '1943-08-02',  null),        /* тип 21 мод 2 */
    (40, 1, 1, '1944-01-18',  null),        /* тип 22 мод 4 */
    (40, 2, 1, '1944-07-08',  null),        /* тип 13 */
    
    (41, 0, 1, '1943-08-10', '1944-10-23'), /* тип 21 мод 2 */
    (41, 1, 1, '1943-12-26', '1944-10-23'), /* тип 22 мод 4 */
    (41, 2, 1, '1944-07-08', '1944-10-23'), /* тип 13 */
    
    (42, 0, 1, '1942-08-24', '1944-10-23'), /* тип 21 */
    (42, 1, 1, '1944-04-09', '1944-10-23'), /* тип 22 мод 4 */
    (42, 2, 1, '1944-07-14', '1944-10-23'), /* тип 13 */
    
    (43, 0, 1, '1943-09-11', '1944-10-25'), /* тип 21 */
    (43, 1, 1, '1944-07-08', '1944-10-25'), /* тип 22 мод 4S */
    (43, 2, 1, '1944-07-08', '1944-10-25'); /* тип 13 */

 
    
/* прожектора */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (40, 29, 4, '1932-05-31',  null),
    (40, 37, 2, '1932-05-31',  null),
    
    (41, 29, 4, '1932-03-30', '1944-10-23'),
    (41, 37, 2, '1932-03-30', '1944-10-23'),
    
    (42, 29, 4, '1932-06-30', '1936-07-09'),
    (42, 37, 2, '1932-06-30', '1944-10-23'),
    (42, 30, 4, '1936-09-20', '1943-12-21'),
    (42, 30, 2, '1944-04-09', '1944-10-23'),
    
    (43, 29, 4, '1932-06-30', '1944-10-25'),
    (43, 37, 2, '1932-06-30', '1944-10-25');
    
    
    
/* бомбосбрасыватели */
insert into ship_throwers
    (ship_id, throwers_id, amount, date_from, date_to)
    values
    (42, 2, 1, '1944-04-04', '1944-10-23');
    
    
    
/* авиагруппа */
    /* неточные данные (особенно про Текай) */
insert into ship_aircraft
    (ship_id, aircraft_id, amount, date_from, date_to)
    values
    (40, 41, 2, '1932-05-31', '1938-05-01'), /* E4N2 */
    (40, 33, 2, '1939-08-21', '1942-03-18'), /* E8N2 */
    (40, 31, 1, '1939-08-21', '1942-03-18'), /* E7K2 */
    (40, 37, 2, '1942-04-26',  null),        /* F1M  */
    (40, 11, 1, '1942-04-26',  null),        /* E13A */
    
    (41, 41, 2, '1932-03-30', '1939-03-20'), /* E4N2 */
    (41, 33, 2, '1939-10-30', '1942-04-23'), /* E8N2 */
    (41, 31, 1, '1939-10-30', '1942-04-23'), /* E7K2 */
    (41, 37, 2, '1942-05-21', '1944-10-23'), /* F1M  */
    (41, 11, 1, '1942-05-21', '1944-10-23'), /* E13A */

    (42, 41, 2, '1932-06-20', '1937-12-08'), /* E4N2 */
    (42, 33, 2, '1938-01-14', '1941-03-04'), /* E8N2 */
    (42, 30, 1, '1938-01-14', '1941-03-04'), /* E7K1 */
    (42, 11, 2, '1941-05-20', '1943-01-05'), /* E13A */
    (42, 33, 2, '1943-01-16', '1943-04-03'), /* E8N2 */ /* потеряны во время сражений за Алеутские острова */
    (42, 11, 1, '1943-01-16', '1943-04-03'), /* E13A */
    (42, 11, 2, '1943-04-15', '1944-10-23'), /* E13A */
    
    (43, 41, 2, '1932-06-30', '1941-03-01'), /* E4N2 */
    (43, 37, 2, '1941-03-31', '1944-10-25'), /* F1M  */
    (43, 11, 1, '1941-03-31', '1944-10-25'); /* E13A */
    
    
/* катапульты */
insert into ship_catapult
    (ship_id, catapult_id, amount, date_from, date_to)
    values
    (40,  8, 2, '1932-05-31', '1938-05-01'),
    (40, 10, 2, '1939-08-21',  null),
    
    (41,  8, 2, '1932-03-30', '1939-03-20'),
    (41, 10, 2, '1939-10-30', '1944-10-23'),
    
    (42,  8, 2, '1932-06-30', '1941-03-05'),
    (42, 10, 2, '1941-05-20', '1944-10-23'),
    
    (43,  8, 2, '1932-06-30', '1941-03-01'),
    (43, 10, 2, '1941-03-31', '1944-10-25');
    
    
    