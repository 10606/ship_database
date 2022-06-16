
/*
    6 - Исе      | Ise       | 1917-12-15   | 1945-07-28 | Куре
    7 - Хюга     | Hyuga     | 1918-04-30   | 1945-07-24 | Куре
*/


/* характеристики */
insert into general
    (ship_id, date_from, date_to, 
     displacement_standart, displacement_full, 
     length, width, draft,
     crew, speed_max, speed_cruise, range)
    values
    (6, '1917-12-15', '1934-09-25',     29980, 36500,   208.2,  28.7, 8.3,  1360, 23.6, 14, 15580),
    (6, '1937-03-23', '1943-02-23',     35800, 39657,   215.8,  31.7, 9.2,  1376, 25.3, 16, 15200),
    (6, '1943-10-08', '1945-07-28',     35350, 38676,   219.6,  31.7, 9.03, 1463, 25.3, 16, 12660),
    
    (7, '1918-04-30', '1937-01-01',     29980, 36500,   208.2,  28.7, 8.3,  1360, 23.7, 14, 15580),
    (7, '1937-01-01', '1943-01-01',     36000, 40169,   215.8,  31.7, 9.2,  1376, 25.3, 16, 15200),
    (7, '1943-01-01', '1945-07-24',     36000, 40169,   219.6,  31.7, 9.03, 1463, 25.3, 16, 12660);



/* модернизации */
insert into ship_event_list
    (class_id, ship_id, date_from, date_to, description)
    values
    (0, 6, '1921-01-01', '1921-12-31', 'увеличение угла возвышения орудий ГК'), /* неточные даты */
    (0, 6, '1927-01-01', '1927-02-28', 'установка платформы'), /* неточные даты */
    (0, 6, '1928-01-01', '1929-02-28', 'Куре'), /* неточные даты */
    (1, 6, '1929-03-31', '1929-04-30', 'Сасебо'), /* неточная дата окончания */
    (1, 6, '1929-06-23', '1929-06-30', 'Куре'), /* неточная дата окончания */
    (0, 6, '1930-05-01', '1931-02-28', 'Куре'), /* неточные даты */
    (1, 6, '1931-06-05', '1931-06-23', 'Куре'),
    (0, 6, '1931-11-20', '1932-02-10', 'Куре'),
    (0, 6, '1933-05-14', '1933-06-06', 'Куре, замена катапульты'),
    (0, 6, '1934-09-25', '1937-03-23', 'Куре, первая модернизация'),
    (1, 6, '1942-02-19', '1942-02-25', 'Куре'),
    (0, 6, '1942-05-25', '1942-05-25', 'Куре, установка радара'),
    (1, 6, '1942-11-21', '1942-11-29', 'Куре'),
    (0, 6, '1943-02-23', '1943-10-08', 'Куре, вторая модернизация'),
    (0, 6, '1944-05-24', '1944-05-24', 'Куре'),
    (0, 6, '1944-05-31', '1944-06-07', 'Куре, модернизация ПВО'),
    (0, 6, '1944-07-22', '1944-07-26', 'установка радаров'),
    (0, 6, '1944-09-28', '1944-10-10', 'установка НУРС'),
    (6, 6, '1945-02-25', '1945-07-26', 'Куре, нанесение камуфляжа'),

    (0, 7, '1922-01-01', '1922-03-31', 'увеличение угла возвышения орудий ГК'), /* неточные даты */
    (0, 7, '1933-01-01', '1933-05-31', ''), /* неточные даты */
    (0, 7, '1934-10-24', '1936-09-07', 'Куре, первая модернизация'), /* по другим данным в Сасебо */
    (1, 7, '1941-09-18', '1941-09-26', 'Куре'),
    (1, 7, '1941-10-26', '1941-11-19', 'Куре'),
    (0, 7, '1942-05-06', '1942-05-25', 'Куре'),
    (1, 7, '1942-10-26', '1942-11-01', 'Куре'),
    (0, 7, '1943-07-01', '1943-11-18', 'Сасебо'),
    (0, 7, '1944-05-24', '1944-05-24', 'Куре'),
    (0, 7, '1944-06-07', '1944-06-07', 'Куре, установка радаров'),
    (0, 7, '1944-09-01', '1944-09-30', 'установка НУРС');
 
    

/* 356мм орудия */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (6, 33, 6, '1917-12-15', '1921-01-01'),
    (6, 35, 6, '1921-01-01', '1934-09-25'),
    (6, 37, 6, '1937-03-23', '1943-02-23'),
    (6, 37, 4, '1943-10-08', '1945-07-28'),

    (7, 33, 6, '1918-04-30', '1922-01-01'),
    (7, 35, 6, '1922-03-31', '1934-10-24'),
    (7, 37, 6, '1936-09-07', '1943-07-01'),
    (7, 37, 4, '1943-11-18', '1945-07-24');
 
    

/* 140мм орудия */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (6, 16, 20, '1917-12-15', '1931-11-20'),
    (6, 16, 18, '1932-02-10', '1934-09-25'),
    (6, 64, 16, '1937-03-23', '1943-02-23'),
    
    (7, 16, 20, '1918-04-30', '1933-01-01'),
    (7, 16, 18, '1933-05-31', '1934-10-24'),
    (7, 64, 16, '1936-09-07', '1943-07-01');
    
    
    
/* ПВО */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (6, 55,  4, '1921-01-01', '1931-11-20'),
    (6, 12,  4, '1932-02-10', '1943-02-23'),
    (6, 48,  2, '1932-02-10', '1934-09-25'),
    (6, 44, 10, '1937-03-23', '1943-02-23'),
    (6, 12,  8, '1943-10-08', '1945-07-28'),
    (6, 45, 19, '1943-10-08', '1944-05-31'),
    (6, 45, 31, '1944-06-07', '1945-07-28'),
    (6, 43, 11, '1944-06-07', '1945-07-28'),
    (6, 65,  6, '1944-10-10', '1945-07-28'),

    (7, 55,  4, '1918-04-30', '1933-01-01'), /* неточное количество */ /* неточные даты */
    (7, 12,  4, '1933-05-31', '1943-07-01'),
    (7, 48,  2, '1933-05-31', '1934-10-24'),
    (7, 44, 10, '1936-09-07', '1943-07-01'),
    (7, 45,  3, '1942-05-25', '1943-07-01'),
    (7, 12,  8, '1943-11-18', '1945-07-24'),
    (7, 45, 22, '1943-11-18', '1944-05-24'),
    (7, 45, 30, '1944-05-24', '1945-07-24'),
    (7, 43, 11, '1944-05-24', '1945-07-24'),
    (7, 65,  6, '1944-09-30', '1945-07-24');
    

    
/* торпедные аппараты */
insert into ship_torpedo_tubes
    (ship_id, tube_id, amount, date_from, date_to)
    values
    (6, 23, 6, '1917-12-15', '1934-09-25'),
    (7, 23, 6, '1918-04-30', '1934-10-24');



/* радары */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (6,  0, 1, '1942-05-25', '1943-02-23'), /* тип 21 мод 1 */
    (6,  0, 1, '1943-10-08', '1945-07-28'), /* тип 21 мод 2 */
    (6,  1, 2, '1943-10-08', '1944-05-24'), /* тип 22 */
    /* с 1944-06-07 2* инфракрасных тип 2 */
    (6,  1, 4, '1944-05-24', '1945-07-28'), /* тип 22 */
    (6,  2, 2, '1944-07-26', '1945-07-28'), /* тип 13 */ /* по другим данным один был установлен 1943-10-08 */
    (6, 26, 1, '1944-07-26', '1945-07-28'), /* E27 детектор */

    (7,  0, 1, '1943-11-18', '1945-07-24'), /* тип 21 мод 2 */
    (7,  1, 2, '1943-11-18', '1944-06-07'), /* тип 22 */
    (7,  1, 4, '1944-06-07', '1945-07-24'), /* тип 22 */
    (7,  2, 2, '1944-06-07', '1945-07-24'), /* тип 13 */
    (7, 26, 1, '1944-06-07', '1945-07-24'); /* E27 детектор */



/* прожектора */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (6, 36, 6, '1917-12-15', '1934-09-25'),
    (6, 37, 2, '1917-12-15', '1934-09-25'),
    (6, 30, 6, '1937-03-23', '1943-02-23'),
    (6, 30, 4, '1943-10-08', '1945-07-28'),
    
    (7, 36, 6, '1918-04-30', '1934-10-24'),
    (7, 37, 2, '1918-04-30', '1934-10-24'),
    (7, 30, 6, '1936-09-07', '1943-07-01'),
    (7, 30, 4, '1943-11-18', '1945-07-24');

    

/* катапульты */
insert into ship_catapult
    (ship_id, catapult_id, amount, date_from, date_to)
    values
    (6,  17, 1, '1927-01-28', '1928-01-01'), /* не башне No 2 */
    (6,  17, 1, '1929-02-28', '1930-05-01'), /* на башне No 5 */
    (6,   5, 1, '1931-02-28', '1933-05-14'),
    (6,   8, 1, '1933-06-06', '1934-09-25'),
    (6,  10, 1, '1937-03-23', '1943-02-23'),
    (6,  11, 2, '1943-10-08', '1945-07-28'),

    (7,   8, 1, '1933-05-31', '1934-10-24'),
    (7,  10, 1, '1936-09-07', '1943-07-01'),
    (7,  11, 2, '1943-11-18', '1945-07-24');



/* авиагруппа */
insert into ship_aircraft
    (ship_id, aircraft_id, amount, date_from, date_to)
    values
    (6,  58,  2, '1927-02-28', '1928-01-01'), /* 1MF3 */
    (6,  72,  1, '1929-02-28', '1930-05-01'), /* E1Y2 */
    (6,  78,  1, '1931-02-28', '1933-05-14'), /* HD-26 */
    (6,  41,  3, '1933-06-06', '1934-09-25'), /* E4N2 */
    (6,  32,  3, '1938-03-01', '1943-02-23'), /* E8N1 */ /* с весны 1938 */
    (6,  19,  8, '1943-10-08', '1945-07-28'), /* D4Y1 KAI */
    (6, 141, 14, '1943-10-08', '1945-07-28'), /* E16A1 */

    (7,  41,  2, '1933-05-31', '1934-10-24'), /* E4N2 */
    (7,  32,  3, '1936-09-07', '1943-07-01'), /* E8N1 */
    (7,  19, 14, '1943-11-18', '1945-07-24'), /* D4Y1 KAI */
    (7, 141,  8, '1943-11-18', '1945-07-24'); /* E16A1 */
    

