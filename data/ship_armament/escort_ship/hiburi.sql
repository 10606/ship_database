
/*
    334 - Хибури
    335 - Дайто 
    336 - Сенан 
    337 - Куме  
    338 - Икуна 
    339 - Сисака
    340 - Сакито
    341 - Мокуто
    342 - Хабуто
*/


/* характеристики */
insert into general
    (ship_id, date_from, date_to, 
     displacement_standart, displacement_full, 
     length, width, draft,
     crew, speed_max, speed_cruise, range)
    values
    (334, '1944-06-27', '1944-08-22',    955, null,  78.77, 9.1, 3.06,  150, 19.5,  16, 9300),
    (335, '1944-08-07',  null,           955, null,  78.77, 9.1, 3.06,  150, 19.5,  16, 9300),
    (336, '1944-07-13', '1945-02-25',    955, null,  78.77, 9.1, 3.06,  150, 19.5,  16, 9300),
    (337, '1944-09-25', '1945-01-28',    955, null,  78.77, 9.1, 3.06,  150, 19.5,  16, 9300),
    (338, '1944-10-15',  null,           955, null,  78.77, 9.1, 3.06,  150, 19.5,  16, 9300),
    (339, '1944-12-15',  null,           955, null,  78.77, 9.1, 3.06,  150, 19.5,  16, 9300),
    (340, '1945-01-10',  null,           955, null,  78.77, 9.1, 3.06,  150, 19.5,  16, 9300),
    (341, '1945-02-19', '1945-04-04',    955, null,  78.77, 9.1, 3.06,  150, 19.5,  16, 9300),
    (342, '1945-04-07',  null,           955, null,  78.77, 9.1, 3.06,  150, 19.5,  16, 9300);
 
 
    
/* модернизации */
insert into ship_event_list
    (class_id, ship_id, date_from, date_to, description)
    values
    (1, 335, '1944-11-06', '1944-11-10', 'Сасебо'),
    (1, 335, '1945-02-12', '1945-03-08', 'Сасебо'),

    (1, 336, '1944-11-03', '1944-11-13', 'Сасебо'),
    (1, 336, '1945-01-09', '1945-01-24', 'Сасебо'),

    (1, 337, '1945-01-09', '1945-01-24', 'Сасебо'),

    (1, 338, '1945-02-16', '1945-02-28', 'Сасебо'),
    (7, 338, '1945-04-10', '1945-04-10', '33°38'' с.ш. 129°13'' в.д., торпедирован SS-291 Crevalle'),
    (1, 338, '1945-04-12', '1945-04-28', 'Сасебо'),
    (1, 338, '1945-04-30', '1945-06-15', 'Нагасаки'),

    (1, 339, '1945-04-21', '1945-05-06', 'Йокосука'),
    (1, 339, '1945-05-20', '1945-06-24', 'Йокосука'),

    (7, 340, '1945-06-27', '1945-06-27', 'около Пусана 34°13'' с.ш. 126°36'' в.д., подорвался на мине, выставленной B-29'),
    (1, 340, '1945-06-28', '1945-08-31', 'Сасебо'), /* неточные даты */
    (7, 340, '1945-08-15', '1945-08-15', 'извещен о прекращении боевых действий'),

    (7, 342, '1945-06-10', '1945-06-10', '2.5км к северу Каннонзаки, подорвался на мине'),
    (1, 342, '1945-06-11', '1945-06-30', 'Йокосука'); /* неточная дата окончания */

    
    
/* орудия ГК */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (334, 8, 1, '1944-06-27', '1944-08-22'),
    (334, 9, 1, '1944-06-27', '1944-08-22'),

    (335, 8, 1, '1944-08-07',  null),
    (335, 9, 1, '1944-08-07',  null),

    (336, 8, 1, '1944-07-13', '1945-02-25'),
    (336, 9, 1, '1944-07-13', '1945-02-25'),

    (337, 8, 1, '1944-09-25', '1945-01-28'),
    (337, 9, 1, '1944-09-25', '1945-01-28'),

    (338, 8, 1, '1944-10-15',  null),
    (338, 9, 1, '1944-10-15',  null),

    (339, 8, 1, '1944-12-15',  null),
    (339, 9, 1, '1944-12-15',  null),

    (340, 8, 1, '1945-01-10',  null),
    (340, 9, 1, '1945-01-10',  null),

    (341, 8, 1, '1945-02-19', '1945-04-04'),
    (341, 9, 1, '1945-02-19', '1945-04-04'),

    (342, 8, 1, '1945-04-07',  null),
    (342, 9, 1, '1945-04-07',  null);
        
        
        
/* ПВО */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (334, 45, 5, '1944-06-27', '1944-08-22'),
    (334, 43, 1, '1944-06-27', '1944-08-22'),

    (335, 45, 5, '1944-08-07',  null),
    (335, 43, 1, '1944-08-07',  null),

    (336, 45, 5, '1944-07-13', '1945-02-25'),
    (336, 43, 1, '1944-07-13', '1945-02-25'),

    (337, 45, 5, '1944-09-25', '1945-01-28'),
    (337, 43, 1, '1944-09-25', '1945-01-28'),

    (338, 45, 5, '1944-10-15',  null),
    (338, 43, 1, '1944-10-15',  null),

    (339, 45, 5, '1944-12-15',  null),
    (339, 43, 1, '1944-12-15',  null),

    (340, 45, 5, '1945-01-10',  null),
    (340, 43, 1, '1945-01-10',  null),

    (341, 45, 5, '1945-02-19', '1945-04-04'),
    (341, 43, 1, '1945-02-19', '1945-04-04'),

    (342, 45, 5, '1945-04-07',  null),
    (342, 43, 1, '1945-04-07',  null);
        
        
        
/* радары */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (334, 1, 1, '1944-06-27', '1944-08-22'),

    (335, 1, 1, '1944-08-07',  null),

    (336, 1, 1, '1944-07-13', '1945-02-25'),

    (337, 1, 1, '1944-09-25', '1945-01-28'),
    
    (338, 1, 1, '1944-10-15',  null),
    (338, 2, 1, '1944-10-15',  null),

    (339, 1, 1, '1944-12-15',  null),
    (339, 2, 1, '1944-12-15',  null),

    (340, 1, 1, '1945-01-10',  null),
    (340, 2, 1, '1945-01-10',  null),

    (341, 1, 1, '1945-02-19', '1945-04-04'),
    (341, 2, 1, '1945-02-19', '1945-04-04'),

    (342, 1, 1, '1945-04-07',  null),
    (342, 2, 1, '1945-04-07',  null);
    
    
    
/* прожектора */
/* неточные данные */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (334, 32, 1, '1944-06-27', '1944-08-22'),
    (335, 32, 1, '1944-08-07',  null),
    (336, 32, 1, '1944-07-13', '1945-02-25'),
    (337, 32, 1, '1944-09-25', '1945-01-28'),
    (338, 32, 1, '1944-10-15',  null),
    (339, 32, 1, '1944-12-15',  null),
    (340, 32, 1, '1945-01-10',  null),
    (341, 32, 1, '1945-02-19', '1945-04-04'),
    (342, 32, 1, '1945-04-07',  null);
    
    
    
/*
    сонар тип 93
    гидрофон тип 93
*/
    
        
        
/* бомбометы */
insert into ship_throwers
    (ship_id, throwers_id, amount, date_from, date_to)
    values
    (334, 0, 2, '1944-06-27', '1944-08-22'),
    (335, 0, 2, '1944-08-07',  null),
    (336, 0, 2, '1944-07-13', '1945-02-25'),
    (337, 0, 3, '1944-09-25', '1945-01-28'),
    (338, 0, 3, '1944-10-15',  null),
    (339, 0, 3, '1944-12-15',  null),
    (340, 0, 3, '1945-01-10',  null),
    (341, 0, 3, '1945-02-19', '1945-04-04'),
    (342, 0, 3, '1945-04-07',  null);
    
        
        
/* бомбоскаты */
insert into ship_throwers
    (ship_id, throwers_id, amount, date_from, date_to)
    values
    (334, 2, 2, '1944-06-27', '1944-08-22'),
    (335, 2, 2, '1944-08-07',  null),
    (336, 2, 2, '1944-07-13', '1945-02-25'),
    (337, 2, 2, '1944-09-25', '1945-01-28'),
    (338, 2, 2, '1944-10-15',  null),
    (339, 2, 2, '1944-12-15',  null),
    (340, 2, 2, '1945-01-10',  null),
    (341, 2, 2, '1945-02-19', '1945-04-04'),
    (342, 2, 2, '1945-04-07',  null);
    
    
