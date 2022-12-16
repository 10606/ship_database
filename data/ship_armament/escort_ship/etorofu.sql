
/*
    260 - Эторофу
    261 - Муцуре 
    262 - Хирато 
    263 - Амакуса
    264 - Оки    
    265 - Фукае  
    266 - Кандзю 
    267 - Касадо 
    268 - Садо   
    269 - Цусима 
    270 - Мацува 
    271 - Вакамия
    272 - Мандзю 
    273 - Ики    
*/


/* характеристики */
insert into general
    (ship_id, date_from, date_to, 
     displacement_standart, displacement_full, 
     length, width, draft,
     crew, speed_max, speed_cruise, range)
    values
    (260, '1943-05-15',  null,           870, 1004,     77.72, 9.1, 3.1,    147, 19.7,  16, 12870),
    (261, '1943-07-31', '1943-09-02',    870, 1004,     77.72, 9.1, 3.1,    147, 19.7,  16, 12870),
    (262, '1943-09-28', '1944-09-19',    870, 1004,     77.72, 9.1, 3.1,    147, 19.7,  16, 12870),
    (263, '1943-11-20', '1945-08-09',    870, 1004,     77.72, 9.1, 3.1,    147, 19.7,  16, 12870),
    (264, '1943-03-28',  null,           870, 1004,     77.72, 9.1, 3.1,    147, 19.7,  16, 12870),
    (265, '1943-06-28',  null,           870, 1004,     77.72, 9.1, 3.1,    147, 19.7,  16, 12870),
    (266, '1943-10-30', '1945-08-15',    870, 1004,     77.72, 9.1, 3.1,    147, 19.7,  16, 12870),
    (267, '1944-02-27',  null,           870, 1004,     77.72, 9.1, 3.1,    147, 19.7,  16, 12870),
    (268, '1944-02-27', '1944-08-22',    870, 1004,     77.72, 9.1, 3.1,    147, 19.7,  16, 12870),
    (269, '1943-07-28',  null,           870, 1004,     77.72, 9.1, 3.1,    147, 19.7,  16, 12870),
    (270, '1943-03-23', '1944-08-22',    870, 1004,     77.72, 9.1, 3.1,    147, 19.7,  16, 12870),
    (271, '1943-08-10', '1943-11-23',    870, 1004,     77.72, 9.1, 3.1,    147, 19.7,  16, 12870),
    (272, '1943-11-30',  null,           870, 1004,     77.72, 9.1, 3.1,    147, 19.7,  16, 12870),
    (273, '1943-05-31', '1944-05-24',    870, 1004,     77.72, 9.1, 3.1,    147, 19.7,  16, 12870);
 
 
    
/* модернизации */
insert into ship_event_list
    (class_id, ship_id, date_from, date_to, description)
    values
    (1, 260, '1943-09-12', '1943-09-23', 'Сасебо'),
    (1, 260, '1943-12-06', '1944-01-08', 'Сасебо'),
    (1, 260, '1944-02-10', '1944-02-21', 'Сасебо'),
    (1, 260, '1944-05-05', '1944-05-11', 'Сасебо'),
    (0, 260, '1944-07-05', '1944-07-31', 'Сасебо'),
    (1, 260, '1944-11-02', '1944-11-09', 'Сасебо'),
    (1, 260, '1945-01-11', '1945-01-24',  null),
    (7, 260, '1945-07-15', '1945-07-15', 'поврежден авиацией, не восстанавливался'),
    (7, 260, '1945-08-15', '1945-08-15', 'Вакканай, Хоккайдо, передан американцам'),

    (1, 262, '1944-06-13', '1944-06-19', 'Сасебо'), /* неточная дата окончания */

    (1, 263, '1944-11-19', '1944-11-28', 'Йокосука'),
    (1, 263, '1945-01-13', '1945-01-22', 'Йокосука'),
    (7, 263, '1945-02-26', '1945-02-26', 'восточнее Изу Осима, поврежден авиацией TF-38'),
    (1, 263, '1945-03-01', '1945-03-16', 'Йокосука'), /* неточная дата начала */

    (1, 264, '1943-09-06', '1943-09-09', 'Йокосука'),
    (0, 264, '1944-06-01', '1944-06-06', 'Йокосука'), /* неточная дата начала */
    (0, 264, '1944-08-19', '1944-08-31', 'Йокосука'), /* неточная дата окончания */
    (7, 264, '1944-11-21', '1944-11-21', '33°20'' с.ш. 142°01''в.д., торпедирован SS-397 Scabbardfish'),
    (1, 264, '1944-11-24', '1945-01-31', 'Токио, Урага'), /* неточная дата окончания */
    
    (0, 265, '1944-12-07', '1945-01-27', 'Оминато'),
    (7, 265, '1945-03-01', '1945-03-01', '24°23'' с.ш. 124°12'' в.д., поврежден авиацией TF-58'),
    (1, 265, '1945-03-05', '1945-04-02', 'Сасебо'),
    (7, 265, '1945-07-15', '1945-07-15', 'поврежден авиацией, не восстанавливался'),

    (0, 266, '1944-08-01', '1944-08-31',  null), /* неточные данные */
    (1, 266, '1944-11-01', '1944-11-18', 'Тама'),
    (1, 266, '1945-05-14', '1945-05-31', 'Сасебо'), /* неточная дата окончания */

    (7, 267, '1944-04-27', '1944-04-27', 'торпедирован SS-237 Trigger'),
    (1, 267, '1944-04-28', '1944-05-26', 'Палау'),
    (1, 267, '1944-05-31', '1944-06-07', 'Манила'),
    (0, 267, '1944-06-17', '1944-07-31', 'Сасебо'), /* неточная дата окончания */
    (1, 267, '1945-01-09', '1945-01-31', 'Сасебо'), /* неточная дата окончания */
    (7, 267, '1945-06-22', '1945-06-22', 'западнее Хокайдо, торпедирован SS-291 Crevale'),
    (1, 267, '1945-06-23', '1945-07-26', 'Отару'),
    (7, 267, '1945-07-15', '1945-07-15', 'Отару, поврежден авиацией TF-38'),

    (1, 268, '1943-06-12', '1943-06-27', 'Сасебо'),
    (1, 268, '1943-09-21', '1943-09-27', 'Сасебо'),
    (1, 268, '1943-10-20', '1943-10-31', 'Сасебо'),
    (1, 268, '1943-11-21', '1943-11-23', 'Сасебо'),
    (1, 268, '1944-04-13', '1944-04-26', 'Сасебо'),
    (0, 268, '1944-06-09', '1944-07-09', 'Сасебо'),

    (7, 269, '1944-03-01', '1944-03-01', 'около Сен-Жака, столкновение с Токусима Мару, отрезано 8м кормы'),
    (1, 269, '1944-03-02', '1944-03-26', 'Тха Бе'), /* неточные даты */
    (1, 269, '1944-03-31', '1944-09-30', 'Сингапур'),
    (1, 269, '1945-06-02',  null,        'Сасебо'),

    (1, 270, '1943-07-05', '1943-07-28', 'Сасебо'),
    (1, 270, '1943-09-03', '1943-09-08', 'Сасебо'),
    (1, 270, '1943-10-10', '1943-10-19', 'Сасебо'),
    (1, 270, '1944-02-29', '1944-03-12', 'Сасебо'),
    (1, 270, '1944-04-24', '1944-05-13', 'Сасебо'),
    (7, 270, '1944-05-24', '1944-05-25', '01°17'' с.ш. 107°53'' в.д., торпедирован SS-270 Raton'),
    (1, 270, '1944-05-25', '1944-06-06', 'Сингапур'),
    (0, 270, '1944-06-15', '1944-07-16', 'Сасабо'),

    (1, 272, '1944-07-02', '1944-07-17', 'Куре'),
    (1, 272, '1944-08-21', '1944-09-06', 'Куре'),
    (7, 272, '1945-01-31', '1945-01-31', '11°15'' с.ш. 109°12'' в.д., торпедирован SS-264 Pargo'),
    (1, 272, '1945-02-02', '1945-02-05', 'Сайгон'),
    (1, 272, '1945-02-08', '1945-03-19', 'Сингапур'),
    (7, 272, '1945-04-03', '1945-04-03', 'Гонг-Конг, поврежден 2 попаданиями бомб, дрейфует к острову Стоункаттерс, нос на мели'),
    (7, 272, '1945-04-07', '1945-05-11', 'снятие с мели'),
    (1, 272, '1945-05-11', '1945-08-15', 'Коулун'),

    (1, 273, '1944-05-03', '1944-05-07', 'Сасебо');
    
    
    
/* орудия ГК */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (260, 0, 3, '1943-05-15',  null),
    (261, 0, 3, '1943-07-31', '1943-09-02'),
    (262, 0, 3, '1943-09-28', '1944-09-19'),
    (263, 0, 3, '1943-11-20', '1945-08-09'),
    (264, 0, 3, '1943-03-28',  null),
    (265, 0, 3, '1943-06-28',  null),
    (266, 0, 3, '1943-10-30', '1945-08-15'),
    (267, 0, 3, '1944-02-27',  null), /* по некоторым данным No 2 было демонтировано */
    (268, 0, 3, '1944-02-27', '1944-08-22'),
    (269, 0, 3, '1943-07-28',  null),
    (270, 0, 3, '1943-03-23', '1944-08-22'),
    (271, 0, 3, '1943-08-10', '1943-11-23'),
    (272, 0, 3, '1943-11-30',  null),
    (273, 0, 3, '1943-05-31', '1944-05-24');
    
    
    
/* ПВО */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (260, 44,  2, '1943-05-15',  null),
    (260, 45,  3, '1944-07-05',  null), /* неточная дата начала */
    (260, 52,  1, '1944-07-05',  null), /* неточная дата начала */
    
    (261, 44,  2, '1943-07-31', '1943-09-02'),
    
    (262, 44,  2, '1943-09-28', '1944-09-19'),
    
    (263, 44,  2, '1943-11-20', '1945-08-09'),
    
    (264, 44,  2, '1943-03-28', '1944-08-19'),
    (264, 44,  5, '1944-08-31',  null), /* неточная дата начала */
    (264, 43, 10, '1944-08-31',  null), /* неточная дата начала */
    (264, 51,  3, '1944-08-31',  null), /* неточная дата начала */

    (265, 44,  2, '1943-06-28',  null),
    
    (266, 44,  2, '1943-10-30', '1944-08-01'),
    (266, 45,  5, '1944-08-31', '1945-08-15'),

    (267, 44,  2, '1944-02-27', '1944-06-17'),
    (267, 45,  5, '1944-07-31', '1945-06-22'),
    (267, 45,  4, '1945-06-22',  null),
    (267, 51,  3, '1944-07-31',  null), /* неточные данные */

    (268, 44,  2, '1944-02-27', '1944-08-22'),
    (268, 45,  3, '1944-07-09', '1944-08-22'), /* неточные данные */

    (269, 44,  2, '1943-07-28',  null),
    
    (270, 44,  2, '1943-03-23', '1944-06-15'),
    (270, 45,  5, '1944-07-16', '1944-08-22'), /* неточные данные */
    
    (271, 44,  2, '1943-08-10', '1943-11-23'),
    
    (272, 44,  2, '1943-11-30',  null),
    
    (273, 44,  2, '1943-05-31', '1944-05-24');
        
        
        
/* радары */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (260, 1, 1, '1944-07-05',  null), /* тип 22 */ /* неточная дата начала */
    (260, 2, 1, '1944-07-05',  null), /* тип 13 */ /* неточная дата начала */

    (264, 1, 1, '1944-06-06',  null), /* тип 22 */ /* неточные данные */
    (264, 2, 1, '1944-06-06',  null), /* тип 13 */

    (265, 1, 1, '1943-06-28',  null), /* тип 22 */

    (266, 1, 1, '1943-10-30', '1945-08-15'), /* тип 22 */
    
    (267, 1, 1, '1944-02-27',  null), /* тип 22 */

    (268, 1, 1, '1944-07-09', '1944-08-22'), /* тип 22 */ /* неточные данные */
    (268, 2, 1, '1944-07-09', '1944-08-22'); /* тип 22 */ /* неточные данные */
    
    
    
/* прожектора */
/* неточные данные */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (260, 32, 1, '1943-05-15',  null),
    (261, 32, 1, '1943-07-31', '1943-09-02'),
    (262, 32, 1, '1943-09-28', '1944-09-19'),
    (263, 32, 1, '1943-11-20', '1945-08-09'),
    (264, 32, 1, '1943-03-28',  null),
    (265, 32, 1, '1943-06-28',  null),
    (266, 32, 1, '1943-10-30', '1945-08-15'),
    (267, 32, 1, '1944-02-27',  null),
    (268, 32, 1, '1944-02-27', '1944-08-22'),
    (269, 32, 1, '1943-07-28',  null),
    (270, 32, 1, '1943-03-23', '1944-08-22'),
    (271, 32, 1, '1943-08-10', '1943-11-23'),
    (272, 32, 1, '1943-11-30',  null),
    (273, 32, 1, '1943-05-31', '1944-05-24');
    
        
        
/* бомбометы */
insert into ship_throwers
    (ship_id, throwers_id, amount, date_from, date_to)
    values
    (260, 0, 1, '1943-05-15',  null),
    (261, 0, 1, '1943-07-31', '1943-09-02'),
    (262, 0, 1, '1943-09-28', '1944-09-19'),
    (263, 0, 1, '1943-11-20', '1945-08-09'),
    (264, 0, 1, '1943-03-28',  null),
    (265, 0, 1, '1943-06-28',  null),
    (266, 0, 1, '1943-10-30', '1945-08-15'),
    (267, 0, 1, '1944-02-27',  null),
    (268, 0, 1, '1944-02-27', '1944-08-22'),
    (269, 0, 1, '1943-07-28',  null),
    (270, 0, 1, '1943-03-23', '1944-08-22'),
    (271, 0, 1, '1943-08-10', '1943-11-23'),
    (272, 0, 1, '1943-11-30',  null),
    (273, 0, 1, '1943-05-31', '1944-05-24');
    
        
        
/* бомбоскаты */
insert into ship_throwers
    (ship_id, throwers_id, amount, date_from, date_to)
    values
    (260, 2, 2, '1943-05-15',  null),
    (261, 2, 2, '1943-07-31', '1943-09-02'),
    (262, 2, 2, '1943-09-28', '1944-09-19'),
    (263, 2, 2, '1943-11-20', '1945-08-09'),
    (264, 2, 2, '1943-03-28',  null),
    (265, 2, 2, '1943-06-28',  null),
    (266, 2, 2, '1943-10-30', '1945-08-15'),
    (267, 2, 2, '1944-02-27',  null),
    (268, 2, 2, '1944-02-27', '1944-08-22'),
    (269, 2, 2, '1943-07-28',  null),
    (270, 2, 2, '1943-03-23', '1944-08-22'),
    (271, 2, 2, '1943-08-10', '1943-11-23'),
    (272, 2, 2, '1943-11-30',  null),
    (273, 2, 2, '1943-05-31', '1944-05-24');
    
    
