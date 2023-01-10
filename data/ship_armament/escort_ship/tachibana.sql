
/*
    317 - Каки       
    318 - Каба       
    322 - Татибана   
    323 - Цута       
    324 - Хаги       
    325 - Сумире     
    326 - Кусуноки   
    327 - Хацудзакура
    328 - Нире       
    329 - Наси       
    330 - Сии        
    331 - Эноки      
    332 - Одаке      
    333 - Хацууме    
*/


/* характеристики */
insert into general
    (ship_id, date_from, date_to, 
     displacement_standart, displacement_full, 
     length, width, draft,
     crew, speed_max, speed_cruise, range)
    values
    (317, '1945-03-05',  null,          1350, 1580,  100.0, 9.35, 3.4,   214, 27.8,  18, 5600),
    (318, '1945-05-29',  null,          1350, 1580,  100.0, 9.35, 3.4,   214, 27.8,  18, 5600),
    (322, '1945-01-20', '1945-07-14',   1350, 1580,  100.0, 9.35, 3.4,   214, 27.8,  18, 5600),
    (323, '1945-02-08',  null,          1350, 1580,  100.0, 9.35, 3.4,   214, 27.8,  18, 5600),
    (324, '1945-03-01',  null,          1350, 1580,  100.0, 9.35, 3.4,   214, 27.8,  18, 5600),
    (325, '1945-03-26',  null,          1350, 1580,  100.0, 9.35, 3.4,   214, 27.8,  18, 5600),
    (326, '1945-04-28',  null,          1350, 1580,  100.0, 9.35, 3.4,   214, 27.8,  18, 5600),
    (327, '1945-05-18',  null,          1350, 1580,  100.0, 9.35, 3.4,   214, 27.8,  18, 5600),
    (328, '1945-01-31', '1945-06-22',   1350, 1580,  100.0, 9.35, 3.4,   214, 27.8,  18, 5600),
    (329, '1945-03-15', '1945-07-26',   1350, 1580,  100.0, 9.35, 3.4,   214, 27.8,  18, 5600),
    (330, '1945-03-13',  null,          1350, 1580,  100.0, 9.35, 3.4,   214, 27.8,  18, 5600),
    (331, '1945-03-31', '1945-06-26',   1350, 1580,  100.0, 9.35, 3.4,   214, 27.8,  18, 5600),
    (332, '1945-05-15',  null,          1350, 1580,  100.0, 9.35, 3.4,   214, 27.8,  18, 5600),
    (333, '1945-06-18',  null,          1350, 1580,  100.0, 9.35, 3.4,   214, 27.8,  18, 5600);
 
 
    
/* модернизации */
insert into ship_event_list
    (class_id, ship_id, date_from, date_to, description)
    values
    (7, 317, '1945-03-19', '1945-03-19', 'Осука, поврежден авиацией TF-38'),
    (7, 317, '1945-08-15', '1945-08-31', 'Майдзуру, передан американцам'), /* неточные даты */

    (7, 318, '1945-07-24', '1945-07-24', 'Куре, поврежден авиацией TF-38'),
    (7, 318, '1945-08-11', '1945-08-11', 'Куре, поврежден авиацией TF-38'),

    (0, 323, '1945-05-01', '1945-06-30',  null), /* неточные даты */
    
    (0, 324, '1945-05-01', '1945-06-30',  null), /* неточные даты */
    (7, 324, '1945-07-24', '1945-07-24', 'Куре, поврежден авиацией TF-38'),

    (0, 328, '1945-05-01', '1945-05-31',  null), /* неточные даты */
    (7, 328, '1945-06-22', '1945-06-22', 'Куре, поврежден B-29'),
    (1, 328, '1945-06-22', '1945-07-02', 'Куре, ремонт брошен'),

    (0, 329, '1945-05-01', '1945-05-31',  null), /* неточные даты */
    (7, 329, '1945-06-22', '1945-06-22', 'Куре, атакован B-29, повреждений нет'),

    (7, 330, '1945-06-05', '1945-06-05', 'пролив Бунго, подорвался на мине'),
    (0, 330, '1945-05-01', '1945-05-31',  null), /* неточные даты */

    (7, 333, '1945-06-26', '1945-06-26', 'около Майдзуру, подорвался на мине'),
    (7, 333, '1945-07-30', '1945-07-30', 'около затонувшего Эноки, трижды атакован авиацией');

    
    
/* крупнокалиберная ПВО */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (317, 10, 1, '1945-03-05',  null),
    (317, 11, 1, '1945-03-05',  null),
                 
    (318, 10, 1, '1945-05-29',  null),
    (318, 11, 1, '1945-05-29',  null),
                 
    (322, 10, 1, '1945-01-20', '1945-07-14'),
    (322, 11, 1, '1945-01-20', '1945-07-14'),
                 
    (323, 10, 1, '1945-02-08',  null),
    (323, 11, 1, '1945-02-08',  null),
                 
    (324, 10, 1, '1945-03-01',  null),
    (324, 11, 1, '1945-03-01',  null),
                 
    (325, 10, 1, '1945-03-26',  null),
    (325, 11, 1, '1945-03-26',  null),
                 
    (326, 10, 1, '1945-04-28',  null),
    (326, 11, 1, '1945-04-28',  null),
                 
    (327, 10, 1, '1945-05-18',  null),
    (327, 11, 1, '1945-05-18',  null),
                 
    (328, 10, 1, '1945-01-31', '1945-06-22'),
    (328, 11, 1, '1945-01-31', '1945-06-22'),
                 
    (329, 10, 1, '1945-03-15', '1945-07-26'),
    (329, 11, 1, '1945-03-15', '1945-07-26'),
                 
    (330, 10, 1, '1945-03-13',  null),
    (330, 11, 1, '1945-03-13',  null),
                 
    (331, 10, 1, '1945-03-31', '1945-06-26'),
    (331, 11, 1, '1945-03-31', '1945-06-26'),
                 
    (332, 10, 1, '1945-05-15',  null),
    (332, 11, 1, '1945-05-15',  null),
                 
    (333, 10, 1, '1945-06-18',  null),
    (333, 11, 1, '1945-06-18',  null);

    
    
/* малокалиберная ПВО */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (317, 45,  4, '1945-03-05',  null),
    (317, 43, 13, '1945-03-05',  null),
    
    (318, 45,  4, '1945-05-29',  null),
    (318, 43, 13, '1945-05-29',  null),
    
    (322, 45,  4, '1945-01-20', '1945-07-14'),
    (322, 43, 13, '1945-01-20', '1945-07-14'),
    
    (323, 45,  4, '1945-02-08',  null),
    (323, 43, 13, '1945-02-08', '1945-05-01'),
    (323, 43, 25, '1945-06-30',  null), /* неточные данные */
    
    (324, 45,  4, '1945-03-01',  null),
    (324, 43, 13, '1945-03-01', '1945-05-01'),
    (324, 43, 25, '1945-06-30',  null), /* неточные данные */
    
    (325, 45,  4, '1945-03-26',  null),
    (325, 43, 13, '1945-03-26',  null),
    
    (326, 45,  4, '1945-04-28',  null),
    (326, 43, 13, '1945-04-28',  null),
    
    (327, 45,  4, '1945-05-18',  null),
    (327, 43, 13, '1945-05-18',  null),
    
    (328, 45,  4, '1945-01-31', '1945-06-22'),
    (328, 43, 13, '1945-01-31', '1945-05-01'),
    (328, 43, 25, '1945-05-31', '1945-06-22'), /* неточные данные */
    
    (329, 45,  4, '1945-03-15', '1945-07-26'),
    (329, 43, 13, '1945-03-15', '1945-05-01'),
    (329, 43, 25, '1945-05-31', '1945-07-26'), /* неточные данные */
    
    (330, 45,  4, '1945-03-13',  null),
    (330, 43, 13, '1945-03-13', '1945-05-01'),
    (330, 43, 25, '1945-05-31',  null), /* неточные данные */
    
    (331, 45,  4, '1945-03-31', '1945-06-26'),
    (331, 43, 13, '1945-03-31', '1945-06-26'),
    
    (332, 45,  4, '1945-05-15',  null),
    (332, 43, 13, '1945-05-15',  null),
    
    (333, 45,  4, '1945-06-18',  null),
    (333, 43, 13, '1945-06-18',  null);
    
    
    
/* торпедные аппараты */
insert into ship_torpedo_tubes
    (ship_id, tube_id, amount, date_from, date_to)
    values
    (317, 15, 1, '1945-03-05',  null),
    (318, 15, 1, '1945-05-29',  null),
    (322, 15, 1, '1945-01-20', '1945-07-14'),

    (323, 15, 1, '1945-02-08',  null),
    /* с 06.1945 Кайтен */

    (324, 15, 1, '1945-03-01',  null),
    /* с 06.1945 Кайтен */

    (325, 15, 1, '1945-03-26',  null),
    (326, 15, 1, '1945-04-28',  null),
    (327, 15, 1, '1945-05-18',  null),

    (328, 15, 1, '1945-01-31', '1945-06-22'),
    /* с 06.1945 Кайтен */

    (329, 15, 1, '1945-03-15', '1945-07-26'),
    /* с 06.1945 Кайтен */

    (330, 15, 1, '1945-03-13',  null),
    /* с 06.1945 Кайтен */

    (331, 15, 1, '1945-03-31', '1945-06-26'),
    (332, 15, 1, '1945-05-15',  null),
    (333, 15, 1, '1945-06-18',  null);

    
    
/* радары */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (317,  1, 1, '1945-03-05',  null),
    (317,  2, 1, '1945-03-05',  null),
    (317, 26, 1, '1945-03-05',  null),
    
    (318,  1, 1, '1945-05-29',  null),
    (318,  2, 1, '1945-05-29',  null),
    (318, 26, 1, '1945-05-29',  null),
    
    (322,  1, 1, '1945-01-20', '1945-07-14'),
    (322,  2, 1, '1945-01-20', '1945-07-14'),
    (322, 26, 1, '1945-01-20', '1945-07-14'),
    
    (323,  1, 1, '1945-02-08',  null),
    (323,  2, 1, '1945-02-08',  null),
    (323, 26, 1, '1945-02-08',  null),
    
    (324,  1, 1, '1945-03-01',  null),
    (324,  2, 1, '1945-03-01',  null),
    (324, 26, 1, '1945-03-01',  null),
    
    (325,  1, 1, '1945-03-26',  null),
    (325,  2, 1, '1945-03-26',  null),
    (325, 26, 1, '1945-03-26',  null),
    
    (326,  1, 1, '1945-04-28',  null),
    (326,  2, 1, '1945-04-28',  null),
    (326, 26, 1, '1945-04-28',  null),
    
    (327,  1, 1, '1945-05-18',  null),
    (327,  2, 1, '1945-05-18',  null),
    (327, 26, 1, '1945-05-18',  null),
    
    (328,  1, 1, '1945-01-31', '1945-06-22'),
    (328,  2, 1, '1945-01-31', '1945-06-22'),
    (328, 26, 1, '1945-01-31', '1945-06-22'),
    
    (329,  1, 1, '1945-03-15', '1945-07-26'),
    (329,  2, 1, '1945-03-15', '1945-07-26'),
    (329, 26, 1, '1945-03-15', '1945-07-26'),
    
    (330,  1, 1, '1945-03-13',  null),
    (330,  2, 1, '1945-03-13',  null),
    (330, 26, 1, '1945-03-13',  null),
    
    (331,  1, 1, '1945-03-31', '1945-06-26'),
    (331,  2, 1, '1945-03-31', '1945-06-26'),
    (331, 26, 1, '1945-03-31', '1945-06-26'),
    
    (332,  1, 1, '1945-05-15',  null),
    (332,  2, 1, '1945-05-15',  null),
    (332, 26, 1, '1945-05-15',  null),
    
    (333,  1, 1, '1945-06-18',  null),
    (333,  2, 1, '1945-06-18',  null),
    (333, 26, 1, '1945-06-18',  null);
    
    
    
/* прожектора */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (317, 32, 1, '1945-03-05',  null),
    (318, 32, 1, '1945-05-29',  null),
    (322, 32, 1, '1945-01-20', '1945-07-14'),
    (323, 32, 1, '1945-02-08',  null),
    (324, 32, 1, '1945-03-01',  null),
    (325, 32, 1, '1945-03-26',  null),
    (326, 32, 1, '1945-04-28',  null),
    (327, 32, 1, '1945-05-18',  null),
    (328, 32, 1, '1945-01-31', '1945-06-22'),
    (329, 32, 1, '1945-03-15', '1945-07-26'),
    (330, 32, 1, '1945-03-13',  null),
    (331, 32, 1, '1945-03-31', '1945-06-26'),
    (332, 32, 1, '1945-05-15',  null),
    (333, 32, 1, '1945-06-18',  null);


    
/*
    сонар тип 3 мод 2
    гидрофон тип 4 мод 1
*/
        
        
        
/* бомбометы */
insert into ship_throwers
    (ship_id, throwers_id, amount, date_from, date_to)
    values
    (317, 0, 2, '1945-03-05',  null),
    (318, 0, 2, '1945-05-29',  null),
    (322, 0, 2, '1945-01-20', '1945-07-14'),
    (323, 0, 2, '1945-02-08', '1945-05-01'),
    (324, 0, 2, '1945-03-01', '1945-05-01'),
    (325, 0, 2, '1945-03-26',  null),
    (326, 0, 2, '1945-04-28',  null),
    (327, 0, 2, '1945-05-18',  null),
    (328, 0, 2, '1945-01-31', '1945-05-01'),
    (329, 0, 2, '1945-03-15', '1945-05-01'),
    (330, 0, 2, '1945-03-13', '1945-05-01'),
    (331, 0, 2, '1945-03-31', '1945-06-26'),
    (332, 0, 2, '1945-05-15',  null),
    (333, 0, 2, '1945-06-18',  null);
        
        
        
/* бомбоскаты */
insert into ship_throwers
    (ship_id, throwers_id, amount, date_from, date_to)
    values
    (317, 2, 2, '1945-03-05',  null),
    (318, 2, 2, '1945-05-29',  null),
    (322, 2, 2, '1945-01-20', '1945-07-14'),
    (323, 2, 2, '1945-02-08',  null),
    (324, 2, 2, '1945-03-01',  null),
    (325, 2, 2, '1945-03-26',  null),
    (326, 2, 2, '1945-04-28',  null),
    (327, 2, 2, '1945-05-18',  null),
    (328, 2, 2, '1945-01-31', '1945-06-22'),
    (329, 2, 2, '1945-03-15', '1945-07-26'),
    (330, 2, 2, '1945-03-13',  null),
    (331, 2, 2, '1945-03-31', '1945-06-26'),
    (332, 2, 2, '1945-05-15',  null),
    (333, 2, 2, '1945-06-18',  null);
    
    
