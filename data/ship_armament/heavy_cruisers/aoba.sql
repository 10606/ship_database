    
/*
    44 - Аоба    
    45 - Кинугаса
*/
    
    
/* характеристики */
insert into general
    (ship_id, date_from, date_to, 
     displacement_standart, displacement_full, 
     length, width, draft,
     crew, speed_max, speed_cruise, range)
    values
    (44, '1927-09-20', '1938-11-20',     8520, 10980,   185.9, 16.5, 5.71,  643, 34.44, 14, 10900),
    (44, '1940-10-30', '1943-03-03',    10820, 11660,   185.9, 16.5, 6.05,  670, 33.43, 14, 10900),
    (44, '1943-03-03', '1945-07-28',    10820, 11660,   185.9, 16.5, 6.05,  670, 25,    14, 10900),
    
    (45, '1927-09-30', '1938-10-15',     8630, 10923,   185.9, 16.5, 5.72,  643, 34.5,  14, 10900),
    (45, '1940-10-30', '1942-11-14',    10820, 11660,   185.9, 16.5, 6.05,  670, 33.15, 14, 10900);
    
 
    
/* модернизации */
insert into ship_event_list
    (class_id, ship_id, date_from, date_to, description)
    values
    (0, 44, '1928-12-01', '1928-12-31', 'Йокосука, установка катапульты'), /* неточные даты */
    (0, 44, '1930-03-01', '1930-04-01', 'Йокосука'), /* неточные даты, по другим данным в декабре */
    (0, 44, '1932-10-01', '1933-02-01', 'Сасебо, модернизация ПВО'), /* неточные даты */
    (0, 44, '1936-12-01', '1936-12-31', 'Куре'), /* неточные даты */
    (0, 44, '1938-11-20', '1940-10-30', 'Сасебо, первая модернизация'),
    (1, 44, '1941-03-01', '1941-03-31', 'Куре'), /* неточные даты */
    (1, 44, '1942-02-10', '1942-03-01', 'Трук'),
    (1, 44, '1942-05-25', '1942-05-29', 'Куре'),
    (5, 44, '1942-10-11', '1942-10-11', 'у мыса Эсперанс'),
        /* Аоба теряет башни 203мм No2 No3, носовые 120мм */
    (1, 44, '1942-10-12', '1942-10-13', 'Шортленд, после боя у мыса Эсперанс'),
    (0, 44, '1942-10-24', '1943-02-15', 'Куре'),
    /* 03.03.1943 попадание бомбы */
    (1, 44, '1943-04-25', '1943-07-25', 'Трук, ремонт после попадания бомбы'),
    (0, 44, '1943-08-01', '1943-11-24', 'Куре'),
    (0, 44, '1944-07-02', '1944-07-15', 'Салетар (Сингапур), модернизация ПВО'),
    /* 13.10.44 атакован SS-243 Bream */
    (1, 44, '1944-10-24', '1944-11-05', 'Манила, ремонт после попадания торпеды'),
    (1, 44, '1944-11-11', '1944-12-09', 'Такао'),
    (0, 44, '1944-12-12', '1945-02-15', 'Куре, выведен в резерв как батарея ПВО'),
    
    (0, 45, '1928-05-01', '1928-05-31', 'Куре, установка катапульты'), /* неточные даты, по другим данным в марте */
    (0, 45, '1930-03-01', '1930-04-30', 'модернизация ПВО'), /* неточные даты, по другим данным в мае 1928 */
    (0, 45, '1930-12-01', '1931-03-31', 'Сасебо, замена катапульты'), /* неточные даты, по другим данным в ноябре 1930 */
    (0, 45, '1932-10-01', '1933-02-28', 'Сасебо'), /* неточные даты, по драгим данным с 01.12.1930 по 01.12.1932 */
    (1, 45, '1936-12-01', '1937-07-31', 'Куре'), /* неточные даты */
    (0, 45, '1938-10-15', '1940-10-30', 'Сасебо, первая модернизация'),
    (1, 45, '1942-02-10', '1942-02-20', 'Трук'), /* неточные даты */
    (1, 45, '1942-06-10', '1942-06-15', 'Куре'),
    (5, 45, '1942-10-11', '1942-10-11', 'у мыса Эсперанс');
    
    

/* орудия ГК */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (44, 27, 3, '1927-09-20', '1939-01-01'),
    (44, 28, 3, '1939-01-01', '1942-10-11'),
    (44, 28, 2, '1942-10-11', '1942-10-24'), /* еще 1 башня повреждена */
    (44, 28, 2, '1943-02-15', '1943-08-01'),
    (44, 28, 3, '1943-11-24', '1945-07-28'),

    (45, 27, 3, '1927-09-30', '1938-10-15'),
    (45, 28, 3, '1940-10-30', '1942-11-14');
    
    
    
/* ПВО */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (44, 59,  4, '1927-09-20', '1930-03-01'),
    (44,  9,  4, '1930-04-01', '1942-10-11'),
    (44,  9,  4, '1942-10-11', '1942-10-24'), /* 2 повреждены */
    (44,  9,  4, '1943-02-15', '1945-07-28'),
    (44, 58,  2, '1927-09-20', '1932-10-01'),
    (44, 53,  2, '1933-02-01', '1938-11-20'),
    (44, 52,  2, '1940-10-30', '1942-10-24'),
    (44, 44,  4, '1940-10-30', '1943-08-01'),
    (44, 45,  2, '1943-02-15', '1943-08-01'),
    (44, 45,  1, '1943-11-24', '1944-07-02'),
    (44, 44,  6, '1943-11-24', '1944-12-12'),
    (44, 45,  5, '1944-07-15', '1945-07-28'),
    (44, 43, 15, '1944-07-15', '1945-07-28'),
    (44, 44, 10, '1945-02-15', '1945-07-28'),
    
    (45, 59,  4, '1927-09-30', '1930-03-01'),
    (45,  9,  4, '1930-04-30', '1942-11-14'),
    (45, 58,  2, '1927-09-30', '1932-10-01'),
    (45, 53,  2, '1933-02-28', '1938-10-15'),
    (45, 52,  2, '1940-10-30', '1942-11-14');
    
    
    
/* торпедные аппараты */
insert into ship_torpedo_tubes
    (ship_id, tube_id, amount, date_from, date_to)
    values
    (44, 22, 6, '1927-09-20', '1938-11-20'),
    (44, 12, 2, '1940-10-30', '1945-07-28'),
    
    (45, 22, 6, '1927-09-30', '1938-10-15'),
    (45, 12, 2, '1940-10-30', '1942-11-14');
    
 
    
/* радары */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (44, 0, 1, '1943-11-24', '1945-07-28'), /* тип 21 мод 2 */
    (44, 1, 2, '1944-07-15', '1945-07-28'); /* тип 22 мод 4 */
    
 
    
/* прожектора */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (44, 36, 3, '1927-09-20', '1938-11-20'),
    (44, 38, 2, '1927-09-20', '1938-11-20'),
    (44, 30, 3, '1940-10-30', '1943-08-01'),
    (44, 30, 2, '1943-11-24', '1945-07-28'),
    (44, 32, 2, '1940-10-30', '1945-07-28'),
    
    (45, 36, 3, '1927-09-30', '1938-10-15'),
    (45, 38, 2, '1927-09-30', '1938-10-15'),
    (45, 30, 3, '1940-10-30', '1942-11-13'),
    (45, 32, 2, '1940-10-30', '1942-11-13');
    
    
    
/* катапульты */
insert into ship_catapult
    (ship_id, catapult_id, amount, date_from, date_to)
    values
    (44,  5, 1, '1928-12-31', '1930-03-01'),
    (44,  6, 1, '1930-04-01', '1938-11-20'),
    (44, 10, 1, '1940-10-30', '1945-07-28'),
    
    (45,  5, 1, '1928-05-31', '1930-12-01'),
    (45,  6, 1, '1931-03-31', '1938-10-15'),
    (45, 10, 1, '1940-10-30', '1942-11-14');
    
    
    
/* авиагруппа */
insert into ship_aircraft
    (ship_id, aircraft_id, amount, date_from, date_to)
    values
    (44, 67, 1, '1929-03-01', '1932-10-01'), /* E2N1 */
    (44, 41, 1, '1933-02-01', '1938-11-20'), /* E4N2 */
    (44, 31, 2, '1940-10-30', '1942-08-01'), /* E7K2 */
    (44, 11, 2, '1942-08-01', '1942-10-11'), /* E13A */
    
    (45, 67, 1, '1928-03-31', '1932-10-01'), /* E2N1 */
    (45, 41, 1, '1933-02-28', '1938-10-15'), /* E4N2 */
    (45, 31, 2, '1940-10-30', '1942-08-01'), /* E7K2 */
    (45, 11, 2, '1942-08-01', '1942-11-14'); /* E13A */

    
