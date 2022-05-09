    
/*
    46 - Меко    1929-07-31   |           
    47 - Нати    1928-11-26   | 1944-11-05
    48 - Асигара 1929-08-20   | 1945-06-08
    49 - Хагуро  1929-04-25   | 1945-05-16
*/
    
    
/* характеристики */
insert into general
    (ship_id, date_from, date_to, 
     displacement_standart, displacement_full, 
     length, width, draft,
     crew, speed_max, speed_cruise, range)
    values
    (46, '1929-07-31', '1934-11-15',    11560, 13882,   203.8, 18.99, 6.23, 792, 35.25, 14, 11200),
    (46, '1935-03-31', '1940-03-19',    11560, 13882,   203.8, 18.99, 6.23, 832, 34.1,  14, 11200),
    (46, '1941-03-28',  null,           13370, 15890,   203.8, 20.73, 6.0,  891, 33.88, 14, 12700),
    
    (47, '1928-11-26', '1935-02-02',    11156, 13626,   203.8, 18.99, 6.2,  792, 35.53, 14, 11200),
    (47, '1935-06-15', '1939-01-15',    11156, 13626,   203.8, 18.99, 6.2,  832, 34.2,  14, 11200),
    (47, '1940-03-31', '1944-11-05',    13300, 15880,   203.8, 20.73, 6.67, 891, 34.2,  14, 12700),
    
    (48, '1929-08-20', '1939-02-15',    11560, 13882,   203.8, 18.99, 6.23, 792, 35.6,  14, 11200),
    (48, '1940-06-30', '1945-06-08',    13000, 15820,   203.8, 20.73, 6.62, 891, 35.6,  14, 12700),
    
    (49, '1929-04-25', '1935-02-20',    11560, 13882,   203.8, 18.99, 6.23, 792, 35.52, 14, 11200),
    (49, '1935-06-16', '1941-01-01',    11560, 13882,   203.8, 18.99, 6.23, 832, 34.0,  14, 11200),
    (49, '1941-01-01', '1945-05-16',    13080, 15840,   203.8, 20.73, 6.0,  891, 34.0,  14, 12700);
    
 
    
/* модернизации */
insert into ship_event_list
    (class_id, ship_id, date_from, date_to, description)
    values
    (0, 46, '1931-09-01', '1932-10-01', 'Куре, модернизация ГК'), /* неточные даты */
    (0, 46, '1934-11-15', '1935-03-31', 'Сасебо, первая модернизация'),
    (0, 46, '1935-10-01', '1935-10-30', 'Сасебо, после инцидента с 4 флотом'), /* неточные даты */
    (0, 46, '1940-03-19', '1941-03-28', 'Куре, вторая модернизация'),
    (0, 46, '1941-04-28', '1941-04-28', 'Куре, установка размагничивающей обмотки'),
    (1, 46, '1942-01-09', '1942-02-20', 'Сасебо'),
    (0, 46, '1942-03-20', '1942-04-08', 'Сасебо'),
    (0, 46, '1943-06-16', '1943-07-18', 'Сасебо, модернизация ПВО и радаров'),
    (0, 46, '1943-11-17', '1943-12-16', 'Сасебо, модернизация ПВО'),
    (0, 46, '1944-06-24', '1944-06-30', 'Куре, моденизация ПВО и радаров'),
    /*  13.12.44 на подходе к Кам-рань атакован SS-320 Pergall - потеряна кормовая оконечность
        25.12.44 отбуксирован в Сингапур, не восстанавливался, использовался для ПВО */
        
    (0, 47, '1931-08-01', '1931-12-01', 'Куре, модернизация ГК'), /* неточные даты */
    (0, 47, '1935-02-02', '1935-06-15', 'Сасебо, первая модернизация'),
    (0, 47, '1935-10-01', '1935-10-30', 'Сасебо, после инцидента с 4 флотом'), /* неточные даты */
    (0, 47, '1936-07-15', '1936-08-02', 'Сасебо'),
    (0, 47, '1939-01-15', '1940-03-31', 'Сасебо, вторая модернизация'),
    (0, 47, '1941-04-28', '1941-04-28', 'Куре, установка размагничивающей обмотки'),
    (0, 47, '1942-03-17', '1942-04-07', 'Сасебо'),
    (1, 47, '1943-02-06', '1943-02-27', 'Сасебо'),
    (0, 47, '1943-04-03', '1943-05-11', 'Йокосука, модернизация ПВО и радаров'),
    (0, 47, '1943-11-29', '1944-01-20', 'Сасебо, модернизация ПВО и радаров'),
    (0, 47, '1944-08-10', '1944-10-14', 'Куре, модернизация ПВО и радаров'),
    
    (0, 48, '1930-10-01', '1930-11-30', 'Сасебо'), /* неточные даты */
    (0, 48, '1933-05-01', '1934-04-30', 'Кавасаки, модернизация ГК'), /* неточные даты */
    (0, 48, '1934-11-15', '1935-02-28', 'Нагасаки, первая модернизация'), /* неточная дата конца */
    (0, 48, '1935-10-18', '1936-06-15', 'Сасебо, после взрыва в башне No2'),
    (0, 48, '1936-11-01', '1936-11-30', 'Сасебо, модернизация СУО'), /* неточные даты */
    (0, 48, '1937-03-10', '1937-04-03', 'Йокосука'),
    (0, 48, '1939-02-15', '1940-06-30', 'Йокосука, вторая модернизация'),
    (0, 48, '1941-04-28', '1941-04-28', 'Куре, установка размагничивающей обмотки'),
    (1, 48, '1942-06-02', '1942-06-24', 'Сасебо'),
    (1, 48, '1942-12-23', '1943-01-02', 'Сингапур'),
    (0, 48, '1943-04-09', '1943-05-10', 'Сасебо, модернизация ПВО'),
    (1, 48, '1943-10-23', '1943-11-01', 'Сингапур'),
    (0, 48, '1944-03-03', '1944-03-29', 'Сасебо, модернизация ПВО и радаров'),
    (1, 48, '1944-06-21', '1944-06-29', 'Йокосука'),
    (0, 48, '1944-08-10', '1944-09-10', 'Куре, модернизация ПВО и радаров'),
    
    (0, 49, '1932-08-01', '1933-05-31', 'Сасебо, модернизация ГК'), /* неточные даты */
    (0, 49, '1935-02-20', '1935-06-16', 'Сасебо, первая модернизация'),
    (0, 49, '1935-10-01', '1935-10-30', 'Сасебо, после инцидента с 4 флотом'), /* неточные даты */
    (0, 49, '1939-01-10', '1939-12-28', 'Сасебо, вторая модернизация'),
    (0, 49, '1941-04-28', '1941-04-28', 'Куре, установка размагничивающей обмотки'),
    (1, 49, '1942-05-22', '1942-05-25', 'Йокосука'),
    (1, 49, '1942-10-10', '1942-11-28', 'Сасебо'),
    (0, 49, '1943-06-16', '1943-07-18', 'Сасебо, модернизация ПВО и радаров'),
    (0, 49, '1943-11-17', '1943-12-16', 'Сасебо, модернизация ПВО'),
    (0, 49, '1944-06-24', '1944-06-30', 'Куре, модернизация ПВО и радаров');
    
    

/* орудия ГК */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (46, 29, 5, '1929-07-31', '1931-09-01'),
    (46, 30, 5, '1932-10-01',  null),
    
    (47, 29, 5, '1928-11-26', '1931-08-01'),
    (47, 30, 5, '1931-12-01', '1944-11-05'),
    
    (48, 29, 5, '1929-08-20', '1933-05-01'),
    (48, 30, 5, '1934-04-30', '1945-06-08'),
    
    (49, 29, 5, '1929-04-25', '1932-08-01'),
    (49, 30, 5, '1933-05-31', '1945-05-16');

 
    
/* ПВО */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (46,  9,  6, '1929-07-31', '1934-11-15'),
    (46, 12,  4, '1935-03-31',  null),
    (46, 58,  2, '1929-07-31', '1940-03-19'),
    (46, 53,  2, '1935-03-31', '1940-03-19'),
    (46, 52,  2, '1941-03-28', '1943-06-16'),
    (46, 44,  4, '1941-03-28', '1943-06-16'),
    (46, 44,  8, '1943-07-18',  null),
    (46, 43,  8, '1943-12-16', '1944-06-24'),
    (46, 45,  4, '1944-06-30',  null),
    (46, 43, 24, '1944-06-30',  null),
    
    (47,  9,  6, '1928-11-26', '1935-02-02'),
    (47, 12,  4, '1935-06-15', '1944-11-05'),
    (47, 58,  2, '1928-11-26', '1939-01-15'),
    (47, 53,  2, '1935-06-15', '1939-01-15'),
    (47, 52,  2, '1940-03-31', '1943-04-03'),
    (47, 44,  4, '1940-03-31', '1943-04-03'),
    (47, 44,  8, '1943-05-11', '1944-08-10'),
    (47, 43,  8, '1944-01-20', '1944-08-10'),
    (47, 44, 10, '1944-10-14', '1944-11-05'),
    (47, 43, 28, '1944-10-14', '1944-11-05'),
    
    (48,  9,  6, '1929-08-20', '1934-11-15'),
    (48, 12,  4, '1935-02-28', '1945-06-08'),
    (48, 58,  2, '1929-08-20', '1939-02-15'),
    (48, 53,  2, '1935-02-28', '1939-02-15'),
    (48, 52,  2, '1940-06-30', '1943-04-09'), 
    (48, 44,  4, '1940-06-30', '1943-04-09'),
    (48, 44,  8, '1943-05-10', '1944-08-10'),
    (48, 43,  8, '1944-03-29', '1944-08-10'),
    (48, 44, 10, '1944-09-10', '1945-06-08'),
    (48, 43, 28, '1944-09-10', '1945-06-08'),
    
    (49,  9,  6, '1929-04-25', '1935-02-20'),
    (49, 12,  4, '1935-06-16', '1945-05-16'),
    (49, 58,  2, '1929-04-25', '1939-01-10'),
    (49, 53,  2, '1935-06-16', '1939-01-10'),
    (49, 52,  2, '1939-12-28', '1943-06-16'),
    (49, 44,  4, '1939-12-28', '1943-06-16'),
    (49, 44,  8, '1943-07-18', '1945-05-16'),
    (49, 43,  8, '1943-12-16', '1944-06-24'),
    (49, 45,  4, '1944-06-30', '1945-05-16'),
    (49, 43, 24, '1944-06-30', '1945-05-16');
    
    
    
/* торпедные аппараты */
insert into ship_torpedo_tubes
    (ship_id, tube_id, amount, date_from, date_to)
    values
    (46,  7, 4, '1929-07-31', '1934-11-15'),
    (46, 12, 2, '1935-03-31', '1940-03-19'),
    (46, 12, 4, '1941-03-28', '1944-06-24'),
    (46, 12, 2, '1944-06-30',  null),
    
    (47,  7, 4, '1928-11-26', '1935-02-02'),
    (47, 12, 2, '1935-06-15', '1939-01-15'),
    (47, 12, 4, '1940-03-31', '1944-08-10'),
    (47, 12, 2, '1944-10-14', '1944-11-05'),
    
    (48,  7, 4, '1929-08-20', '1934-11-15'),
    (48, 12, 2, '1935-02-28', '1939-02-15'),
    (48, 12, 4, '1940-06-30', '1944-08-10'),
    (48, 12, 2, '1944-09-10', '1945-06-08'),
    
    (49,  7, 4, '1929-04-25', '1935-02-20'),
    (49, 12, 2, '1935-06-16', '1939-01-10'),
    (49, 12, 4, '1939-12-28', '1944-06-24'),
    (49, 12, 2, '1944-06-30', '1945-05-16');
    
    
    
/* радары */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (46, 0, 1, '1943-07-18',  null),        /* тип 21 мод 2 */
    (46, 1, 1, '1944-06-30',  null),        /* тип 22 мод 4 */
    (46, 2, 1, '1944-06-30',  null),        /* тип 13 */
    
    (47, 0, 1, '1943-05-11', '1943-11-29'), /* тип 21 мод 3 */
    (47, 0, 1, '1944-01-20', '1944-11-05'), /* тип 21 мод 2 */
    (47, 1, 1, '1944-01-20', '1944-11-05'), /* тип 22 мод 4 */
    (47, 2, 1, '1944-10-14', '1944-11-05'), /* тип 13 */
    
    (48, 0, 1, '1943-05-10', '1945-06-08'), /* тип 21 мод 2 */
    (48, 1, 1, '1944-03-29', '1945-06-08'), /* тип 22 мод 4 */
    (48, 2, 1, '1944-09-10', '1945-06-08'), /* тип 13 */
    
    (49, 0, 1, '1943-07-18', '1945-05-16'), /* тип 21 мод 2 */
    (49, 1, 1, '1944-06-30', '1945-05-16'), /* тип 22 мод 4 */
    (49, 2, 1, '1944-06-30', '1945-05-16'); /* тип 13 */
    
 
    
/* прожектора */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (46, 29, 5, '1929-07-31', '1935-10-01'),
    (46, 37, 2, '1929-07-31', '1935-10-01'),
    (46, 30, 4, '1935-10-30', '1944-06-24'),
    (46, 30, 2, '1944-06-30',  null),
    (46, 33, 2, '1935-10-30',  null),
    
    (47, 29, 5, '1928-11-26', '1935-10-01'),
    (47, 37, 2, '1928-11-26', '1935-10-01'),
    (47, 30, 4, '1935-10-30', '1944-11-05'),
    (47, 33, 2, '1935-10-30', '1944-11-05'),
    
    (48, 29, 5, '1929-08-20', '1935-10-18'),
    (48, 37, 2, '1929-08-20', '1935-10-18'),
    (48, 30, 4, '1936-06-15', '1945-06-08'),
    (48, 33, 2, '1936-06-15', '1945-06-08'),
    
    (49, 29, 5, '1929-04-25', '1935-10-01'),
    (49, 37, 2, '1929-04-25', '1935-10-01'),
    (49, 30, 4, '1935-10-30', '1944-06-24'),
    (49, 30, 2, '1944-06-30', '1945-05-16'),
    (49, 33, 2, '1935-10-30', '1945-05-16');
 
    
    
/* катапульты */
insert into ship_catapult
    (ship_id, catapult_id, amount, date_from, date_to)
    values
    (46,  5, 1, '1929-07-31', '1934-11-15'),
    (46,  8, 2, '1935-03-31', '1940-03-19'),
    (46, 10, 2, '1941-03-28',  null),
    
    (47,  5, 1, '1928-11-26', '1935-02-02'),
    (47,  8, 2, '1935-06-15', '1939-01-15'),
    (47, 10, 2, '1940-03-31', '1944-11-05'),
    
    (48,  5, 1, '1929-08-20', '1934-11-15'),
    (48,  8, 2, '1935-02-28', '1939-02-15'),
    (48, 10, 2, '1940-06-30', '1945-06-08'),
    
    (49,  5, 1, '1929-04-25', '1935-02-20'),
    (49,  8, 2, '1935-06-16', '1939-01-10'),
    (49, 10, 2, '1939-12-28', '1945-05-16');
    
    
    
/* авиагруппа */
    /* слишком раплывчатые данные */
    /* 26.02.1942: Nachi and Haguro launch their Aichi E13A1 Type 0 "Jake" floatplanes to reconnoiter Surabaya harbor */
insert into ship_aircraft
    (ship_id, aircraft_id, amount, date_from, date_to)
    values
    (46, 67, 1, '1929-07-31', '1934-11-15'), /* E2N1 */
    (46, 32, 3, '1935-10-30', '1942-03-20'), /* E8N1 */
    (46, 30, 1, '1935-10-30', '1942-03-20'), /* E7K1 */
    (46, 11, 3, '1942-04-08', '1944-12-13'), /* E13A */
    
    (47, 67, 2, '1928-11-26', '1936-07-15'), /* E2N1 */
    (47, 32, 3, '1936-08-02', '1941-04-28'), /* E8N1 */
    (47, 30, 1, '1936-08-02', '1941-04-28'), /* E7K1 */
    (47, 37, 2, '1941-04-28', '1943-03-26'), /* F1M  */
    (47, 11, 1, '1941-04-28', '1944-11-05'), /* E13A */
    
    (48, 67, 2, '1929-08-20', '1935-10-18'), /* E2N1 */
    (48, 30, 1, '1936-06-15', '1942-06-02'), /* E7K1 */
    (48, 32, 2, '1937-03-10', '1942-06-02'), /* E8N1 */
    (48, 11, 2, '1942-06-24', '1945-06-08'), /* E13A */
    
    (49, 67, 2, '1929-04-25', '1935-10-01'), /* E2N1 */
    (49, 32, 3, '1935-10-30', '1941-04-28'), /* E8N1 */
    (49, 30, 3, '1935-10-30', '1941-04-28'), /* E7K1 */
    (49, 11, 2, '1941-04-28', '1945-05-16'); /* E13A */
    
    
