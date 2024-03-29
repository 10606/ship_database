
/*
    302 - Мацу
    303 - Таке
    304 - Уме 
    305 - Момо
    306 - Кува
    307 - Кири
    308 - Суги
    309 - Маки
    310 - Моми
    311 - Каси
    312 - Кая 
    313 - Нара
    314 - Сакура
    315 - Янаги
    316 - Цубаки
    319 - Хиноки
    320 - Каеде
    321 - Кеяки
*/


/* характеристики */
insert into general
    (ship_id, date_from, date_to, 
     displacement_standart, displacement_full, 
     length, width, draft,
     crew, speed_max, speed_cruise, range)
    values
    (302, '1944-04-28', '1944-08-04',   1262, 1687,  100.0, 9.35, 3.3,   211, 27.8,  18, 5600),
    (303, '1944-06-16',  null,          1262, 1687,  100.0, 9.35, 3.3,   211, 27.8,  18, 5600),
    (304, '1944-06-28', '1945-01-31',   1262, 1687,  100.0, 9.35, 3.3,   211, 27.8,  18, 5600),
    (305, '1944-06-10', '1944-12-15',   1262, 1687,  100.0, 9.35, 3.3,   211, 27.8,  18, 5600),
    (306, '1944-07-15', '1944-12-03',   1262, 1687,  100.0, 9.35, 3.3,   211, 27.8,  18, 5600),
    (307, '1944-08-14',  null,          1262, 1687,  100.0, 9.35, 3.3,   211, 27.8,  18, 5600),
    (308, '1944-08-25',  null,          1262, 1687,  100.0, 9.35, 3.3,   211, 27.8,  18, 5600),
    (309, '1944-08-10',  null,          1262, 1687,  100.0, 9.35, 3.3,   211, 27.8,  18, 5600),
    (310, '1944-09-03', '1945-01-05',   1262, 1687,  100.0, 9.35, 3.3,   211, 27.8,  18, 5600),
    (311, '1944-09-30',  null,          1262, 1687,  100.0, 9.35, 3.3,   211, 27.8,  18, 5600),
    (312, '1944-09-30',  null,          1262, 1687,  100.0, 9.35, 3.3,   211, 27.8,  18, 5600),
    (313, '1944-11-26',  null,          1262, 1687,  100.0, 9.35, 3.3,   211, 27.8,  18, 5600),
    (314, '1944-11-25', '1945-07-11',   1262, 1687,  100.0, 9.35, 3.3,   211, 27.8,  18, 5600),
    (315, '1945-01-08',  null,          1262, 1687,  100.0, 9.35, 3.3,   211, 27.8,  18, 5600),
    (316, '1944-11-30',  null,          1262, 1687,  100.0, 9.35, 3.3,   211, 27.8,  18, 5600),
    (319, '1944-09-30', '1945-01-07',   1262, 1687,  100.0, 9.35, 3.3,   211, 27.8,  18, 5600),
    (320, '1944-10-30',  null,          1262, 1687,  100.0, 9.35, 3.3,   211, 27.8,  18, 5600),
    (321, '1944-12-15',  null,          1262, 1687,  100.0, 9.35, 3.3,   211, 27.8,  18, 5600);
 
 
    
/* модернизации */
insert into ship_event_list
    (class_id, ship_id, date_from, date_to, description)
    values
    (1, 302, '1944-06-01', '1944-06-05', 'Куре'),
    
    (0, 303, '1944-08-01', '1944-08-31',  null), /* неточные даты */
    (7, 303, '1944-12-03', '1944-12-03', 'торпедировал и потопил DD-695 Cooper, поврежден огнем DD-695, DD-692 Allen M. Sumner, DD-693 Moale'),
    (1, 303, '1944-12-15', '1944-12-31', 'Модзи'), /* неточные даты */
    (0, 303, '1945-01-31', '1945-03-01',  null), /* неточные даты */
    (0, 303, '1945-05-01', '1945-06-30',  null), /* неточные даты */

    (7, 304, '1944-12-07', '1944-12-07', 'поврежден авиацией'),
    (7, 304, '1944-12-15', '1944-12-15', 'Манила, поврежден авиацией'),
    (1, 304, '1944-12-20', '1944-12-31', 'Гонг-Конг'), /* неточные даты */

    (7, 305, '1944-12-07', '1944-12-07', 'подрезал рифы'),

    (1, 306, '1944-09-17', '1944-09-18', 'Куре'),
    (1, 306, '1944-10-29', '1944-11-08', 'Куре'),

    (7, 307, '1944-12-12', '1944-12-12', 'поврежден авиацией'),
    (1, 307, '1945-01-10', '1945-01-22', 'Куре'),
    (0, 307, '1945-05-01', '1945-06-30',  null), /* неточные даты */

    (1, 308, '1945-02-07', '1945-02-15', 'Сасебо'), /* неточная дата окончания */
    (0, 308, '1945-05-01', '1945-06-30',  null), /* неточные даты */

    (7, 309, '1944-12-09', '1944-12-09', 'около Мешимы, торпедирован SS-390 Plaice'),
    (0, 309, '1944-12-15', '1944-12-31', 'Сасебо'), /* неточные даты */
    (0, 309, '1945-05-01', '1945-06-30',  null), /* неточные даты */

    (1, 311, '1945-02-07', '1945-02-15', 'Сасебо'), /* неточная дата окончания */
    (0, 311, '1945-05-01', '1945-06-30',  null), /* неточные даты */
    (7, 311, '1945-07-28', '1945-07-28', 'Куре, поврежден авиацией'),

    (7, 312, '1944-12-24', '1944-12-27', 'незначительно поврежден авиацией'),
    (1, 312, '1945-01-13', '1945-01-31', 'Майдзуру'), /* неточная дата окончания */
    (0, 312, '1945-05-01', '1945-06-30',  null), /* неточные даты */

    (7, 313, '1945-06-30', '1945-06-30', 'в проливе Симоносеки, подорвался на мине'),

    (7, 314, '1945-05-25', '1945-05-25', 'в проливе Симоносеки, подорвался на мине'),

    (7, 315, '1945-07-14', '1945-07-14', 'у Оминато, поврежден авиацией, выбросился на берег'),

    (7, 316, '1945-04-10', '1945-04-10', 'нижнее течение Янцзы, подорвался на мине'),
    (1, 316, '1945-06-01', '1945-06-15', 'Модзи'), /* неточные даты */
    (7, 316, '1945-07-24', '1945-07-24', 'около Окаямы, поврежден авиацией'),

    (7, 319, '1945-01-05', '1945-01-06', 'попадание торпеды с торпедоносца TF-77.4.1'),

    (7, 320, '1945-01-30', '1945-01-31', '20 миль .жнее Формозы, поврежден авиацией (B-25 и P-38), попадание бомбы'),
    (1, 320, '1945-02-10', '1945-02-15', 'Такао'), /* неточные даты */
    (1, 320, '1945-02-23', '1945-02-28', 'Куре'), /* неточная дата окончания */
    (0, 320, '1945-05-01', '1945-06-30',  null); /* неточные даты */

    
    
/* крупнокалиберная ПВО */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (302, 10, 1, '1944-04-28', '1944-08-04'),
    (302, 11, 1, '1944-04-28', '1944-08-04'),

    (303, 10, 1, '1944-06-16',  null),
    (303, 11, 1, '1944-06-16',  null),

    (304, 10, 1, '1944-06-28', '1945-01-31'),
    (304, 11, 1, '1944-06-28', '1945-01-31'),

    (305, 10, 1, '1944-06-10', '1944-12-15'),
    (305, 11, 1, '1944-06-10', '1944-12-15'),

    (306, 10, 1, '1944-07-15', '1944-12-03'),
    (306, 11, 1, '1944-07-15', '1944-12-03'),

    (307, 10, 1, '1944-08-14',  null),
    (307, 11, 1, '1944-08-14',  null),

    (308, 10, 1, '1944-08-25',  null),
    (308, 11, 1, '1944-08-25',  null),

    (309, 10, 1, '1944-08-10',  null),
    (309, 11, 1, '1944-08-10',  null),

    (310, 10, 1, '1944-09-03', '1945-01-05'),
    (310, 11, 1, '1944-09-03', '1945-01-05'),

    (311, 10, 1, '1944-09-30',  null),
    (311, 11, 1, '1944-09-30',  null),

    (312, 10, 1, '1944-09-30',  null),
    (312, 11, 1, '1944-09-30',  null),

    (313, 10, 1, '1944-11-26',  null),
    (313, 11, 1, '1944-11-26',  null),

    (314, 10, 1, '1944-11-25', '1945-07-11'),
    (314, 11, 1, '1944-11-25', '1945-07-11'),

    (315, 10, 1, '1945-01-08',  null),
    (315, 11, 1, '1945-01-08',  null),

    (316, 10, 1, '1944-11-30',  null),
    (316, 11, 1, '1944-11-30',  null),

    (319, 10, 1, '1944-09-30', '1945-01-07'),
    (319, 11, 1, '1944-09-30', '1945-01-07'),

    (320, 10, 1, '1944-10-30',  null),
    (320, 11, 1, '1944-10-30',  null),

    (321, 10, 1, '1944-12-15',  null),
    (321, 11, 1, '1944-12-15',  null);

    
    
/* малокалиберная ПВО */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (302, 45,  4, '1944-04-28', '1944-08-04'),
    (302, 43,  8, '1944-04-28', '1944-08-04'),

    (303, 45,  4, '1944-06-16',  null),
    (303, 43,  8, '1944-06-16', '1944-08-01'),
    (303, 43, 12, '1944-08-31', '1945-01-31'),
    (303, 43, 29, '1945-03-01', '1945-05-01'),
    (303, 43, 25, '1945-06-30',  null),

    (304, 45,  4, '1944-06-28', '1945-01-31'),
    (304, 43, 12, '1944-06-28', '1945-01-31'),

    (305, 45,  4, '1944-06-10', '1944-12-15'),
    (305, 43,  8, '1944-06-10', '1944-12-15'),

    (306, 45,  4, '1944-07-15', '1944-12-03'),
    (306, 43, 12, '1944-07-15', '1944-12-03'),

    (307, 45,  4, '1944-08-14',  null),
    (307, 43,  8, '1944-08-14', '1945-05-01'),
    (307, 43, 25, '1945-06-30',  null), /* неточные данные */

    (308, 45,  4, '1944-08-25',  null),
    (308, 43, 12, '1944-08-25', '1945-05-01'),
    (308, 43, 25, '1945-06-30',  null), /* неточные данные */

    (309, 45,  4, '1944-08-10',  null),
    (309, 43,  8, '1944-08-10', '1945-05-01'),
    (309, 43, 25, '1945-06-30',  null), /* неточные данные */

    (310, 45,  4, '1944-09-03', '1945-01-05'),
    (310, 43, 12, '1944-09-03', '1945-01-05'),

    (311, 45,  4, '1944-09-30',  null),
    (311, 43, 12, '1944-09-30', '1945-05-01'),
    (311, 43, 25, '1945-06-30',  null), /* неточные данные */

    (312, 45,  4, '1944-09-30',  null),
    (312, 43, 12, '1944-09-30', '1945-05-01'),
    (312, 43, 25, '1945-06-30',  null), /* неточные данные */

    (313, 45,  4, '1944-11-26',  null),
    (313, 43, 12, '1944-11-26',  null),

    (314, 45,  4, '1944-11-25', '1945-07-11'),
    (314, 43, 12, '1944-11-25', '1945-07-11'),

    (315, 45,  4, '1945-01-08',  null),
    (315, 43, 12, '1945-01-08',  null),

    (316, 45,  4, '1944-11-30',  null),
    (316, 43, 12, '1944-11-30',  null),

    (319, 45,  4, '1944-09-30', '1945-01-07'),
    (319, 43, 12, '1944-09-30', '1945-01-07'),

    (320, 45,  4, '1944-10-30',  null),
    (320, 43, 12, '1944-10-30', '1945-05-01'),
    (320, 43, 25, '1945-06-30',  null), /* неточные данные */

    (321, 45,  4, '1944-12-15',  null),
    (321, 43, 12, '1944-12-15',  null);
    
    
    
/* торпедные аппараты */
insert into ship_torpedo_tubes
    (ship_id, tube_id, amount, date_from, date_to)
    values
    (302, 15, 1, '1944-04-28', '1944-08-04'),

    (303, 15, 1, '1944-06-16',  null),
    /* с 06.1945 Кайтен */

    (304, 15, 1, '1944-06-28', '1945-01-31'),
    (305, 15, 1, '1944-06-10', '1944-12-15'),
    (306, 15, 1, '1944-07-15', '1944-12-03'),

    (307, 15, 1, '1944-08-14',  null),
    /* с 06.1945 Кайтен */

    (308, 15, 1, '1944-08-25',  null),
    /* с 06.1945 Кайтен */
    
    (309, 15, 1, '1944-08-10',  null),
    /* с 06.1945 Кайтен */
    
    (310, 15, 1, '1944-09-03', '1945-01-05'),

    (311, 15, 1, '1944-09-30',  null),
    /* с 06.1945 Кайтен */

    (312, 15, 1, '1944-09-30',  null),
    /* с 06.1945 Кайтен */

    (313, 15, 1, '1944-11-26',  null),
    (314, 15, 1, '1944-11-25', '1945-07-11'),
    (315, 15, 1, '1945-01-08',  null),
    (316, 15, 1, '1944-11-30',  null),
    (319, 15, 1, '1944-09-30', '1945-01-07'),

    (320, 15, 1, '1944-10-30',  null),
    /* с 06.1945 Кайтен */

    (321, 15, 1, '1944-12-15',  null);

    
    
/* радары */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (302,  1, 1, '1944-04-28', '1944-08-04'),
    (302, 26, 1, '1944-04-28', '1944-08-04'),

    (303,  1, 1, '1944-06-16',  null),
    (303, 26, 1, '1944-06-16',  null),

    (304,  1, 1, '1944-06-28', '1945-01-31'),
    (304, 26, 1, '1944-06-28', '1945-01-31'),

    (305,  1, 1, '1944-06-10', '1944-12-15'),
    (305, 26, 1, '1944-06-10', '1944-12-15'),

    (306,  1, 1, '1944-07-15', '1944-12-03'),
    (306, 26, 1, '1944-07-15', '1944-12-03'),

    (307,  1, 1, '1944-08-14',  null),
    (307, 26, 1, '1944-08-14',  null),

    (308,  1, 1, '1944-08-25',  null),
    (308, 26, 1, '1944-08-25',  null),

    (309,  1, 1, '1944-08-10',  null),
    (309,  2, 1, '1944-12-31',  null), /* неточная дата начала */
    (309, 26, 1, '1944-08-10',  null),

    (310,  1, 1, '1944-09-03', '1945-01-05'),
    (310,  2, 1, '1944-09-03', '1945-01-05'),
    (310, 26, 1, '1944-09-03', '1945-01-05'),

    (311,  1, 1, '1944-09-30',  null),
    (311,  2, 1, '1944-09-30',  null),
    (311, 26, 1, '1944-09-30',  null),

    (312,  1, 1, '1944-09-30',  null),
    (312,  2, 1, '1944-09-30',  null),
    (312, 26, 1, '1944-09-30',  null),

    (313,  1, 1, '1944-11-26',  null),
    (313,  2, 1, '1944-11-26',  null),
    (313, 26, 1, '1944-11-26',  null),

    (314,  1, 1, '1944-11-25', '1945-07-11'),
    (314,  2, 1, '1944-11-25', '1945-07-11'),
    (314, 26, 1, '1944-11-25', '1945-07-11'),

    (315,  1, 1, '1945-01-08',  null),
    (315,  2, 1, '1945-01-08',  null),
    (315, 26, 1, '1945-01-08',  null),

    (316,  1, 1, '1944-11-30',  null),
    (316,  2, 1, '1944-11-30',  null),
    (316, 26, 1, '1944-11-30',  null),

    (319,  1, 1, '1944-09-30', '1945-01-07'),
    (319,  2, 1, '1944-09-30', '1945-01-07'),
    (319, 26, 1, '1944-09-30', '1945-01-07'),

    (320,  1, 1, '1944-10-30',  null),
    (320,  2, 1, '1944-10-30',  null),
    (320, 26, 1, '1944-10-30',  null),

    (321,  1, 1, '1944-12-15',  null),
    (321,  2, 1, '1944-12-15',  null),
    (321, 26, 1, '1944-12-15',  null);
    
    
    
/* прожектора */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (302, 32, 1, '1944-04-28', '1944-08-04'),
    (303, 32, 1, '1944-06-16',  null),
    (304, 32, 1, '1944-06-28', '1945-01-31'),
    (305, 32, 1, '1944-06-10', '1944-12-15'),
    (306, 32, 1, '1944-07-15', '1944-12-03'),
    (307, 32, 1, '1944-08-14',  null),
    (308, 32, 1, '1944-08-25',  null),
    (309, 32, 1, '1944-08-10',  null),
    (310, 32, 1, '1944-09-03', '1945-01-05'),
    (311, 32, 1, '1944-09-30',  null),
    (312, 32, 1, '1944-09-30',  null),
    (313, 32, 1, '1944-11-26',  null),
    (314, 32, 1, '1944-11-25', '1945-07-11'),
    (315, 32, 1, '1945-01-08',  null),
    (316, 32, 1, '1944-11-30',  null),
    (319, 32, 1, '1944-09-30', '1945-01-07'),
    (320, 32, 1, '1944-10-30',  null),
    (321, 32, 1, '1944-12-15',  null);


    
/*
    сонар тип 93
    гидрофон тип 93 мод 2
*/
        
        
        
/* бомбометы */
insert into ship_throwers
    (ship_id, throwers_id, amount, date_from, date_to)
    values
    (302, 0, 2, '1944-04-28', '1944-08-04'),
    (303, 0, 2, '1944-06-16', '1945-05-01'),
    (304, 0, 2, '1944-06-28', '1945-01-31'),
    (305, 0, 2, '1944-06-10', '1944-12-15'),
    (306, 0, 2, '1944-07-15', '1944-12-03'),
    (307, 0, 2, '1944-08-14', '1945-05-01'),
    (308, 0, 2, '1944-08-25', '1945-05-01'),
    (309, 0, 2, '1944-08-10', '1945-05-01'),
    (310, 0, 2, '1944-09-03', '1945-01-05'),
    (311, 0, 2, '1944-09-30', '1945-05-01'),
    (312, 0, 2, '1944-09-30', '1945-05-01'),
    (313, 0, 2, '1944-11-26',  null),
    (314, 0, 2, '1944-11-25', '1945-07-11'),
    (315, 0, 2, '1945-01-08',  null),
    (316, 0, 2, '1944-11-30',  null),
    (319, 0, 2, '1944-09-30', '1945-01-07'),
    (320, 0, 2, '1944-10-30', '1945-05-01'),
    (321, 0, 2, '1944-12-15',  null);
        
        
        
/* бомбоскаты */
insert into ship_throwers
    (ship_id, throwers_id, amount, date_from, date_to)
    values
    (302, 2, 2, '1944-04-28', '1944-08-04'),
    (303, 2, 2, '1944-06-16',  null),
    (304, 2, 2, '1944-06-28', '1945-01-31'),
    (305, 2, 2, '1944-06-10', '1944-12-15'),
    (306, 2, 2, '1944-07-15', '1944-12-03'),
    (307, 2, 2, '1944-08-14',  null),
    (308, 2, 2, '1944-08-25',  null),
    (309, 2, 2, '1944-08-10',  null),
    (310, 2, 2, '1944-09-03', '1945-01-05'),
    (311, 2, 2, '1944-09-30',  null),
    (312, 2, 2, '1944-09-30',  null),
    (313, 2, 2, '1944-11-26',  null),
    (314, 2, 2, '1944-11-25', '1945-07-11'),
    (315, 2, 2, '1945-01-08',  null),
    (316, 2, 2, '1944-11-30',  null),
    (319, 2, 2, '1944-09-30', '1945-01-07'),
    (320, 2, 2, '1944-10-30',  null),
    (321, 2, 2, '1944-12-15',  null);
        
        
