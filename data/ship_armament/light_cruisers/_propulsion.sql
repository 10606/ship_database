    
/* силовая установка */
insert into external_burn_list
    (id, mass, max_power, in_service)
    values
    ( 6, null, 110000,  null), /* Оедо */
    ( 7, null, 100000,  null), /* тип Агано */
    ( 8, null,  90000,  null), /* Кума, Тама, Китаками, Кисо
                                  Нагара, Исудзу, Натори, Юра, Абукума, 
                                  Сендай, Нака */
    ( 9, null,  90000,  null), /* Кину, Дзинцу */
    (10, null,  90000,  null), /* Оои */
    (11, null,  51000,  null), /* тип Тенрю */
    (12, null,  61336,  null), /* Юбари */
    (13, null,   4000,  null); /* тип Катори */
    
insert into external_burn_boiling
    (object_id, item_id, count)
    values
    ( 6,  8,  6), /* Оедо */
    ( 7,  9,  6), /* тип Агано */
    ( 8, 10, 12), /* Кума, Тама, Китаками, Кисо
                     Нагара, Исудзу, Натори, Юра, Абукума, 
                     Сендай, Нака */
    ( 9, 11, 12), /* Кину, Дзинцу */
    (10, 10, 12), /* Оои */
    
    /* тип Тенрю */
    (11, 12,  2),
    (11, 13,  6),
    (11, 14,  2),
    
    /* Юбари */
    (12, 15,  2),
    (12, 16,  6),
    
    (13, 17,  2); /* тип Катори */

insert into external_burn_machines
    (object_id, item_id, count)
    values
    /* Оедо */
    ( 6, 17, 4),
    ( 6, 18, 4),
    ( 6, 19, 4),
    ( 6, 20, 4),
    ( 6, 21, 4),
    
    /* тип Агано */
    ( 7, 22, 4),
    ( 7, 23, 4),
    ( 7, 24, 4),
    ( 7, 25, 2),
    ( 7, 26, 4),
    
    /* Кума, Тама, Китаками, Кисо 
       Нагара, Исудзу, Натори, Юра, Абукума,
       Сендай, Нака */
    ( 8, 27, 4),
    ( 8, 28, 4),
    ( 8, 31, 2),
    ( 8, 33, 4),
    
    /* Кину, Дзинцу */
    ( 9, 29, 4),
    ( 9, 30, 4),
    ( 9, 32, 4),
    ( 9, 34, 4),
    
    /* Оои */
    (10, 29, 4),
    (10, 30, 4),
    (10, 32, 4),
    (10, 34, 4),
    
    /* тип Тенрю */
    (11, 35, 3),
    (11, 36, 3),
    (11, 37, 3),
    (11, 38, 3),
    
    /* Юбари */
    (12, 39, 3),
    (12, 40, 3),
    (12, 41, 3),
    (12, 42, 3),
    
    /* тип Катори */
    (13, 43, 2),
    (13, 44, 2),
    (13, 45, 2);
  
    
    
insert into ship_propulsion
    (ship_id, propulsion_id, amount, date_from, date_to)
    values
    /* Оедо */
    (33,  6, 1,  '1943-02-28', '1945-07-28'),

    /* тип Агано */
    (28,  7, 1, '1942-10-31', '1944-02-16'),
    (29,  7, 1, '1943-06-30', '1944-10-26'),
    (30,  7, 1, '1943-12-29', '1945-04-07'),
    (31,  7, 1, '1944-04-09',  null       ),
    
    /* тип Сендай */
    (25,  8, 1, '1924-04-29', '1943-11-02'),
    (26,  9, 1, '1925-07-31', '1943-07-13'),
    (27,  8, 1, '1925-11-30', '1944-02-18'),
    
    /* тип Нагара */
    (19,  8, 1, '1922-04-21', '1944-08-07'),
    (20,  8, 1, '1923-08-15', '1945-04-07'),
    (21,  8, 1, '1922-09-15', '1944-08-19'),
    (22,  8, 1, '1923-03-20', '1942-10-25'),
    (23,  8, 1, '1925-05-26', '1944-10-26'),
    (24,  9, 1, '1922-11-10', '1944-10-26'),
    
    /* тип Кума */
    (14,  8, 1, '1920-08-31', '1944-03-10'),
    (15,  8, 1, '1921-01-29', '1944-10-25'),
    (16,  8, 1, '1921-04-15',  null       ),
    (17, 10, 1, '1921-10-03', '1944-07-19'),
    (18,  8, 1, '1921-05-04', '1944-11-13'),

    /* тип Тенрю */
    (12, 11, 1, '1919-11-20', '1942-12-18'),
    (13, 11, 1, '1919-05-31', '1944-03-13'),

    /* Юбари */
    (32, 12, 1, '1923-07-31', '1944-04-28'),
    
    /* тип Катори */
    (35, 13, 1, '1940-04-20', '1944-02-17'),
    (35, 14, 2, '1940-04-20', '1944-02-17'),
    (36, 13, 1, '1940-05-31',  null       ),
    (36, 14, 2, '1940-05-31',  null       ),
    (37, 13, 1, '1941-07-15', '1945-01-12'),
    (37, 14, 2, '1941-07-15', '1945-01-12');
    

