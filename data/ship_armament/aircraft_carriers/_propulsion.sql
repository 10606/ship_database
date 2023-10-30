
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
    (57, 'Кампон низкого давления',                     'Kampon low pressure',                  null,   null,   null, null); /* 4* Кага после 1936 */
    
    
    
/* котлы */
insert into boiling_types
    (id, name_ru, name_en, value, temperature, pressure, heating_surface)
    values
    (18, 'Кампон Ро Го',            'Kampon Ro Go large',   2,  270,    19.5,   null), /* 11* Акаги до 1938 */
    (19, 'Кампон Ро Го малый',      'Kampon Ro Go small',   1,  270,    19.5,   null), /*  8* Акаги до 1938 */
    
    (20, 'Кампон Ро Го',            'Kampon Ro Go large',   2,  310,    23,     null), /* 11* Акаги после 1938 */
    (21, 'Кампон Ро Го малый',      'Kampon Ro Go small',   2,  310,    23,     null), /*  8* Акаги после 1938 */
    
    (22, 'Кампон Ро Го',            'Kampon Ro Go large',   2,  270,    19.5,   null), /*  8* Кага до 1934 */
    (23, 'Кампон Ро Го малый',      'Kampon Ro Go small',   1,  270,    19.5,   null), /*  4* Кага до 1934 */

    (24, 'Кампон Ро Го',            'Kampon Ro Go large',   2,  310,    23,     null), /*  8* Кага после 1936 */
    
    (25, 'Кампон Ро Го',            'Kampon Ro Go large',   2,  270,    19.4,   null), /*  4* Рюдзе, тип Фубуки */
    (26, 'Кампон Ро Го малый',      'Kampon Ro Go small',   2,  270,    19.4,   null); /*  2* Рюдзе, тип Фубуки */
    
    
    
/* силовая установка */
insert into external_burn_list
    (id, mass, max_power, in_service)
    values
    (15,  null, 131000,  null), /* Акаги до 1938 */
    (16,  null, 133000,  null), /* Акаги после 1938 */
    (17,  null,  91000,  null), /* Кага до 1934 */
    (18,  null, 127400,  null), /* Кага после 1936 */
    (19,  null,  66289,  null); /* Рюдзе */
    
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
    (19, 26,  2);

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
    (19, 11, 4);
  
    
    
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
    (61,  1, 1,  '1939-07-05', '1942-06-05');

