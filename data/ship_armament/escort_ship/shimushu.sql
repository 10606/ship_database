
/*
    256 - Симусю  
    257 - Хатидзе 
    258 - Кунасири
    259 - Исигаки 
*/


/* характеристики */
insert into general
    (ship_id, date_from, date_to, 
     displacement_standart, displacement_full, 
     length, width, draft,
     crew, speed_max, speed_cruise, range)
    values
    (256, '1940-06-30',  null,          860, 1004,  77.72, 9.1, 3.05,   150, 19.7,  16, 12870),
    (257, '1941-03-31',  null,          860, 1004,  77.72, 9.1, 3.05,   150, 19.7,  16, 12870),
    (258, '1940-10-03',  null,          860, 1004,  77.72, 9.1, 3.05,   150, 19.7,  16, 12870),
    (259, '1941-02-15', '1944-05-31',   860, 1004,  77.72, 9.1, 3.05,   150, 19.7,  16, 12870);
 
 
    
/* модернизации */
insert into ship_event_list
    (class_id, ship_id, date_from, date_to, description)
    values
    (1, 256, '1942-08-20', '1942-09-17', 'Сингапур'),
    (0, 256, '1942-12-27', '1943-01-12', 'Сингапур'),
    (0, 256, '1944-01-13', '1944-01-23', 'Сасебо'),
    (1, 256, '1944-05-03', '1944-05-19', 'Сасебо'),
    (0, 256, '1944-09-05', '1944-09-26', 'Майдзуру'),
    (7, 256, '1944-11-25', '1944-11-25', 'торпедирован SS-25 Haddo'),
    (1, 256, '1944-11-26', '1944-12-04', 'Манила'),
    (1, 256, '1944-12-07', '1944-12-31', 'Мако'), /* неточная дата окончания */
    (1, 256, '1945-01-20', '1945-04-03', 'Майдзуру'),

    (0, 257, '1942-12-19', '1943-01-25', 'Оминато'),
    (0, 257, '1943-10-13', '1943-10-18', 'Оминато'),
    (1, 257, '1944-01-04', '1944-02-18', 'Оминато'),
    (0, 257, '1944-11-22', '1945-01-08', 'Оминато'),

    (0, 258, '1943-03-28', '1943-04-10', 'Оминато'),
    (0, 258, '1943-10-30', '1943-12-08', 'Оминато'),
    (1, 258, '1944-02-13', '1944-03-08', 'Оминато'),
    (7, 258, '1944-07-27', '1944-07-27', 'западнее Парамуширо, поврежден (вероятно подорвался на мине)'),
    (0, 258, '1944-08-02', '1944-08-30', 'Оминато'),
    (1, 258, '1945-03-01', '1945-03-31', 'Оминато'), /* неточные даты */

    (7, 259, '1942-07-17', '1942-07-17', 'Онекотанские проливы, сел на мель'),
    (1, 259, '1942-08-25', '1942-09-06', 'Оминато'),
    (0, 259, '1943-02-21', '1943-03-26', 'Оминато'),
    (0, 259, '1943-12-01', '1944-01-09', 'Оминато');

    
    
/* орудия ГК */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (256, 0, 3, '1940-06-30',  null),
    (257, 0, 3, '1941-03-31',  null),
    (258, 0, 3, '1940-10-03',  null),
    (259, 0, 3, '1941-02-15', '1944-05-31');
        
        
        
/* ПВО */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (256, 44, 2, '1940-06-30', '1944-09-05'), /* неточная дата окончания */
    (256, 45, 5, '1944-09-26',  null), /* неточная дата начала */

    (257, 44, 2, '1941-03-31', '1944-11-22'), /* неточная дата окончания */
    (257, 45, 5, '1945-01-08',  null), /* неточная дата начала */

    (258, 44, 2, '1940-10-03', '1944-08-02'), /* неточная дата окончания */
    (258, 45, 5, '1944-08-30',  null), /* неточная дата начала */

    (259, 44, 2, '1941-02-15', '1944-05-31'); /* неточная дата окончания */
        
        
        
/* радары */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (256, 1, 1, '1944-01-23',  null), /* тип 22 */ /* неточная дата начала */
    (256, 2, 1, '1944-01-23',  null), /* тип 13 */ /* неточная дата начала */

    (257, 1, 1, '1943-10-18',  null), /* тип 22 */ /* неточная дата начала */
    (257, 2, 1, '1943-10-18',  null), /* тип 13 */

    (258, 1, 1, '1943-12-08',  null), /* тип 22 */ /* неточная дата начала */
    (258, 2, 1, '1943-12-08',  null), /* тип 13 */ /* неточная дата начала */

    (259, 1, 1, '1944-01-09', '1944-05-31'), /* тип 22 */ /* неточные данные */
    (259, 2, 1, '1944-01-09', '1944-05-31'); /* тип 13 */ /* неточные данные */
    
    
    
/* прожектора */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (256, 32, 1, '1940-06-30',  null),
    (257, 32, 1, '1941-03-31',  null),
    (258, 32, 1, '1940-10-03',  null),
    (259, 32, 1, '1941-02-15', '1944-05-31');
        
    
    
/*
    Симусю с 12.01.1943
        сонар тип 93 мод 1
*/
    
        
        
/* бомбометы */
insert into ship_throwers
    (ship_id, throwers_id, amount, date_from, date_to)
    values
    (256, 0, 2, '1940-06-30', '1942-12-27'), /* неточная дата окончания */
    (256, 0, 1, '1943-01-12',  null), /* неточная дата начала */
    (256, 2, 2, '1943-01-12',  null), /* неточная дата начала */

    (257, 0, 2, '1941-03-31', '1942-12-19'), /* неточная дата окончания */
    (257, 0, 1, '1943-01-25',  null), /* неточная дата начала */
    (257, 2, 2, '1943-01-25',  null), /* неточная дата начала */

    (258, 0, 2, '1940-10-03', '1943-03-28'), /* неточная дата окончания */
    (258, 0, 1, '1943-04-10',  null), /* неточная дата начала */
    (258, 2, 2, '1943-04-10',  null), /* неточная дата начала */

    (259, 0, 2, '1941-02-15', '1943-02-21'), /* неточная дата окончания */
    (259, 0, 1, '1943-03-26', '1944-05-31'), /* неточная дата начала */
    (259, 2, 2, '1943-03-26', '1944-05-31'); /* неточная дата начала */
    
    
