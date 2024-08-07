    
/*
    50 - Могами
    51 - Микума
    52 - Судзуя
    53 - Кумано
*/
    
    
/* характеристики */
insert into general
    (ship_id, date_from, date_to, 
     displacement_standart, displacement_full, 
     length, width, draft,
     crew, speed_max, speed_cruise, range)
    values
    (50, '1935-07-28', '1936-04-01',    11229, 13980,   200.6, 18.0, 6.15,  930, 35.96, 14, 14250),
    (50, '1938-02-15', '1939-01-31',    12231, 15057,   200.6, 18.0, 6.15,  951, 34.73, 14, 13520),
    (50, '1940-04-12', '1943-01-01',    12281, 15091,   200.6, 18.0, 6.15,  896, 34.73, 14, 13520),
    (50, '1943-01-01', '1944-10-25',    12281, 15091,   200.6, 18.0, 6.15,  900, 34.73, 14, 13520),
    
    (51, '1935-08-29', '1935-11-30',    11200, 13758,   200.6, 18.0, 6.1,   930, 36.47, 14, 14250),
    (51, '1936-02-05', '1939-05-22',    12286, 14888,   200.6, 18.0, 6.1,   951, 35,    14, 13520),
    (51, '1940-04-12', '1942-06-06',    12348, 14916,   200.6, 18.0, 6.1,   896, 35,    14, 13520),
    
    (52, '1937-10-31', '1939-01-31',    11890, 14849,   200.6, 20.2, 6.1,   951, 35.5,  14, 13520),
    (52, '1939-09-30', '1944-10-25',    11929, 14795,   200.6, 20.2, 6.1,   896, 35.5,  14, 13520),
    
    (53, '1937-10-31', '1939-05-20',    11713, 14684,   200.6, 20.2, 6.05,  951, 35.36, 14, 13520),
    (53, '1939-10-20', '1944-11-25',    11835, 14791,   200.6, 20.2, 6.05,  896, 35.36, 14, 13520);
    
    
    
/* модернизации */
insert into ship_event_list
    (class_id, ship_id, date_from, date_to, description)
    values
    (0, 50, '1936-04-01', '1938-02-15', 'Куре, второй этап повышения эффективности: усиление корпуса'),
    (0, 50, '1939-01-31', '1940-04-12', 'Куре, третий этап повышения эффективности: замена орудий ГК'),
    (0, 50, '1941-04-04', '1941-04-11', 'Куре, установка размагничивающей обмотки'),
    (1, 50, '1942-06-14', '1942-07-22', 'Трук'),
    (0, 50, '1942-09-01', '1943-04-30', 'Сасебо, первая военная модернизация: переделка в авианесущий крейсер'),
    (1, 50, '1943-11-06', '1943-11-16', 'Трук'),
    (0, 50, '1943-11-21', '1944-02-17', 'Куре, вторая военная модернизация: ПВО и радары'),
    (0, 50, '1944-06-25', '1944-07-08', 'Куре, третья военная модернизация: ПВО и радары'),
    
    (0, 51, '1935-11-30', '1936-02-05', 'Куре, второй этап повышения эффективности: усиление корпуса'),
    (0, 51, '1939-05-22', '1940-04-12', 'Куре, третий этап повышения эффективности: усиление корпуса, замена орудий ГК'),
    (0, 51, '1941-04-11', '1941-04-17', 'Куре, установка размагничивающей обмотки'),
    (1, 51, '1941-09-08', '1941-09-13', 'Куре'),
    
    (0, 52, '1939-01-31', '1939-09-30', 'Куре, третий этап повышения эффективности: усиление корпуса, замена орудий ГК'),
    (0, 52, '1941-04-11', '1941-04-17', 'Куре, установка размагничивающей обмотки'),
    (1, 52, '1941-08-31', '1941-09-07', 'Куре'),
    (1, 52, '1942-04-27', '1942-05-04',  null),
    (0, 52, '1943-04-06', '1943-04-15', 'Куре, модернизация ПВО и радаров'),
    (0, 52, '1944-03-26', '1944-04-07', 'Селетар, модернизация ПВО и радаров'),
    (0, 52, '1944-06-25', '1944-07-08', 'Куре, модернизация ПВО и радаров'),
    
    (0, 53, '1939-05-20', '1939-10-20', 'Куре, третий этап повышения эффективности: усиление корпуса, замена орудий ГК'),
    (0, 53, '1941-04-04', '1941-04-11', 'Куре, установка размагничивающей обмотки'),
    (1, 53, '1942-04-27', '1942-05-04',  null),
    (1, 53, '1942-11-08', '1942-11-21', 'Куре'),
    (0, 53, '1943-04-27', '1943-05-02', 'Куре, модернизация ПВО и радаров'),
    (1, 53, '1943-09-02', '1943-10-31', 'Куре'),
    (0, 53, '1944-03-26', '1944-04-07', 'Селетар, модернизация ПВО и радаров'),
    (0, 53, '1944-06-25', '1944-07-08', 'Куре, модернизация ПВО и радаров'),
    (1, 53, '1944-10-28', '1944-11-03', 'Манила'),
    (7, 53, '1944-11-06', '1944-11-06', 'атакован подлодками SS-310 Batfish (09:05), SS-243 Bream (в 09:43), SS-270 Raton (10:43), SS-271 Ray (10:48), попало только 2 торпеды с последней, крейсер лишился носа и хода');
    
    
    
/* орудия ГК */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (50, 24, 5, '1935-07-28', '1939-01-31'),
    (50, 32, 5, '1940-04-11', '1942-09-01'),
    (50, 32, 3, '1943-04-30', '1944-10-25'),
    
    (51, 24, 5, '1935-08-29', '1939-05-22'),
    (51, 32, 5, '1940-04-12', '1942-06-06'),
    
    (52, 24, 5, '1937-10-31', '1939-01-31'),
    (52, 32, 5, '1939-09-30', '1944-10-25'),
    
    (53, 24, 5, '1937-10-31', '1939-05-20'),
    (53, 32, 5, '1939-10-20', '1944-11-25');
    
    
    
/* ПВО */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (50, 12,  2, '1935-07-28', '1936-04-01'),
    (50, 12,  4, '1938-02-15', '1944-10-25'),
    (50, 44,  4, '1935-07-28', '1942-09-01'),
    (50, 52,  2, '1935-07-28', '1942-09-01'),
    (50, 45, 10, '1943-04-30', '1944-06-25'),
    (50, 43,  8, '1944-02-17', '1944-06-25'),
    (50, 45, 14, '1944-07-08', '1944-10-25'),
    (50, 43, 18, '1944-07-08', '1944-10-25'),
    
    (51, 12,  2, '1935-08-29', '1935-11-30'),
    (51, 12,  4, '1936-02-05', '1942-06-06'),
    (51, 44,  4, '1935-08-29', '1942-06-06'),
    (51, 52,  2, '1935-08-29', '1942-06-06'),
    
    (52, 12,  4, '1937-10-31', '1944-10-25'),
    (52, 52,  2, '1937-10-31', '1943-04-06'),
    (52, 44,  4, '1937-10-31', '1944-10-25'),
    (52, 45,  4, '1943-04-15', '1944-06-25'),
    (52, 43,  8, '1944-04-07', '1944-06-25'),
    (52, 45,  8, '1944-07-08', '1944-10-25'),
    (52, 43, 18, '1944-07-08', '1944-10-25'),
    
    (53, 12,  4, '1937-10-31', '1944-11-25'),
    (53, 44,  4, '1937-10-31', '1944-11-25'),
    (53, 52,  2, '1937-10-31', '1943-04-27'),
    (53, 45,  4, '1943-05-02', '1944-06-25'),
    (53, 43,  8, '1944-04-07', '1944-06-25'),
    (53, 45,  8, '1944-07-08', '1944-11-25'),
    (53, 43, 24, '1944-07-08', '1944-11-25');
    
    
    
/* торпедные аппараты */
insert into ship_torpedo_tubes
    (ship_id, tube_id, amount, date_from, date_to)
    values
    (50, 10, 4, '1935-07-28', '1944-10-25'),
    (51, 10, 4, '1935-08-29', '1942-06-06'),
    (52, 10, 4, '1937-10-31', '1944-10-25'),
    (53, 10, 4, '1937-10-31', '1944-11-25');
    
    
    
/* радары */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (50, 0, 1, '1943-04-30', '1944-10-25'), /* тип 21 мод 2 */
    (50, 1, 1, '1944-02-17', '1944-06-25'), /* тип 22 мод 4 */
    (50, 1, 1, '1944-07-08', '1944-10-25'), /* тип 22 мод 4S */
    (50, 2, 1, '1944-07-08', '1944-10-25'), /* тип 13 */
    
    (52, 0, 1, '1943-04-15', '1944-10-25'), /* тип 21 мод 2 */
    (52, 1, 1, '1944-04-07', '1944-06-25'), /* тип 22 мод 4 */
    (52, 1, 1, '1944-07-08', '1944-10-25'), /* тип 22 мод 4S */
    (52, 2, 1, '1944-07-08', '1944-10-25'), /* тип 13 */
    
    (53, 0, 1, '1943-05-02', '1944-11-25'), /* тип 21 мод 2 */
    (53, 1, 1, '1944-04-07', '1944-06-25'), /* тип 22 мод 4 */
    (53, 1, 1, '1944-07-08', '1944-11-25'), /* тип 22 мод 4S */
    (53, 2, 1, '1944-07-08', '1944-11-25'); /* тип 13 */
    
    
/* прожектора */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (50, 30, 3, '1935-07-28', '1944-10-25'),
    (50, 33, 2, '1935-07-28', '1944-10-25'),
    (51, 30, 3, '1935-08-29', '1942-06-06'),
    (51, 33, 2, '1935-08-29', '1942-06-06'),
    (52, 30, 3, '1937-10-31', '1944-10-25'),
    (52, 33, 2, '1937-10-31', '1944-10-25'),
    (53, 30, 3, '1937-10-31', '1944-11-25'),
    (53, 33, 2, '1937-10-31', '1944-11-25');
    
    
    
/* катапульты */
insert into ship_catapult
    (ship_id, catapult_id, amount, date_from, date_to)
    values
    (50,  8, 2, '1935-07-28', '1939-01-31'), 
    (50, 10, 2, '1940-04-12', '1944-10-25'),
    (51,  8, 2, '1935-08-29', '1939-05-22'),
    (51, 10, 2, '1940-04-12', '1942-06-06'),
    (52,  8, 2, '1937-10-31', '1939-01-31'),
    (52, 10, 2, '1939-09-30', '1944-10-25'),
    (53,  8, 2, '1937-10-31', '1939-05-20'),
    (53, 10, 2, '1939-10-20', '1944-11-25');
    
    
    
/* авиагруппа */
insert into ship_aircraft
    (ship_id, aircraft_id, amount, date_from, date_to)
    values
    (50, 30, 1, '1935-07-28', '1936-04-01'), /* E7K1 */
    (50, 41, 2, '1935-07-28', '1936-04-01'), /* E4N2 */
    (50, 30, 1, '1938-02-15', '1939-01-31'), /* E7K1 */
    (50, 32, 2, '1938-02-15', '1942-09-01'), /* E7K2 */
    (50, 37, 3, '1943-04-30', '1944-06-13'), /* F1M  */
    (50, 11, 4, '1943-04-30', '1944-06-13'), /* E13A */
    (50, 37, 2, '1944-06-13', '1944-10-18'), /* F1M  */
    (50, 11, 5, '1944-06-13', '1944-10-18'), /* E13A */
    (50, 11, 6, '1944-10-18', '1944-10-25'), /* E13A */
    
    (51, 30, 1, '1935-08-29', '1935-11-30'), /* E7K1 */
    (51, 41, 2, '1935-08-29', '1935-11-30'), /* E4N2 */
    (51, 30, 1, '1936-02-05', '1939-05-22'), /* E7K1 */
    (51, 31, 1, '1940-04-12', '1942-06-06'), /* E7K2 */
    (51, 32, 2, '1936-02-05', '1942-06-06'), /* E8N1 */
    
    (52, 30, 1, '1937-10-31', '1939-01-31'), /* E7K1 */
    (52, 32, 2, '1937-10-31', '1939-01-31'), /* E8K1 */
    (52, 31, 2, '1939-09-30', '1943-04-06'), /* E7K2 */ /* 1943-04-06  неточная дата */
    (52, 33, 1, '1939-09-30', '1943-04-06'), /* E8K2 */ /* 1943-04-06  неточная дата */
    (52, 37, 1, '1943-04-15', '1944-10-25'), /* F1M  */ /* 1943-04-15  неточная дата */
    (52, 11, 2, '1943-04-15', '1944-10-25'), /* E13A */ /* 1943-04-15  неточная дата */
    
    (53, 30, 1, '1937-10-31', '1939-05-20'), /* E7K1 */
    (53, 32, 2, '1937-10-31', '1939-05-20'), /* E8N1 */
    (53, 31, 2, '1939-10-20', '1941-12-09'), /* E7K2 */
    (53, 33, 1, '1939-10-20', '1943-04-27'), /* E8K2 */ /* 1943-04-27  неточная дата */
    (53, 31, 1, '1941-12-09', '1942-04-27'), /* E7K2 пропал без вести, погоня за соединением Z */
    (53, 31, 2, '1942-05-04', '1942-10-26'), /* E7K2 */
    (53, 31, 1, '1942-10-26', '1942-10-30'), /* E7K2 */ /* временно передан Кирисиме */
    (53, 32, 2, '1942-10-30', '1943-04-27'), /* E7K2 */ /* 1943-04-27  неточная дата */
    (53, 37, 1, '1943-05-02', '1944-11-25'), /* F1M  */ /* 1943-05-02  неточная дата */
    (53, 11, 2, '1943-05-02', '1944-11-25'); /* E13A */ /* 1943-05-02  неточная дата */
    
    
