    
/*
    56 - Хосе
*/
    
    
/* характеристики */
insert into general
    (ship_id, date_from, date_to, 
     displacement_standart, displacement_full, 
     length, width, draft,
     crew, speed_max, speed_cruise, range)
    values
    (56, '1922-12-27', '1944-06-19',    7470, 9494,   168.0, 18.0, 6.2,  550, 25.2, 15, 16000);

    
    
/* модернизации */
insert into ship_event_list
    (class_id, ship_id, date_from, date_to, description)
    values
    (0, 56, '1924-06-06', '1924-08-20', 'Йокосука'),
    (0, 56, '1925-03-10', '1925-07-02', 'Йокосука'),
    (0, 56, '1929-03-04', '1929-03-27', 'установка прожекторов и подьемников бомб'),
    (1, 56, '1929-11-06', '1930-02-04', 'увеличение мощности переднего самолетоподьемника с 55 до 100л.с.'),
    (1, 56, '1930-11-11', '1931-03-07', 'установка аэрофишинеров Каябы'),
    (0, 56, '1932-06-01', '1932-11-30', ''), /* неточные даты */
    (0, 56, '1932-12-12', '1933-01-27', 'установка светотехнического оборудования'),
    (0, 56, '1933-05-15', '1933-06-09', 'замена аэрофишинеров на Куре мод 1, увеличена мощность заднего самолето подъемника'),
    (0, 56, '1934-03-13', '1934-03-13', 'демонтаж аэрофишинеров британского типа'), /* неточная дата окончания */
    (0, 56, '1934-07-15', '1934-11-22', 'работы по повышению остойчивости'),
    (0, 56, '1935-01-10', '1935-01-28', 'установка аэрофишинеров типа Куре мод 4 и Фье'),
    (0, 56, '1935-11-22', '1936-03-31', 'Йокосука'),
    (0, 56, '1938-01-01', '1939-08-31', 'Йокосука'), /* неточные даты */
    (0, 56, '1941-02-01', '1941-07-31', 'Сасебо'), /* неточные даты */
    (1, 56, '1943-09-15', '1943-09-23', 'Куре'),
    (0, 56, '1944-03-27', '1944-04-26', 'модернизация для возможности взлета и посадки новых самолетов (B6N, D4Y), установлены 6 аэрофишинеров Куре тип 3 мод 10/11'), 
        /* по другим данным с 17 по 24 июня */
    (6, 56, '1945-07-05', '1945-07-26', 'Нисиномисима'),
    (6, 56, '1945-07-26',  null,        'Модзи');
    
    
    
/* орудия ГК */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (56, 18,  4, '1922-12-27', '1944-03-27');
    
    
    
/* ПВО */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (56, 55,  2, '1922-12-27', '1935-11-22'),
    (56, 62,  2, '1932-11-30', '1935-11-22'),
    (56, 52,  6, '1936-03-27', '1944-03-27'),
    (56, 43, 20, '1944-04-26',  null);

    
    
/* авиагруппа */
/* 
    2 подъемника:
        10.35м * 7.68м
        13.71м * 6.34м
    
    с конца августа 1939:
        12.8м * 8.5м
        13.7м * 7.0м
        
    1 кран до 22.11.1935
*/
insert into ship_aircraft
    (ship_id, aircraft_id, amount, date_from, date_to)
    values
    (56,  58,  9, '1923-03-31', '1928-12-31'), /* 1MF3 */ /* неточные даты */
    (56, 115,  6, '1923-03-31', '1932-02-01'), /* B1M2 */
    
    (56,  61,  9, '1928-12-31', '1932-06-01'), /* A1N1 */
    (56, 115,  3, '1932-02-01', '1932-06-01'), /* B1M2 */
    (56, 118,  3, '1932-02-01', '1932-06-01'), /* C1M2 */
    
    (56, 120,  9, '1932-11-30', '1938-01-01'), /* A2N1 */
    (56, 123,  6, '1932-11-30', '1938-01-01'), /* B2M1 */
    
    (56, 125,  9, '1938-08-31', '1941-02-01'), /* A4N1 */ /* неточные даты */ /* неточное количество */
    (56,  70,  6, '1938-08-31', '1941-02-01'), /* B3Y1 */ /* неточные даты */ /* неточное количество */
    
    (56,  13, 11, '1941-07-31', '1944-03-27'), /* A5M2 */
    (56, 119,  8, '1941-07-31', '1944-03-27'); /* B4Y1 */

