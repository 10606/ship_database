
/*
    8 - Нагато
    9 - Муцу
*/


/* характеристики */
insert into general
    (ship_id, date_from, date_to, 
     displacement_standart, displacement_full, 
     length, width, draft,
     crew, speed_max, speed_cruise, range)
    values
    (8, '1920-11-25', '1934-04-01',     32720, 38500,   215.8,   28.95, 9.14,   1333, 26.5,  16,  8850),
    (8, '1936-01-31', '1944-06-01',     39130, 42850,   224.94,  34.6,  9.5,    1368, 24.98, 16, 14000),
    (8, '1944-10-01',  null,            39130, 43581,   224.94,  34.6,  9.5,    1368, 24.98, 16, 14000),
    
    (9, '1921-11-22', '1934-09-05',     32720, 38500,   215.8,   28.95, 9.14,   1333, 26.2,  16,  8850),
    (9, '1936-09-30', '1943-07-08',     39130, 42850,   224.94,  34.6,  9.5,    1368, 25.0,  16, 14000);



/* модернизации */
insert into ship_event_list
    (class_id, ship_id, date_from, date_to, description)
    values
    (1, 8, '1924-01-01', '1924-07-31', 'Йокосука, улучшение мореходных качеств, модернизация радиовязи с 5кВт до 25кВт'), /* неточные даты */
    (0, 8, '1925-08-01', '1925-08-22', 'Босо, установка платформы'), /* неточные даты */
    (0, 8, '1932-01-01', '1932-12-31', ''), /* неточные даты */
    (0, 8, '1933-06-01', '1933-07-31', 'установка катупульты'), /* неточные даты */
    (0, 8, '1934-04-01', '1936-01-31', 'Куре, первая модернизация'),
    (0, 8, '1937-09-01', '1937-11-30', 'замена катупульты'), /* неточные даты */
    (0, 8, '1939-01-01', '1939-08-31', 'модернизация ПВО'), /* неточные даты */
    (1, 8, '1941-03-01', '1941-05-31', 'Йокосука'), /* неточные даты */
    (1, 8, '1942-03-15', '1942-04-09', 'Куре, замена анемометров тип 91 на тип 91 мод 2'),
    (1, 8, '1942-07-18', '1942-07-22', 'Куре'),
    (1, 8, '1943-01-25', '1943-02-02', 'Куре'),
    (0, 8, '1943-05-31', '1943-06-06', 'Куре'),
    (1, 8, '1944-04-04', '1944-04-13', 'Салетар'),
    (0, 8, '1944-06-27', '1944-07-08', 'Куре'),
    (0, 8, '1944-11-25', '1944-12-20', 'Йокосука'),
    (6, 8, '1945-06-01',  null,        'Йокосука'),
    
    (1, 9, '1922-05-20', '1922-05-30', 'Сасебо, установка дымового отражателя'),
    (1, 9, '1923-11-30', '1932-12-30', 'Сасебо'),
    (1, 9, '1924-05-01', '1924-06-30', 'Сасебо, установка станция наблюдения за целями, перестройка КП ГК, модернизация директора ГК, замена стволов ГК'), /* неточные даты */
    (1, 9, '1924-12-01', '1924-12-31', 'Сасебо'), /* неточные даты */
    (0, 9, '1927-01-20', '1927-05-27', 'Сасебо'),
    (1, 9, '1928-10-01', '1929-02-28', 'Сасебо, установка паравана и гидрофона'), /* неточные даты */
    (1, 9, '1930-12-01', '1931-04-30', 'Сасебо, модернизация директора ГК и подъемников боеприпасов'), /* неточные даты */
    (0, 9, '1932-02-27', '1933-01-30', 'Сасебо'),
    (1, 9, '1933-11-01', '1933-12-31', 'Сасебо, установка 2 директоров ПВО тип 91'),
    (0, 9, '1934-09-05', '1936-09-30', 'Йокосука, первая модернизация'),
    (6, 9, '1937-08-15', '1937-08-15', 'Сасебо'),
    (0, 9, '1938-12-15', '1939-01-31', 'модернизация ПВО'), /* неточная дата окончания */
    (1, 9, '1941-09-03', '1941-09-13', 'Йокосука, установка катушки размагничивания'),
    (1, 9, '1941-12-01', '1941-12-03', 'Куре'),
    (1, 9, '1942-07-22', '1942-07-29', 'Куре'),
    (0, 9, '1943-01-29', '1943-02-06', 'Йокосука'),
    (1, 9, '1943-05-27', '1943-05-31', 'Куре');
 
    

/* 410мм орудия */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (8, 38, 4, '1920-11-25', '1934-04-01'),
    (8, 39, 4, '1936-01-31',  null),

    (9, 38, 4, '1921-11-22', '1934-09-05'),
    (9, 39, 4, '1936-09-30', '1943-07-08');
 
    

/* 140мм орудия */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (8, 16, 14, '1920-11-25', '1934-04-01'),
    (8, 15,  6, '1920-11-25', '1934-04-01'),
    (8, 17, 18, '1936-01-31', '1944-06-27'),
    (8, 17, 16, '1944-07-08', '1944-11-25'),
    (8, 17, 14, '1944-12-20', '1945-06-01'),

    (9, 16, 14, '1921-11-22', '1934-09-05'),
    (9, 15,  6, '1921-11-22', '1934-09-05'),
    (9, 17, 18, '1936-09-30', '1943-07-08');
    
    
    
/* ПВО */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (8, 55,  4, '1920-11-25', '1925-08-01'), /* неточные даты */
    (8, 55,  7, '1925-08-22', '1932-01-01'), /* неточные даты */
    (8, 58,  4, '1920-11-25', '1932-01-01'),
    (8, 52,  4, '1932-12-31', '1939-01-01'), /* неточные даты */
    (8, 12,  4, '1932-12-31', '1945-07-18'),
    (8, 48,  2, '1932-12-31', '1939-01-01'),
    (8, 44, 10, '1939-08-31', '1943-05-31'),
    (8, 44, 11, '1943-06-06', '1944-06-27'),
    
    (8, 45, 16, '1944-07-08', '1944-11-25'),
    (8, 44, 21, '1944-07-08', '1945-07-18'), /* по другим данным 68 стволов */
    (8, 43, 28, '1944-07-08', '1945-07-18'),
    (8, 45, 25, '1944-12-20', '1945-07-18'), /* по другим данным 98 стволов */

    
    (9, 55,  4, '1921-11-22', '1926-01-01'), /* неточные даты */
    (9, 55,  7, '1926-01-01', '1932-02-27'),
    (9, 58,  4, '1921-11-22', '1932-02-27'),
    (9, 52,  4, '1932-02-27', '1939-01-31'),
    (9, 12,  4, '1933-01-30', '1943-07-08'),
    (9, 48,  2, '1933-01-30', '1938-12-15'),
    (9, 44, 10, '1939-01-31', '1943-07-08');



/* торпедные аппараты */
insert into ship_torpedo_tubes
    (ship_id, tube_id, amount, date_from, date_to)
    values
    (8, 25, 4, '1920-11-25', '1934-04-01'),
    (8,  1, 2, '1920-11-25', '1925-08-01'), /* неточные даты */

    (9, 25, 4, '1921-11-22', '1934-09-05'),
    (9,  1, 2, '1921-11-22', '1926-01-01'); /* неточные даты */



/* радары */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (8,  0, 1, '1943-06-06',  null), /* тип 21 мод 2 */ /* по другим данным с ноября 43 */
    (8,  1, 2, '1944-07-08',  null), /* тип 22 мод 4 */ /* по другим данным одна была установлена в ноябре 43 */
    (8,  2, 2, '1944-07-08',  null); /* тип 13 */
    /* с 1944-07-08 инфракрасная тип 2 свой-чужой */



/* прожектора */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (8, 36, 10, '1920-11-25', '1933-06-01'), /* неточные даты */
    (8, 36,  2, '1933-07-31',  null), /* неточные даты */
    (8, 30,  4, '1933-07-31',  null), /* неточные даты */
    
    (9, 36,  8, '1921-11-22', '1932-02-27'),
    (9, 36,  2, '1933-01-30', '1943-07-08'),
    (9, 30,  4, '1933-01-30', '1943-07-08');

    

/* катапульты */
insert into ship_catapult
    (ship_id, catapult_id, amount, date_from, date_to)
    values
    (8,  3, 1, '1925-08-01', '1933-06-01'), /* неточные даты */ /* на башне No 2 */
    (8,  8, 1, '1933-07-31', '1937-09-01'), /* неточные даты */
    (8, 10, 1, '1937-11-30', '1945-06-01'), /* неточная дата начала */ /* по другим данным с 1940 */

    (9,  3, 1, '1927-05-28', '1932-02-27'),
    (9,  8, 1, '1933-01-30', '1934-09-05'),
    (9, 10, 1, '1936-09-30', '1943-07-08');



/* авиагруппа */
insert into ship_aircraft
    (ship_id, aircraft_id, amount, date_from, date_to)
    values
    (8, 73, 1, '1925-08-22', '1926-01-01'), /* Ro-go */ /* неточные даты */
    (8, 78, 1, '1926-01-01', '1926-06-01'), /* HD-26 */ /* неточные даты */
    (8, 66, 1, '1926-06-01', '1926-07-01'), /* W.33 */ /* неточные даты */
    (8, 72, 1, '1926-07-01', '1933-06-01'), /* E1Y2 */
    (8, 41, 3, '1933-07-31', '1938-12-01'), /* E4N2 */
    (8, 32, 3, '1938-12-01', '1943-02-11'), /* E8N1 */
    (8, 37, 2, '1943-02-11', '1945-06-01'), /* F1M2 */
    
    (9, 72, 1, '1927-05-28', '1932-02-27'), /* E1Y2 */
    (9, 41, 3, '1933-01-30', '1934-09-05'), /* E4N2 */
    (9, 41, 3, '1936-09-30', '1937-08-15'), /* E4N2 */
    (9, 32, 3, '1937-08-15', '1938-12-15'), /* E8N1 */
    /*(9, 31, 1, '1939-01-31', '1941-09-03'), */ /* E7K2 */
    (9, 33, 3, '1939-01-31', '1941-09-03'), /* E8N2 */
    (9, 33, 2, '1941-09-13', '1943-01-29'), /* E8N2 */
    (9, 37, 2, '1943-02-06', '1943-07-08'); /* F1M2 */
    
    
    
