
/*
    282 - Укуру  
    283 - Окинава
    284 - Синнан 
    285 - Яку    
    286 - Агуни  
    287 - Инаги  
    288 - Уку    
    289 - Тикубу 
    290 - Хабуси 
    291 - Куга   
    292 - Одзика 
    293 - Кодзу  
    294 - Канава 
    295 - Сига   
    296 - Амами  
    297 - Ходака 
    298 - Иво    
    299 - Такане 
    300 - Икара  
    301 - Икуно  
*/


/* характеристики */
insert into general
    (ship_id, date_from, date_to, 
     displacement_standart, displacement_full, 
     length, width, draft,
     crew, speed_max, speed_cruise, range)
    values
    (282, '1944-07-31',  null,           955, null,  78.8, 9.1, 3.05,   150, 19.5,  16, 9300),
    (283, '1944-08-16', '1945-07-30',    955, null,  78.8, 9.1, 3.05,   150, 19.5,  16, 9300),
    (284, '1944-10-21',  null,           955, null,  78.8, 9.1, 3.05,   150, 19.5,  16, 9300),
    (285, '1944-10-23', '1945-02-23',    955, null,  78.8, 9.1, 3.05,   150, 19.5,  16, 9300),
    (286, '1944-12-02', '1945-05-27',    955, null,  78.8, 9.1, 3.05,   150, 19.5,  16, 9300),
    (287, '1944-12-16', '1945-08-09',    955, null,  78.8, 9.1, 3.05,   150, 19.5,  16, 9300),
    (288, '1944-12-30',  null,           955, null,  78.8, 9.1, 3.05,   150, 19.5,  16, 9300),
    (289, '1944-12-31',  null,           955, null,  78.8, 9.1, 3.05,   150, 19.5,  16, 9300),
    (290, '1945-01-10',  null,           955, null,  78.8, 9.1, 3.05,   150, 19.5,  16, 9300),
    (291, '1945-01-25', '1945-06-25',    955, null,  78.8, 9.1, 3.05,   150, 19.5,  16, 9300),
    (292, '1945-02-21', '1945-06-02',    955, null,  78.8, 9.1, 3.05,   150, 19.5,  16, 9300),
    (293, '1945-02-07',  null,           955, null,  78.8, 9.1, 3.05,   150, 19.5,  16, 9300),
    (294, '1945-03-15',  null,           955, null,  78.8, 9.1, 3.05,   150, 19.5,  16, 9300),
    (295, '1945-03-20',  null,           955, null,  78.8, 9.1, 3.05,   150, 19.5,  16, 9300),
    (296, '1945-04-08',  null,           955, null,  78.8, 9.1, 3.05,   150, 19.5,  16, 9300),
    (297, '1945-03-30',  null,           955, null,  78.8, 9.1, 3.05,   150, 19.5,  16, 9300),
    (298, '1945-03-24',  null,           955, null,  78.8, 9.1, 3.05,   150, 19.5,  16, 9300),
    (299, '1945-04-26',  null,           955, null,  78.8, 9.1, 3.05,   150, 19.5,  16, 9300),
    (300, '1945-04-30', '1945-08-09',    955, null,  78.8, 9.1, 3.05,   150, 19.5,  16, 9300),
    (301, '1945-07-17',  null,           955, null,  78.8, 9.1, 3.05,   150, 19.5,  16, 9300);
 
 
    
/* модернизации */
insert into ship_event_list
    (class_id, ship_id, date_from, date_to, description)
    values
    (1, 282, '1945-02-12', '1945-03-07', 'Сасебо'), /* неточная дата окончания */

    (7, 283, '1944-11-19', '1944-11-19', 'Лабуан, поврежден близкими разрывами бомб B-24'),
    (1, 283, '1944-11-26', '1944-12-02', 'Сингапур'),
    (1, 283, '1945-01-14', '1945-01-31', 'Куре'), /* неточная дата окончания */
    (1, 283, '1945-03-19', '1945-04-04', 'Сасебо'),
    (1, 283, '1945-07-07', '1945-07-30', 'Майдзуру'),

    (1, 284, '1945-01-25', '1945-01-29', 'Гонг-Конг'),
    (1, 284, '1945-02-16', '1945-03-04', 'Сасебо'),

    (7, 286, '1945-05-27', '1945-05-27', 'Корейский пролив, у острова Геомундо, поврежден PB4Y-2B'),
    (1, 286, '1945-06-01', '1945-08-31', 'Пусан'), /* неточные даты */
    (7, 286, '1945-08-15', '1945-08-15', 'извещен о прекращении боевых действий'),

    (1, 287, '1945-03-15', '1945-03-30', 'Куре'), /* неточная дата окончания */
    (7, 287, '1945-03-31', '1945-03-31', 'около Куре, подорвался на мине выставленной B-29'),
    (1, 287, '1945-04-01', '1945-04-25', 'Куре'), /* неточные даты */

    (7, 288, '1945-05-09', '1945-05-09', '34°06'' с.ш. 130°47'' в.д., подорвался на мине, возможно выставленной B-29'),

    (1, 289, '1945-02-28', '1945-03-02', 'Куре'),

    (7, 290, '1945-04-08', '1945-04-08', 'у побережья Китая, подорвался на мине'),
    (1, 290, '1945-04-08', '1945-06-10', 'Шанхай'),
    (1, 290, '1945-07-02', '1945-07-31', 'Сасебо'), /* неточная дата окончания */
    (7, 290, '1945-07-28', '1945-07-28', 'Сасебо, поврежден авиацией TF-38'),

    (7, 291, '1945-06-25', '1945-06-25', 'бухта Фукагава, подорвался на мине'),
    (1, 291, '1945-07-01', '1945-08-31', 'Майдзуру'), /* неточная дата окончания */

    (1, 296, '1945-05-06', '1945-07-02', 'Майдзуру'),

    (7, 299, '1945-07-30', '1945-07-30', 'поврежден авиацией TF-38'),
    (1, 299, '1945-07-30', '1945-08-20', 'Майдзуру'),
    (7, 299, '1945-08-15', '1945-08-15', 'извещен о прекращении боевых действий');

    
    
/* орудия ГК */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (282, 8, 1, '1944-07-31',  null),
    (282, 9, 1, '1944-07-31',  null),
    
    (283, 8, 1, '1944-08-16', '1945-07-30'),
    (283, 9, 1, '1944-08-16', '1945-07-30'),
    
    (284, 8, 1, '1944-10-21',  null),
    (284, 9, 1, '1944-10-21',  null),
    
    (285, 8, 1, '1944-10-23', '1945-02-23'),
    (285, 9, 1, '1944-10-23', '1945-02-23'),
    
    (286, 8, 1, '1944-12-02', '1945-05-27'),
    (286, 9, 1, '1944-12-02', '1945-05-27'),
    
    (287, 8, 1, '1944-12-16', '1945-08-09'),
    (287, 9, 1, '1944-12-16', '1945-08-09'),
    
    (288, 8, 1, '1944-12-30',  null),
    (288, 9, 1, '1944-12-30',  null),
    
    (289, 8, 1, '1944-12-31',  null),
    (289, 9, 1, '1944-12-31',  null),
    
    (290, 8, 1, '1945-01-10',  null),
    (290, 9, 1, '1945-01-10',  null),

    (291, 8, 1, '1945-01-25', '1945-06-25'),
    (291, 9, 1, '1945-01-25', '1945-06-25'),
    
    (292, 8, 1, '1945-02-21', '1945-06-02'),
    (292, 9, 1, '1945-02-21', '1945-06-02'),
    
    (293, 8, 1, '1945-02-07',  null),
    (293, 9, 1, '1945-02-07',  null),
    
    (294, 8, 1, '1945-03-15',  null),
    (294, 9, 1, '1945-03-15',  null),
    
    (295, 8, 1, '1945-03-20',  null),
    (295, 9, 1, '1945-03-20',  null),
    
    (296, 8, 1, '1945-04-08',  null),
    (296, 9, 1, '1945-04-08',  null),
    
    (297, 8, 1, '1945-03-30',  null),
    (297, 9, 1, '1945-03-30',  null),
    
    (298, 8, 1, '1945-03-24',  null),
    (298, 9, 1, '1945-03-24',  null),
    
    (299, 8, 1, '1945-04-26',  null),
    (299, 9, 1, '1945-04-26',  null),

    (300, 8, 1, '1945-04-30', '1945-08-09'),
    (300, 9, 1, '1945-04-30', '1945-08-09'),
    
    (301, 8, 1, '1945-07-17',  null),
    (301, 9, 1, '1945-07-17',  null);

    
    
/* орудия ГК */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (282, 45, 5, '1944-07-31',  null),
    (282, 43, 3, '1944-07-31',  null),
    
    (283, 45, 5, '1944-08-16', '1945-07-30'),
    (283, 43, 3, '1944-08-16', '1945-07-30'),
    
    (284, 45, 5, '1944-10-21',  null),
    (284, 43, 3, '1944-10-21',  null),
    
    (285, 45, 5, '1944-10-23', '1945-02-23'),
    (285, 43, 3, '1944-10-23', '1945-02-23'),
    
    (286, 45, 5, '1944-12-02', '1945-05-27'),
    (286, 43, 3, '1944-12-02', '1945-05-27'),
    
    (287, 45, 5, '1944-12-16', '1945-08-09'),
    (287, 43, 3, '1944-12-16', '1945-08-09'),
    
    (288, 45, 5, '1944-12-30',  null),
    (288, 43, 3, '1944-12-30',  null),
    
    (289, 45, 5, '1944-12-31',  null),
    (289, 43, 3, '1944-12-31',  null),
    
    (290, 45, 5, '1945-01-10',  null),
    (290, 43, 3, '1945-01-10',  null),

    (291, 45, 5, '1945-01-25', '1945-06-25'),
    (291, 43, 3, '1945-01-25', '1945-06-25'),
    
    (292, 45, 5, '1945-02-21', '1945-06-02'),
    (292, 43, 3, '1945-02-21', '1945-06-02'),
    
    (293, 45, 5, '1945-02-07',  null),
    (293, 43, 3, '1945-02-07',  null),
    
    (294, 45, 5, '1945-03-15',  null),
    (294, 43, 3, '1945-03-15',  null),
    
    (295, 45, 5, '1945-03-20',  null),
    (295, 43, 3, '1945-03-20',  null),
    
    (296, 45, 5, '1945-04-08',  null),
    (296, 43, 3, '1945-04-08',  null),
    
    (297, 45, 5, '1945-03-30',  null),
    (297, 43, 3, '1945-03-30',  null),
    
    (298, 45, 5, '1945-03-24',  null),
    (298, 43, 3, '1945-03-24',  null),
    
    (299, 45, 5, '1945-04-26',  null),
    (299, 43, 3, '1945-04-26',  null),

    (300, 45, 5, '1945-04-30', '1945-08-09'),
    (300, 43, 3, '1945-04-30', '1945-08-09'),
    
    (301, 45, 5, '1945-07-17',  null),
    (301, 43, 3, '1945-07-17',  null);
    
    
    
/* радары */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (282, 1, 1, '1944-07-31',  null),
    (282, 2, 1, '1944-07-31',  null), /* неточные данные */
    
    (283, 1, 1, '1944-08-16', '1945-07-30'),
    (283, 2, 1, '1944-08-16', '1945-07-30'), /* неточная дата начала */
    
    (284, 1, 1, '1944-10-21',  null),
    (284, 2, 1, '1944-10-21',  null), /* неточные данные */
    
    (285, 1, 1, '1944-10-23', '1945-02-23'),
    (285, 2, 1, '1944-10-23', '1945-02-23'),
    
    (286, 1, 1, '1944-12-02', '1945-05-27'),
    (286, 2, 1, '1944-12-02', '1945-05-27'), /* неточные данные */
    
    (287, 1, 1, '1944-12-16', '1945-08-09'),
    (287, 2, 1, '1944-12-16', '1945-08-09'), /* неточные данные */
    
    (288, 1, 1, '1944-12-30',  null),
    
    (289, 1, 1, '1944-12-31',  null),
    (289, 2, 1, '1944-12-31',  null), /* неточные данные */
    
    (290, 1, 1, '1945-01-10',  null),
    (290, 2, 1, '1945-01-10',  null), /* неточные данные */

    (291, 1, 1, '1945-01-25', '1945-06-25'),
    (291, 2, 1, '1945-01-25', '1945-06-25'), /* неточные данные */
    
    (292, 1, 1, '1945-02-21', '1945-06-02'),
    (292, 2, 1, '1945-02-21', '1945-06-02'), /* неточные данные */
    
    (293, 1, 1, '1945-02-07',  null),
    (293, 2, 1, '1945-02-07',  null), /* неточные данные */
    
    (294, 1, 1, '1945-03-15',  null),
    (294, 2, 1, '1945-03-15',  null), /* неточные данные */
    
    (295, 1, 1, '1945-03-20',  null),
    (295, 2, 1, '1945-03-20',  null), /* неточные данные */
    
    (296, 1, 1, '1945-04-08',  null),
    
    (297, 1, 1, '1945-03-30',  null),
    (297, 2, 1, '1945-03-30',  null), /* неточные данные */
    
    (298, 1, 1, '1945-03-24',  null),
    (298, 2, 1, '1945-03-24',  null), /* неточные данные */
    
    (299, 1, 1, '1945-04-26',  null),
    (299, 2, 1, '1945-04-26',  null), /* неточные данные */

    (300, 1, 1, '1945-04-30', '1945-08-09'),
    (300, 2, 1, '1945-04-30', '1945-08-09'), /* неточные данные */
    
    (301, 1, 1, '1945-07-17',  null),
    (301, 2, 1, '1945-07-17',  null); /* неточные данные */
    
    
    
/* прожектора */
/* неточные данные */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (282, 32, 1, '1944-07-31',  null),
    (283, 32, 1, '1944-08-16', '1945-07-30'),
    (284, 32, 1, '1944-10-21',  null),
    (285, 32, 1, '1944-10-23', '1945-02-23'),
    (286, 32, 1, '1944-12-02', '1945-05-27'),
    (287, 32, 1, '1944-12-16', '1945-08-09'),
    (288, 32, 1, '1944-12-30',  null),
    (289, 32, 1, '1944-12-31',  null),
    (290, 32, 1, '1945-01-10',  null),
    (291, 32, 1, '1945-01-25', '1945-06-25'),
    (292, 32, 1, '1945-02-21', '1945-06-02'),
    (293, 32, 1, '1945-02-07',  null),
    (294, 32, 1, '1945-03-15',  null),
    (295, 32, 1, '1945-03-20',  null),
    (296, 32, 1, '1945-04-08',  null),
    (297, 32, 1, '1945-03-30',  null),
    (298, 32, 1, '1945-03-24',  null),
    (299, 32, 1, '1945-04-26',  null),
    (300, 32, 1, '1945-04-30', '1945-08-09'),
    (301, 32, 1, '1945-07-17',  null);
    
    
    
/*
    сонар тип 93 (или тип 3 мод 2)
    гидрофон тип 93
*/
    
        
        
/* бомбометы */
insert into ship_throwers
    (ship_id, throwers_id, amount, date_from, date_to)
    values
    (282, 6, 16, '1944-07-31',  null),
    (283, 6, 16, '1944-08-16', '1945-07-30'),
    (284, 6, 16, '1944-10-21',  null),
    (285, 6, 16, '1944-10-23', '1945-02-23'),
    (286, 6, 16, '1944-12-02', '1945-05-27'),
    (287, 6, 16, '1944-12-16', '1945-08-09'),
    (288, 6, 16, '1944-12-30',  null),
    (289, 6, 16, '1944-12-31',  null),
    (290, 6, 16, '1945-01-10',  null),
    (291, 6, 16, '1945-01-25', '1945-06-25'),
    (292, 6, 16, '1945-02-21', '1945-06-02'),
    (293, 6, 16, '1945-02-07',  null),
    (294, 6, 16, '1945-03-15',  null),
    (295, 6, 16, '1945-03-20',  null),
    (296, 6, 16, '1945-04-08',  null),
    (297, 6, 16, '1945-03-30',  null),
    (298, 6, 16, '1945-03-24',  null),
    (299, 6, 16, '1945-04-26',  null),
    (300, 6, 16, '1945-04-30', '1945-08-09'),
    (301, 6, 16, '1945-07-17',  null);

