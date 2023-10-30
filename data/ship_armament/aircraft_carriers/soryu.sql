    
/*
    60 - Сорю
    61 - Хирю
*/
    
    
/* характеристики */
insert into general
    (ship_id, date_from, date_to, 
     displacement_standart, displacement_full, 
     length, width, draft,
     crew, speed_max, speed_cruise, range)
    values
    (60, '1937-12-29', '1942-06-04',    16100, 19000,   222.0, 21.3, 7.6,   1100, 34.9, 18, 12400),
    (61, '1939-07-05', '1942-06-05',    17756, 20250,   222.9, 21.3, 7.8,   1120, 34.3, 18, 16600);

    
    
/* модернизации */
insert into ship_event_list
    (class_id, ship_id, date_from, date_to, description)
    values
    (0, 60, '1941-09-08', '1941-10-08', 'Йокосука'), /* по другим данным в Сасебо */
    (1, 60, '1942-05-15', '1942-05-22', 'Сасебо'), /* по другим данным в Йокосуке */
    (0, 61, '1941-08-07', '1941-09-10', 'Сасебо'), /* по другим данным в Куре */
    (1, 61, '1942-05-15', '1942-05-22', 'Сасебо'); /* по другим данным в Йокосуке */
    
    
    
/* ПВО */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (60, 13,  6, '1937-12-29', '1942-06-04'),
    (60, 44, 14, '1937-12-29', '1942-06-04'),
    
    (61, 13,  6, '1939-07-05', '1942-06-05'),
    (61, 44,  5, '1939-07-05', '1942-06-05'), /* по другим данным 9*3 + 3*2 */
    (61, 45,  7, '1939-07-05', '1942-06-05');
    
    
    
/*
    Хирю:
        11 плавсредств:
            2  9м гребных спасательных катера
            3 12м моторных катера
            2 13м грузовых катеров специального типа (десантных)
            1  8м моторный баркас
            2 12м моторных баркасов 
            1  6м рабочая шлюпка
        6 глубинных бомб тип 91 мод 1
        2*2 паравана модель 1 мод 1
*/
    
 
    
/* прожектора */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (60, 30, 4, '1937-12-29', '1942-06-04'), /* тип 92 модель 3 */
    (60, 33, 2, '1937-12-29', '1942-06-04'),
    
    (61, 30, 4, '1939-07-05', '1942-06-05'), /* тип 92 модель 3 */
    (61, 33, 2, '1939-07-05', '1942-06-05');
    
    

/* авиагруппа */
/* 
    Сорю:
        3 подъемника:
            11.5м * 16м 5000кг
            11.5м * 12м 5000кг
            11.8м * 10м 5000кг
        Кран: 4000кг
    Хирю:
        3 подъемника:
            13.0м * 16м 5000кг
            13.0м * 12м 5000кг
            11.8м * 13м 5000кг
        Кран: 4000кг
    9 аэрофишинеров тип 4
    4 аварийных барьера
*/
insert into ship_aircraft
    (ship_id, aircraft_id, amount, amount_reserve, date_from, date_to)
    values
    (60,  13, 18, 0, '1937-12-29', '1941-09-08'), /* A5M2 */
    (60, 119, 12, 0, '1937-12-29', '1938-09-30'), /* B4Y1 */ /* до осени 1938 */
    (60, 119,  3, 0, '1938-09-30', '1938-12-31'), /* B4Y1 */ /* с осени 1938 до конеца 1938 */
    (60,   7,  9, 0, '1938-09-30', '1938-12-31'), /* B5N1 */ /* с осени 1938 до конеца 1938 */
    (60,   7, 12, 0, '1938-12-31', '1941-09-08'), /* B5N1 */ /* с конца 1938 */
    (60,  46, 27, 0, '1937-12-29', '1941-09-08'), /* D1A2 */
    
    (60,   0, 18, 3, '1941-10-08', '1941-12-07'), /* A6M2 */
    (60,   8, 18, 3, '1941-10-08', '1942-05-15'), /* B5N2 */
    (60,   9, 18, 3, '1941-10-08', '1941-12-07'), /* D3A1 */
    (60,   0, 15, 3, '1941-12-07', '1942-05-15'), /* A6M2 */
    (60,   9, 16, 3, '1941-12-07', '1942-05-15'), /* D3A1 */
    
    (60,   0, 18, 3, '1942-05-22', '1942-06-04'), /* A6M2 */
    (60,   8, 18, 0, '1942-05-22', '1942-06-04'), /* B5N2 */
    (60,   9, 16, 0, '1942-05-22', '1942-06-04'), /* D3A1 */
    (60,  17,  2, 0, '1942-05-22', '1942-06-04'), /* D4Y1-C */
    
    
    (61,  13, 12, 4, '1939-07-05', '1941-08-07'), /* A5M2 */
    (61,   7, 18, 3, '1939-07-05', '1941-08-07'), /* B5N1 */
    (61,  46, 27, 9, '1939-07-05', '1941-08-07'), /* D1A2 */
    
    (61,   0, 18, 3, '1941-09-10', '1942-05-15'), /* A6M2 */
    (61,   8, 18, 3, '1941-09-10', '1942-05-15'), /* B5N2 */
    (61,   9, 18, 3, '1941-09-10', '1942-05-15'), /* D3A1 */
    
    (61,   0, 18, 3, '1942-05-22', '1942-06-05'), /* A6M2 */
    (61,   8, 18, 0, '1942-05-22', '1942-06-05'), /* B5N2 */
    (61,   9, 18, 0, '1942-05-22', '1942-06-05'), /* D3A1 */
    (61,  17,  2, 0, '1942-05-22', '1942-06-05'); /* D4Y1-C */
    
/*
принадлежность самолетов к авиагруппе авианосца
с 11.1940 года код стал буквенно-цифровым
    буква - дивизия авианосцев (ДАВ)
    римская цифра — номер корабля в дивизии
    самолёты Сорю как флагмана 2-й ДАВ -> QI. 
    
c 04.1941 года у всех ДАВ кодовые буквы были приведены в соответствие с их порядковым номером
    для обозначения авиагруппы конкретного корабля в дивизии 
        вокруг хиномару на самолётах стали рисовать также один или два цветных кольца 
        (у 2-й ДАВ они были светло-синими)
    Сорю получил код BI, после переноса флага Ямагути на Хирю он был изменён на BII
*/
    
    
