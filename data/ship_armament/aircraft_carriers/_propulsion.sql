    
/* силовая установка */
insert into external_burn_list
    (id, mass, max_power, in_service)
    values
    (15,  null, 131000,  null), /* Акаги до 1938 */
    (16,  null, 133000,  null), /* Акаги после 1938 */
    (17,  null,  91000,  null), /* Кага до 1934 */
    (18,  null, 127400,  null), /* Кага после 1936 */
    (19,  null,  66289,  null), /* Рюдзе */
    (20,  null, 165000,  null), /* тип Секаку, Тайхо */
    (21,  null,  52000,  null), /* тип Дзуйхо, Рюхо */
    (22,  null, 152000,  null), /* Унрю, Амаги */
    (23,  null, 104000,  null), /* Кацураги */
    (30,  null,  52000,  null), /* Кайе */
    (31,  null,  26000,  null), /* Синье */
    (32,  null,  52000,  null); /* тип Тайе */ /* по другим данным 25200л.с. */
    
insert into external_burn_boiling
    (object_id, item_id, count)
    values
    /* Акаги */
    (15, 18, 11),
    (15, 19,  8),
    
    (16, 20, 11),
    (16, 21,  8),
    
    /* Кага */
    (17, 18,  8),
    (17, 19,  4),
    
    (18, 20,  8),
    
    /* Рюдзе */
    (19, 25,  4),
    (19, 26,  2),
    
    /* тип Секаку, Тайхо */
    (20, 27,  8),
    
    /* тип Дзуйхо, Рюхо */
    (21, 30,  4),
    
    /* Унрю, Амаги */
    (22, 29,  8),
    
    /* Кацураги */
    (23, 30,  8),
    
    /* Кайе */
    (30, 29,  4),
    
    /* Синье */
    (31, 33,  2),
    
    /* тип Тайе */
    (32, 34,  4);

insert into external_burn_machines
    (object_id, item_id, count)
    values
    /* Акаги */
    (15, 46, 8),
    (15, 47, 4),
    (15, 48, 8),

    (16, 49, 8),
    (16, 50, 4),
    (16, 51, 4),
    
    /* Кага */
    (17, 52, 4),
    (17, 53, 4),
    (17, 54, 8),
    
    (18, 55, 8),
    (18, 56, 4),
    (18, 57, 4),
    
    /* Рюдзе */
    (19,  5, 2),
    (19,  6, 2),
    (19,  8, 2),
    (19,  9, 2),
    (19, 10, 2),
    (19, 11, 4),
    
    /* тип Секаку, Тайхо */
    (20, 58, 4),
    (20, 59, 4),
    (20, 60, 8),
    (20, 61, 4),

    /* тип Дзуйхо, Рюхо */
    (21, 71, 2),
    (21, 72, 2),
    (21, 73, 2),
    (21, 74, 2),
    (21, 75, 2),
    
    /* Унрю, Амаги */
    (22, 66, 4),
    (22, 67, 4),
    (22, 68, 4),
    (22, 69, 2),
    (22, 70, 4),
    
    /* Кацураги */
    (23, 71, 4),
    (23, 72, 4),
    (23, 73, 4),
    (23, 74, 2),
    (23, 75, 2),
    (23, 76, 4),
    
    /* Кайе */
    (30, 71, 2),
    (30, 72, 2),
    (30, 73, 2),
    (30, 74, 2),
    (30, 75, 2),
    (30, 76, 2),
    
    /* Синье */
    (31, 80, 2),
  
    /* тип Тайе */ /* неточные данные */
    (32, 71, 2),
    (32, 72, 2),
    (32, 73, 2),
    (32, 74, 2),
    (32, 75, 2),
    (32, 76, 2);
    
    
    
insert into ship_propulsion
    (ship_id, propulsion_id, amount, date_from, date_to)
    values
    /* Акаги */
    (57, 15, 1,  '1927-03-27', '1935-10-24'),
    (57, 16, 1,  '1938-08-31', '1942-06-05'),
    
    /* Кага */
    (58, 17, 1,  '1928-03-31', '1934-06-25'),
    (58, 18, 1,  '1936-06-10', '1942-06-04'),
    
    /* Рюдзе */
    (59, 19, 1,  '1933-05-09', '1942-08-24'),
    
    /* тип Сорю */
    (60,  1, 1,  '1937-12-29', '1942-06-04'),
    (61,  1, 1,  '1939-07-05', '1942-06-05'),
    
    /* тип Секаку */
    (63, 20, 1,  '1941-08-08', '1944-06-19'),
    (64, 20, 1,  '1941-09-25', '1944-10-25'),
    
    /* тип Дзуйхо */
    (65, 21, 1,  '1940-12-27', '1944-10-25'),
    (66, 21, 1,  '1941-11-30', '1942-05-07'),
    
    /* Рюхо */
    (62, 21, 1,  '1942-11-30',  null),
    
    /* Тайхо */
    (69, 20, 1,  '1944-03-07', '1944-06-19'),

    /* тип Унрю */
    (71, 22, 1, '1944-08-06', '1944-12-19'),
    (72, 22, 1, '1944-08-10', '1945-07-28'),
    (73, 23, 1, '1944-10-15',  null),
    
    /* Кайе */
    (77, 30, 1, '1943-11-23', '1945-07-28'),

    /* Синье */
    (78, 31, 1, '1943-11-15', '1944-11-17'),

    /* тип Тайе */
    (74, 32, 1, '1942-08-31', '1944-08-18'),
    (75, 32, 1, '1942-05-16', '1944-09-16'),
    (76, 32, 1, '1942-11-25', '1943-12-04');

