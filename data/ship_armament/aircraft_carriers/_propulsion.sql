
/* турбины */
insert into steam_turbine
    (id, name_ru, name_en, in_service, rpm, power, stages)
    values
    (46, 'Гидзицу-Хонбу высокого давления',             'Gijitsu-Honbu high pressure',          null,   null,   null, null), /* 8* Акаги до 1938 */
    (47, 'Гидзицу-Хонбу среднего давления',             'Gijitsu-Honbu intermediate pressure',  null,   null,   null, null), /* 4* Акаги до 1938 */
    (48, 'Гидзицу-Хонбу низкого давления',              'Gijitsu-Honbu low pressure',           null,   null,   null, null), /* 8* Акаги до 1938 */
    
    (49, 'Кампон высокого давления',                    'Kampon high pressure',                 null,   null,   null, null), /* 8* Акаги после 1938 */
    (50, 'Кампон среднего давления',                    'Kampon intermediate pressure',         null,   null,   null, null), /* 4* Акаги после 1938 */
    (51, 'Кампон низкого давления',                     'Kampon low pressure',                  null,   null,   null, null), /* 4* Акаги после 1938 */
    
    (52, 'Браун-Кертис высокого давления',              'Brown-Curtis high pressure',           null,   null,   null, null), /* 4* Кага до 1934 */
    (53, 'Браун-Кертис среднего давления',              'Brown-Curtis intermediate pressure',   null,   null,   null, null), /* 4* Кага до 1934 */
    (54, 'Браун-Кертис низкого давления',               'Brown-Curtis low pressure',            null,   null,   null, null), /* 8* Кага до 1934 */
    
    (55, 'Кампон высокого давления',                    'Kampon high pressure',                 null,   null,   null, null), /* 8* Кага после 1936 */
    (56, 'Кампон среднего давления',                    'Kampon intermediate pressure',         null,   null,   null, null), /* 4* Кага после 1936 */
    (57, 'Кампон низкого давления',                     'Kampon low pressure',                  null,   null,   null, null), /* 4* Кага после 1936 */
    
    (58, 'Кампон высокого давления',                    'Kampon high pressure',                 null,   null,   null, null), /* 4* тип Секаку, 4* Тайхо */
    (59, 'Кампон среднего давления',                    'Kampon intermediate pressure',         null,   null,   null, null), /* 4* тип Секаку, 4* Тайхо */
    (60, 'Кампон низкого давления',                     'Kampon low pressure',                  null,   null,   null, null), /* 8* тип Секаку, 8* Тайхо */

    (62, 'Кампон высокого давления',                    'Kampon high pressure',                 null,   null,   null, null), /* 2* тип Дзуйхо, 2* Рюхо, 2* тип Кагеро (кроме Амацукадзе), 2* тип Югумо */
    (63, 'Кампон среднего давления',                    'Kampon intermediate pressure',         null,   null,   null, null), /* 2* тип Дзуйхо, 2* Рюхо, 2* тип Кагеро (кроме Амацукадзе), 2* тип Югумо */
    (64, 'Кампон низкого давления',                     'Kampon low pressure',                  null,   null,   null, null), /* 2* тип Дзуйхо, 2* Рюхо, 2* тип Кагеро (кроме Амацукадзе), 2* тип Югумо */
    
    (66, 'Кампон высокого давления',                    'Kampon high pressure',                 null,   null,   null, null), /* 4* Унрю, 4* Амаги */
    (67, 'Кампон среднего давления',                    'Kampon intermediate pressure',         null,   null,   null, null), /* 4* Унрю, 4* Амаги */
    (68, 'Кампон низкого давления',                     'Kampon low pressure',                  null,   null,   null, null), /* 4* Унрю, 4* Амаги */
    
    (71, 'Кампон высокого давления',                    'Kampon high pressure',                 null,   null,   null, null), /* 2* тип Кагеро, 2* тип Югумо, 4* Кацураги, 2* Кайе */
    (72, 'Кампон среднего давления',                    'Kampon intermediate pressure',         null,   null,   null, null), /* 2* тип Кагеро, 2* тип Югумо, 4* Кацураги, 2* Кайе */
    (73, 'Кампон низкого давления',                     'Kampon low pressure',                  null,   null,   null, null); /* 2* тип Кагеро, 2* тип Югумо, 4* Кацураги, 2* Кайе */
    
    
/* турбины крейсерского хода */
insert into steam_turbine_cruise
    (id, name_ru, name_en, in_service, rpm, power, stages)
    values
    (61, 'Кампон',                      'Kampon',                   null,   null,   null,   null), /* 4* тип Секаку, 4* Тайхо */
    (65, 'Кампон',                      'Kampon',                   null,   null,   null,   null), /* 2* тип Дзуйхо, 2* Рюхо, тип Кагеро (кроме Амацукадзе), тип Югумо */
    (69, 'Кампон',                      'Kampon',                   null,   null,   null,   null), /* 2* Унрю, 2* Амаги */
    (74, 'Кампон высокого давления',    'Kampon high pressure',     null,   null,   null,   null), /* 2* тип Кагеро, 2* тип Югумо, 2* тип Акидзуки, 2* Кацураги, 2* Кайе */
    (75, 'Кампон низкого давления',     'Kampon low pressure',      null,   null,   null,   null); /* 2* тип Кагеро, 2* тип Югумо, 2* тип Акидзуки, 2* Кацураги, 2* Кайе */
    
    
/* турбины заднего хода */
insert into steam_turbine_reverse
    (id, name_ru, name_en, in_service, rpm, power, stages)
    values
    (70, 'Кампон',  'Kampon',   null,   null,   10000,   null), /* 4* Унрю, 4* Амаги */
    (76, 'Кампон',  'Kampon',   null,   null,   10000,   null); /* 2* тип Кагеро, 2* тип Югумо, 2* тип Акидзуки, 4* Кацураги, 2* Кайе */
    
    
/* котлы */
insert into boiling_types
    (id, name_ru, name_en, value, temperature, pressure, heating_surface)
    values
    (18, 'Кампон Ро Го',                'Kampon Ro Go large',           2,  270,    19.5,   null), /* 11* Акаги до 1938 */
    (19, 'Кампон Ро Го малый',          'Kampon Ro Go small',           1,  270,    19.5,   null), /*  8* Акаги до 1938 */
    
    (20, 'Кампон Ро Го',                'Kampon Ro Go large',           2,  310,    23,     null), /* 11* Акаги после 1938 */
    (21, 'Кампон Ро Го малый',          'Kampon Ro Go small',           2,  310,    23,     null), /*  8* Акаги после 1938 */
    
    (22, 'Кампон Ро Го',                'Kampon Ro Go large',           2,  270,    19.5,   null), /*  8* Кага до 1934 */
    (23, 'Кампон Ро Го малый',          'Kampon Ro Go small',           1,  270,    19.5,   null), /*  4* Кага до 1934 */

    (24, 'Кампон Ро Го',                'Kampon Ro Go large',           2,  310,    23,     null), /*  8* Кага после 1936 */
    
    (25, 'Кампон Ро Го',                'Kampon Ro Go large',           2,  270,    19.4,   null), /*  4* Рюдзе, тип Фубуки */
    (26, 'Кампон Ро Го малый',          'Kampon Ro Go small',           2,  270,    19.4,   null), /*  2* Рюдзе, тип Фубуки */
    
    (27, 'Кампон Ро Го',                'Kampon Ro Go large',           2,  352,    30,     null), /*  8* тип Секаку, 8* Тайхо */
    
    (28, 'Кампон Ро Го',                'Kampon Ro Go large',           2,  350,    30,     null), /*  4* тип Дзуйхо, 4* Рюхо, 4* тип Кагеро (кроме Амацукадзе), 4* тип Югумо */

    (29, 'Кампон Ро Го',                'Kampon Ro Go large',           2,  300,    22,     null), /*  4* Кайе, 8* Унрю, 8* Амаги */
    (30, 'Кампон Ро Го',                'Kampon Ro Go large',           2,  350,    30,     null), /*  3* тип Кагеро, 3* тип Югумо, 8* Кацураги */
    (32, 'Кампон Ро Го No 38 мод 17',   'Kampon Ro Go No 38 mod 17',    2,  350,    30,     null); /*  3* тип Акидзуки */
    
    
    
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
    (21,  null,  52000,  null), /* тип Дзуйхо, Рюхо, тип Кагеро (кроме Амацукадзе), тип Югумо */
    (22,  null, 152000,  null), /* Унрю, Амаги */
    (23,  null, 104000,  null), /* Кацураги */
    (30,  null,  52000,  null); /* Кайе */
    
insert into external_burn_boiling
    (object_id, item_id, count)
    values
    /* Акаги */
    (15, 18, 11),
    (15, 19,  8),
    
    (16, 20, 11),
    (16, 21,  8),
    
    /* Кага */
    (17, 22,  8),
    (17, 23,  4),
    
    (18, 24,  8),
    
    /* Рюдзе */
    (19, 25,  4),
    (19, 26,  2),
    
    /* тип Секаку, Тайхо */
    (20, 27,  8),
    
    /* тип Дзуйхо, Рюхо, тип Кагеро (кроме Амацукадзе), тип Югумо */
    (21, 28,  4),
    
    /* Унрю, Амаги */
    (22, 29,  8),
    
    /* Кацураги */
    (23, 30,  8),
    
    /* Кайе */
    (30, 29,  4);

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

    /* тип Дзуйхо, Рюхо, тип Кагеро (кроме Амацукадзе), тип Югумо */
    (21, 62, 2),
    (21, 63, 2),
    (21, 64, 2),
    (21, 65, 2),
    
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
    (30, 76, 2);
  
    
    
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
    (77, 30, 1, '1943-11-23', '1945-07-28');

